
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
 
 common_version=$(getPomProperty "fhir-common.version")
 ig_version=$(getPomProperty "revision")
 echo "!!!!!!!!!!!!! ig_version = $ig_version"
 
cp "./fhir_packages/hip-fhir-common-$common_version/openapi/HipFhirCommonOpenApi.yaml" ./openapi/HipFhirNesOpenApi.yaml

#add the MWS paths to the common openapi spec
newpath=$(< ./openapi/HipFhirNesPaths.yaml)  yq -i '.paths=env(newpath) ' openapi/HipFhirNesOpenApi.yaml 
newversion=$(yq '.version' ./sushi-config.yaml)   yq -i '.info.version=env(newversion) ' openapi/HipFhirNesOpenApi.yaml 

yq -i 'del(.paths[][].x-amazon-apigateway-integration)' openapi/HipFhirNesOpenApi.yaml
yq -i '.info.title="HIP NES FHIR"'  openapi/HipFhirNesOpenApi.yaml
yq -i '.info.description="Te Whatu Ora Enrolment and Entitlement FHIR services"'  openapi/HipFhirNesOpenApi.yaml
version=$ig_version  yq -i '.info.version = env(version)'  openapi/HipFhirNesOpenApi.yaml
zip -u ./input/extra/HipFhirNesOpenApi.zip ./openapi/HipFhirNesOpenApi.yaml 

