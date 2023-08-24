Extension: Nes_enrolment_termination_reason
Id: nes-enrolment-termination-reason
Description: "NES Enrolment Termination Reason Code"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nes-enrolment-termination-reason"
//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* ^status = #draft


* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from https://nzhts.digital.health.nz/fhir/ValueSet/nes-enrolment-termination-reason (preferred)