CodeSystem: Nes_enrolment_type
Id: nes-enrolment-type-1.0
Title: "NES Enrolment Type"
Description: "Describes the type of health service which the enrolment is for"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://standards.digital.health.nz/nes-enrolment-type"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2023-08-23T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "For use with NES Enrolments"
* ^caseSensitive = false
* ^versionNeeded = true
* ^content = #complete
* ^count = 4
* #FLS  "Front Line Services" "Funded GP Enrolment"
* #FLS-NF  "Front Line Services" "Funded GP Enrolment - unfunded"
* #LMC   "Lead Maternity Carer" 
* #WCP "Well Child Provider"


ValueSet: Nes_enrolment_type
Id: nes-enrolment-type-1.0
Title: "NES Enrolment Type"
Description:  "Describes the type of health service which the enrolment is for"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/nes-enrolment-type"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2023-08-23T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "For use with NES Enrolments"
* include codes from system https://standards.digital.health.nz/nes-enrolment-type|1.0