
getPomProperty() {
 
 #echo "getting value of $1 from pom"
 line=$(grep $1.*$1 pom.xml  | grep -v '!' | tr -d '\t ')

 plength=${#1}
 offset=2
 plength=$(($plength+$offset))
 sline=${line:plength:200}
 #trim trailing chars
 property=${sline%%</$1>}
 #echo "property $1 = $property"
 echo $property
 }


#!/bin/bash
set -x #echo off
 
# constants
IG_FILENAME=HipFhirNesOpenApi.yaml
PATHS_FILENAME=HipFhirNesPaths.yaml

common_version=$(getPomProperty "fhir-common.version")
ig_version=$(getPomProperty "revision")
echo "!!!!!!!!!!!!! ig_version = $ig_version"
 
cp "./fhir_packages/hip-fhir-common-$common_version/openapi/HipFhirCommonOpenApi.yaml" ./openapi/$IG_FILENAME

#add the MWS paths to the common openapi spec
newpath=$(< ./openapi/$PATHS_FILENAME)  yq -i '.paths=env(newpath) ' openapi/$IG_FILENAME 
newversion=$(yq '.version' ./sushi-config.yaml)   yq -i '.info.version=env(newversion) ' openapi/$IG_FILENAME

yq -i 'del(.paths[][].x-amazon-apigateway-integration)' openapi/HipFhirNesOpenApi.yaml
yq -i '.info.title="HIP NES FHIR"'  openapi/HipFhirNesOpenApi.yaml
yq -i '.info.description="Te Whatu Ora Enrolment and Entitlement FHIR services"'  openapi/$IG_FILENAME
version=$ig_version  yq -i '.info.version = env(version)'  openapi/$IG_FILENAME
zip -u ./input/extra/HipFhirNesOpenApi.zip ./openapi/$IG_FILENAME

