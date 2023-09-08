

//defined in NZ Base
Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb
Alias: $NZGeocode = http://hl7.org.nz/fhir/StructureDefinition/nz-geocode
Alias: $buildingName = http://hl7.org.nz/fhir/StructureDefinition/building-name
Alias: $domicileCode = http://hl7.org.nz/fhir/StructureDefinition/domicile-code


Profile:        NesEncounter

Parent:         Encounter         

Id:             NesEncounter
Title:          "NesEncounter"
Description:    "Restricts Encounter to the elemrnts need to describe an NES Enrolment qualified Encounter"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NesEncounter"



//excluded

* statusHistory 0..0
* classHistory 0..0
* type 0..0 
* serviceType 0..0
* priority 0..0 
* subject 0..0
* episodeOfCare 0..0
* basedOn 0..0
* participant 0..0
* appointment 0..0 
* length 0..0
* reasonCode 0..0
* reasonReference 0..0
* diagnosis 0..0
* account 0..0
* hospitalization 0..0
* location 0..0
* serviceProvider 0..0
* partOf 0..0




