




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
* managingOrganization

// constraints on base profile
* type from https://nzhts.digital.health.nz/fhir/ValueSet/nes-enrolment-type
* meta.versionId 0..0
* meta.source 0..0
* meta.security 0..0
* meta.tag 0..0

* status from https://nzhts.digital.health.nz/fhir/ValueSet/nes-episode-of-care-status


//extensions 
* extension contains
    http://hl7.org.nz/fhir/StructureDefinition/enrolment-expiry-date  named expiryDate 0..1  and
    http://hl7.org.nz/fhir/StructureDefinition/reenrolment-date  named re-enrolmentDate 0..1  and
    http://hl7.org.nz/fhir/StructureDefinition/enrolment-owner-org named owningOrganisation 0..1 and
    http://hl7.org.nz/fhir/StructureDefinition/nes-enrolment-termination-reason named terminationReason 0..1 and
    http://hl7.org.nz/fhir/StructureDefinition/enrolment-encounter named qualifiedEncounter 0..1
    
* extension[expiryDate] ^short = "The date on which the Enrolment will expire"
* extension[owningOrganisation] ^short = "Organisation that creates the enrolment"
* extension[terminationReason] ^short = " describe the reason the enrolment has ended"
* extension[qualifiedEncounter] ^short = "the last qualified Encounter relating to this Enrolment"

//extension constraints
* extension[nes-enrolment-termination-reason].valueCodeableConcept from https://nzhts.digital.health.nz/fhir/ValueSet/nes-enrolment-termination-reason (required)


// contained resources
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained ^slicing.description = "Slicing to specify a PractitionerRole resource may be returned as a contained resource for the Care Manager"
* contained contains careManager 0..1
* contained[careManager] only http://hl7.org/fhir/StructureDefinition/PractitionerRole
* contained[careManager] ^short = "Contained resource for the Care Manager of the Enrolment"

* contained contains qualifiedEncounter 0..1
* contained[qualifiedEncounter] only Encounter
* contained[careManager] ^short = "Contained resource for the last qualified Encounter relating to this Enrolment"

* patient only Reference(NesPatient)
* contained contains patient 1..1
* contained[patient] only NesPatient
* contained[careManager] only NesPractitionerRole

* obeys URL-LENGTH
* obeys URL-ALLOWED-CHARS
* obeys SYSTEM-LENGTH
* obeys SYSTEM-ALLOWED-CHARS
* obeys CODEABLE-CONCEPT-TEXT-LENGTH
* obeys CODEABLE-CONCEPT-TEXT-ALLOWED-CHARS

//to do: allow unicocde
Invariant: URL-LENGTH
Expression: "EpisodeOfCare.descendants().url.all(length()<1024)"
Description: "URLs must be less than 1024 characters"
Severity: #error

Invariant: URL-ALLOWED-CHARS
Expression: "EpisodeOfCare.descendants().url.all(matches('^[-a-zA-Z0-9@:%._\\+~#=?&\\/]*$'))"
Description: "character restrictions for URLs"
Severity: #error

Invariant: SYSTEM-LENGTH
Expression: "EpisodeOfCare.descendants().system.all(length()<1024)"
Description: "System URLs must be less than 1024 characters"
Severity: #error

Invariant: SYSTEM-ALLOWED-CHARS
Expression: "EpisodeOfCare.descendants().system.all(matches('^[-a-zA-Z0-9@:%._\\+~#=?&\\/]*$'))"
Description: "character restrictions for system url"
Severity: #error

Invariant: CODEABLE-CONCEPT-TEXT-LENGTH
Expression: "EpisodeOfCare.descendants().valueCodeableConcept.text.all(length()<1024))"
Description: "valueCodeableConcept.text must be less than 1024 characters"
Severity: #error

Invariant: CODEABLE-CONCEPT-TEXT-ALLOWED-CHARS
Expression: "EpisodeOfCare.descendants().valueCodeableConcept.text.all(matches('^([a-zA-Z0-9\\'\\s\\.\\-\\/,])*$'))"
Description: "character restrictions for valueCodeableConcept.text"
Severity: #error

