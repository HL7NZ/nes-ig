Alias: $flag-code-vs = https://nzhts.digital.health.nz/fhir/ValueSet/nes-flag-type
Profile:        NesFlag

Parent:         Flag         

Id:             NesFlag
Title:          "NeFlag"
Description:    "Used to flag NES related information"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NesFlag"



* subject only Reference(Patient)
* code from $flag-code-vs

//excluded
* category 0..0
* encounter 0..0
* author 0..0