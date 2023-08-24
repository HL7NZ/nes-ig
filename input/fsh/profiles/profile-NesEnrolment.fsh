




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

//extensions 
* extension contains
    http://hl7.org.nz/fhir/StructureDefinition/enrolment-expiry-date  named expiryDate 0..1  and
    http://hl7.org.nz/fhir/StructureDefinition/enrolment-owner-org named owningOrganisation 0..1 and
    http://hl7.org.nz/fhir/StructureDefinition/nes-enrolment-termination-reason named terminationReason 0..1
    
* extension[expiryDate] ^short = "The date on which the Enrolment will expire"
* extension[owningOrganisation] ^short = "Organisation that creates the enrolment"
* extension[nes-enrolment-termination-reason] ^short = " describe the reason the enrolment has ended"
* extension[nes-enrolment-termination-reason].valueCodeableConcept from https://nzhts.digital.health.nz/fhir/ValueSet/nes-enrolment-termination-reason

//* extension[owningOrganisation] only Reference(HpiOrganization)

// contained resources
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained ^slicing.description = "Slicing to specify a PractitionerRole resource may be returned as a contained resource for the Care Manager"
* contained contains careManager 0..1
* contained[careManager] only http://hl7.org/fhir/StructureDefinition/PractitionerRole
* contained[careManager] ^short = "Contained resource for the Care Manager of the Enrolment"
* contained[careManager] ^definition = "Contained resource for the Care Manager of the Enrolment"
