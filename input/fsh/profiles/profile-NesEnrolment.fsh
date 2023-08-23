




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
* language 0..0 

// restricted
* type from https://nzhts.digital.health.nz/fhir/ValueSet/nes-enrolment-type


// contained resources
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained ^slicing.description = "Slicing to specifiy a PractitionerRole resource may be returned as a contained resource for the Care Manager"
* contained contains careManager 0..1
* contained[careManager] only http://hl7.org/fhir/StructureDefinition/PractitionerRole
* contained[careManager] ^short = "Contained resource for the Care Manager of the Enrolment"
* contained[careManager] ^definition = "Contained resource for the Care Manager of the Enrolment"
