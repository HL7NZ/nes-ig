#!/bin/bash
set -x #echo on
# this script is intended to be run from code build, it should build the IG using the Hl7 IG Publisher

rm ./output/full-ig.zip
echo cleaning up temp directory ...
rm -r  ./temp

echo getting nzbase dependencies...
nzbase_url=$(yq '.dependencies."fhir.org.nz.ig.base".uri' ./sushi-config.yaml)
nzbase_version=$(yq '.dependencies."fhir.org.nz.ig.base".version' ./sushi-config.yaml)

echo nzbase url =$nzbase_url
echo nzbase version =$nzbase_version

#cp nzbase into user's .fhir cache 
sudo mkdir temp
cd temp
wget -e use_proxy=yes -e https_proxy=WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128  $nzbase_url"package.tgz"
tar zxvf package.tgz
##fix the package url:
jq --arg url $nzbase_url '.url |= $url' ./package/package.json > temp.json
mv temp.json ./package/package.json 

##cp nz packages  into user's .fhir cache 
sudo mkdir -p  ~/.fhir/packages/fhir.org.nz.ig.base#$nzbase_version/package
sudo  cp -r ./package ~/.fhir/packages/fhir.org.nz.ig.base#$nzbase_version
cd ..

#cp hl7 packages into user's .fhir cache 
aws s3 cp s3://nz-govt-moh-hip-build/codebuild-common/fhir/hl7.fhir.r4.core#4.0.1/package.zip ./hl7-package.zip
sudo mkdir ~/.fhir/packages/hl7.fhir.r4.core#4.0.1
unzip  ./hl7-package.zip -d ~/.fhir/packages/hl7.fhir.r4.core#4.0.1/ >/dev/null 2>&1

#cp hl7-uv packages into user's .fhir cache 
aws s3 cp s3://nz-govt-moh-hip-build/codebuild-common/fhir/hl7.fhir.uv.tools#current/package.zip ./hl7-uv-package.zip
sudo mkdir ~/.fhir/packages/fhir/hl7.fhir.uv.tools#current
unzip  ./hl7-uv-package.zip -d ~/.fhir/packages/fhir/hl7.fhir.uv.tools#current/ >/dev/null 2>&1


echo getting common dependencies...
common_url=$(yq '.dependencies."hl7.org.nz.fhir.ig.hip-core".uri' ./sushi-config.yaml)
common_version=$(yq '.dependencies."hl7.org.nz.fhir.ig.hip-core".version' ./sushi-config.yaml)

sudo mkdir ~/.fhir/packages/hl7.org.nz.fhir.ig.hip-core#$common_version
ls -l ./hfc_package/hip-fhir-common*/package/package.tgz
tar zxvf  ./hfc_package/hip-fhir-common-1.2.0/package/package.tgz -C  ~/.fhir/packages/hl7.org.nz.fhir.ig.hip-core#$common_version
##fix the package url:
jq --arg url $common_url '.url |= $url' ~/.fhir/packages/hl7.org.nz.fhir.ig.hip-core#$common_version/package/package.json > temp2.json
mv temp2.json  ~/.fhir/packages/hl7.org.nz.fhir.ig.hip-core#$common_version/package/package.json

cat ~/.fhir/packages/hl7.org.nz.fhir.ig.hip-core#$common_version/package/package.json


echo getting NHI dependencies...
nhi_url=$(yq '.dependencies."hl7.org.nz.fhir.ig.nhi".uri' ./sushi-config.yaml)
nhi_version=$(yq '.dependencies."hl7.org.nz.fhir.ig.nhi".version' ./sushi-config.yaml)

sudo mkdir ~/.fhir/packages/hl7.org.nz.fhir.ig.nhi#$nhi_version
ls -l ./hfc_package/nhi-patient*/package/package.tgz
tar zxvf  ./hfc_package/nhi-patient*/package/package.tgz -C  ~/.fhir/packages/hl7.org.nz.fhir.ig.nhi#$nhi_version
##fix the package url:
jq --arg url $nhi_url '.url |= $url' ~/.fhir/packages/hl7.org.nz.fhir.ig.nhi#$nhi_version/package/package.json > temp2.json
mv temp2.json  ~/.fhir/packages/hl7.org.nz.fhir.ig.nhi#$nhi_version/package/package.json

cat ~/.fhir/packages/hl7.org.nz.fhir.ig.nhi#$nhi_version/package/package.json

echo getting HPI dependencies...
hpi_url=$(yq '.dependencies."hl7.org.nz.fhir.ig.hpi".uri' ./sushi-config.yaml)
hpi_version=$(yq '.dependencies."hl7.org.nz.fhir.ig.hpi".version' ./sushi-config.yaml)

sudo mkdir ~/.fhir/packages/hl7.org.nz.fhir.ig.hpi#$hpi_version
ls -l ./hfc_package/hpi-*/package/package.tgz
tar zxvf  ./hfc_package/hpi-*/package/package.tgz -C  ~/.fhir/packages/hl7.org.nz.fhir.ig.hpi#$hpi_version
##fix the package url:
jq --arg url $hpi_url '.url |= $url' ~/.fhir/packages/hl7.org.nz.fhir.ig.hpi#$hpi_version/package/package.json > temp2.json
mv temp2.json  ~/.fhir/packages/hl7.org.nz.fhir.ig.hpi#$hpi_version/package/package.json

cat ~/.fhir/packages/hl7.org.nz.fhir.ig.hpi#$hpi_version/package/package.json

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
pwd

cp ./template/* $HOME/.fhir/packages/fhir.base.template#current/package/content
echo running ig publisher
java -jar ~/publisher.jar -ig . -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -no-sushi

sudo chmod +x ./fhirValidate.sh
./fhirValidate.sh
