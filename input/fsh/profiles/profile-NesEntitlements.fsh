

//defined in NZ Base
Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb
Alias: $NZGeocode = http://hl7.org.nz/fhir/StructureDefinition/nz-geocode
Alias: $buildingName = http://hl7.org.nz/fhir/StructureDefinition/building-name
Alias: $domicileCode = http://hl7.org.nz/fhir/StructureDefinition/domicile-code


Profile:        NesEntitlement

Parent:         NzCoverage         

Id:             NesEntitlement
Title:          "NES Entitlements"
Description:    "Adds additional, NES specific extensions"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NesEntitlement"

//excluded


* policyHolder 0..0
* subscriber 0..0
* subscriberId 0..0
* dependent 0..0
* class 0..0
* order 0..0
* network 0..0
* costToBeneficiary 0..0
* subrogation 0..0
* contract 0..0
* implicitRules 0..0 
* language 0..0


// constraints on base profile
* type from https://nzhts.digital.health.nz/fhir/ValueSet/coverage-type-code