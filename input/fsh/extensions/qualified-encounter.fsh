Extension: Enrolment_encounter
Id: enrolment-encounter
Description: "The last qualified encounter foe this enrolment"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/enrolment-encounter"
//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* ^status = #draft


* extension 0..0
* value[x] only Reference(Encounter)