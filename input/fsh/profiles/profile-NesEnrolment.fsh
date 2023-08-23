




Profile:        NesEnrolment

Parent:         EpisodeOfCare       

Id:             NesEnrolment
Title:          "NES Enrolment"
Description:    "Adds additional, NES specific extensions for enrolments"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NesEnrolment"


//excluded

* statusHistory 0..0
* diagnosis 0..0
* referralRequest 0..0
* team 0..0
* account 0..0

// restricted
* type from https://nzhts.digital.health.nz/fhir/ValueSet/nes-enrolment-type