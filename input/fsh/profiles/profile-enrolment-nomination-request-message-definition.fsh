

//defined in NZ Base
Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb
Alias: $NZGeocode = http://hl7.org.nz/fhir/StructureDefinition/nz-geocode
Alias: $buildingName = http://hl7.org.nz/fhir/StructureDefinition/building-name
Alias: $domicileCode = http://hl7.org.nz/fhir/StructureDefinition/domicile-code


Profile:        EnrolmentNominationRequestMessageDefinition

Parent:         MessageDefinition         

Id:             EnrolmentNominationRequest
Title:          "Enrolment Nomination Request Message Definition"
Description:    "Defines the message used to request an enrolment"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/EnrolmentNominationRequestMessageDefinition"

* focus[1].code=Patient
* focus[1].min=1
* focus[1].max=1