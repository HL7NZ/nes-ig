

//defined in NZ Base
Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb
Alias: $NZGeocode = http://hl7.org.nz/fhir/StructureDefinition/nz-geocode
Alias: $buildingName = http://hl7.org.nz/fhir/StructureDefinition/building-name
Alias: $domicileCode = http://hl7.org.nz/fhir/StructureDefinition/domicile-code


Profile:        EnrolmentNominationResponse

Parent:         OperationOutcome         

Id:             EnrolmentNominationResponse
Title:          "EnrolmentNominationResponse"
Description:    "Adds additional, NES specific extensions"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/EnrolmentNominationResponse"

* issue.details from  https://nzhts.digital.health.nz/fhir/ValueSet/enrolment-nomination-result 