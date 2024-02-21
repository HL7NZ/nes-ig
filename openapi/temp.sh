 # get the version from the pom
 vline=$(grep 'fhir-common.version.*fhir-common.version' pom.xml | grep -v '!' )
 #trim prefix
 version=${vline:23:100}
 #trim trailign chars
 version=${version:0:23}
 echo "fhir-common.version = $vewrsion"