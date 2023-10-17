

addPackage() {
echo " adding package named $1 version $2 from source $3 using url $4"
ls  $3

sudo mkdir -p ~/.fhir/packages/$1#$2
sudo mkdir -p ~/.fhir/packages/$1#current

tar zxvf  $3 -C  ~/.fhir/packages/$1#$2
#publisher seems to need the current version as well
tar zxvf  $3 -C  ~/.fhir/packages/$1#current
##fix the package url:
jq --arg url $4 '.url |= $url' ~/.fhir/packages/$1#$2/package/package.json > temp2.json
mv temp2.json  ~/.fhir/packages/$1#$2/package/package.json
cat ~/.fhir/packages/hl7.org.nz.fhir.ig.hip-core#$common_version/package/package.json
}

#!/bin/bash
set -x #echo on
# this script is intended to be run from code build, it should build the IG using the Hl7 IG Publisher

rm ./output/full-ig.zip
echo cleaning up temp directory ...
rm -r  ./temp

echo getting nzbase dependencies...
nzbase_name="fhir.org.nz.ig.base"
nzbase_url=$(yq '.dependencies."fhir.org.nz.ig.base".uri' ./sushi-config.yaml)
nzbase_version=$(yq '.dependencies."fhir.org.nz.ig.base".version' ./sushi-config.yaml)
nzbase_source="./fhir_packages/nzbase-conformance-module-$nzbase_version/package.tgz"
addPackage "$nzbase_name" "$nzbase_version" "$nzbase_source" "$nzbase_url"


#cp hl7 packages into user's .fhir cache 
aws s3 cp s3://nz-govt-moh-hip-build/codebuild-common/fhir/hl7.fhir.r4.core#4.0.1/package.zip ./hl7-package.zip
sudo mkdir -p ~/.fhir/packages/hl7.fhir.r4.core#4.0.1
unzip  ./hl7-package.zip -d ~/.fhir/packages/hl7.fhir.r4.core#4.0.1/ >/dev/null 2>&1

#cp hl7-uv packages into user's .fhir cache 
aws s3 cp s3://nz-govt-moh-hip-build/codebuild-common/fhir/hl7.fhir.uv.tools#current/package.zip ./hl7-uv-package.zip
sudo mkdir -p ~/.fhir/packages/fhir/hl7.fhir.uv.tools#current
unzip  ./hl7-uv-package.zip -d ~/.fhir/packages/fhir/hl7.fhir.uv.tools#current/ >/dev/null 2>&1


echo getting common dependencies...
pwd
ls -l ./fhir_packages/

common_name="hl7.org.nz.fhir.ig.hip-core"
common_version=$(yq '.dependencies."hl7.org.nz.fhir.ig.hip-core".version' ./sushi-config.yaml)
# this will pickup snapshots as well
comdir=$(ls -d ./fhir_packages/hip-fhir-common* | grep $common_version)
common_source="$comdir/package/package.tgz"
common_url=$(yq '.dependencies."hl7.org.nz.fhir.ig.hip-core".uri' ./sushi-config.yaml)
addPackage "$common_name" "$common_version" "$common_source" "$common_url" 

echo getting NHI dependencies...
nhi_package_name="hl7.org.nz.fhir.ig.nhi"
nhi_version=$(yq '.dependencies."hl7.org.nz.fhir.ig.nhi".version' ./sushi-config.yaml)
nhi_source=./fhir_packages/hip-nhi-conformance-module-$nhi_version/output/package.tgz
nhi_url=$(yq '.dependencies."hl7.org.nz.fhir.ig.nhi".uri' ./sushi-config.yaml)
addPackage "$nhi_package_name" "$nhi_version" "$nhi_source" "$nhi_url"


echo getting HPI dependencies...
hpi_package_name="hl7.org.nz.fhir.ig.hpi"
hpi_url=$(yq '.dependencies."hl7.org.nz.fhir.ig.hpi".uri' ./sushi-config.yaml)
hpi_version=$(yq '.dependencies."hl7.org.nz.fhir.ig.hpi".version' ./sushi-config.yaml)
hpi_source=./fhir_packages/hip-hpi-conformance-module-$hpi_version/output/package.tgz
hpi_url=$(yq '.dependencies."hl7.org.nz.fhir.ig.hpi".uri' ./sushi-config.yaml)
addPackage "$hpi_package_name" "$hpi_version" "$hpi_source" "$hpi_url"

pwd
ls ~/.fhir/packages/hl7.org.nz.fhir.ig.hip-core#dev

GIT_COMMIT_ID=$(git rev-parse HEAD)
echo adding source info to index.md
sed -i "s/_BRANCH_/$BRANCH/g"  ./input/pagecontent/index.md
sed -i "s/_GIT_COMMIT_ID_/$GIT_COMMIT_ID/g"  ./input/pagecontent/index.md

echo running sushi ...
sushi -o .

echo running local scripts
sudo chmod +x ./localscripts/makeTerminologySummary.js
./localscripts/makeTerminologySummary.js

echo "Making API summary"
sudo chmod +x ./localscripts/makeCapabilityStatement.js
./localscripts/makeCapabilityStatement.js nes
./localscripts/makeProfilesAndExtensions.js
pwd

cp ./template/* $HOME/.fhir/packages/fhir.base.template#current/package/content

ls -l ~/.fhir/packages
echo running ig publisher
java -jar ~/publisher.jar -ig . -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -no-sushi

#sudo chmod +x ./fhirValidate.sh
#./fhirValidate.sh
