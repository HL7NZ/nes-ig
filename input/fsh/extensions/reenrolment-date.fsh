Extension: Reenrolment_expiry_date
Id: reenrolment-date
Description: "The re-enrolment date"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/reenrolment-date"
//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* ^status = #draft


* extension 0..0
* value[x] only date