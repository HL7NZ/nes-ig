#!/bin/bash
set -x #echo off


# get the version from the pom
 vline=$(grep 'fhir-common.version.*fhir-common.version' pom.xml | grep -v '!' )
 #trim prefix
 common_version=${vline:23:200}
 #trim trailign chars
 common_version=${common_version%%</fhir-common.version>}
 echo "fhir-common.version = $common_version"
 
cp "./fhir_packages/hip-fhir-common-$common_version/openapi/HipFhirCommonOpenApi.yaml" ./openapi/HipFhirNesOpenApi.yaml

#add the MWS paths to the common openapi spec
newpath=$(< ./openapi/HipFhirNesPaths.yaml)  yq -i '.paths=env(newpath) ' openapi/HipFhirNesOpenApi.yaml 
newversion=$(yq '.version' ./sushi-config.yaml)   yq -i '.info.version=env(newversion) ' openapi/HipFhirNesOpenApi.yaml 

yq -i 'del(.paths[][].x-amazon-apigateway-integration)' openapi/HipFhirNesOpenApi.yaml
yq -i '.info.title="HIP NES FHIR"'  openapi/HipFhirNesOpenApi.yaml
yq -i '.info.description="Te Whatu Ora Enrolment and Entitlement FHIR services"'  openapi/HipFhirNesOpenApi.yaml

zip -u ./input/extra/HipFhirNesOpenApi.zip ./openapi/HipFhirNesOpenApi.yaml 

