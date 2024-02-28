
#run from the openapi directory


#!/bin/bash
#OpenApi validation
for FILE in  ../fsh-generated/resources/EpisodeOfCare-*.json
do
	openapi-examples-validator --no-additional-properties -s $.components.schemas.EpisodeOfCare -e ${FILE} ./HipFhirNesOpenApi.yaml
done
 openapi-examples-validator --no-additional-properties -s $.components.schemas.EpisodeOfCare -e  ./updateEnrolmentRequest.json ./HipFhirNesOpenApi.yaml
	

#FHIR validator

