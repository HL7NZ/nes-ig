#!/bin/bash   
#run from project root
set -x #echo on

#create a bundle for the results
cd ./output
rm -r ./temp
mkdir ./temp

unzip ./full-ig.zip site/package.tgz

echo validating Enrolment examples
cp ../fsh-generated/resources/EpisodeOfCare*.json ./temp
java -jar ~/validator_cli.jar ./temp  -ig ./site/package.tgz -profile http://hl7.org.nz/fhir/StructureDefinition/NesEnrolment -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation_NesEnrolment.html

echo validating Entitlement examples
cp ../fsh-generated/resources/Coverage*.json ./temp
java -jar ~/validator_cli.jar ./temp  -ig ./site/package.tgz -profile http://hl7.org.nz/fhir/StructureDefinition/NesEntitlement -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation_NesEntitlement.html



#rm ./*temp/*.json

