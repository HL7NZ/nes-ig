Extension: Enrolment_expiry_date
Id: enrolment-expiry-date
Description: "The enrolment expiry date"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/enrolment-expiry-date"
//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* ^status = #draft


* extension 0..0
* value[x] only date