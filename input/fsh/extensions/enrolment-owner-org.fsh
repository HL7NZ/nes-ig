Extension: Enrolment_owner_org
Id: enrolment-owner-org
Description: "Org that creates the enrolment"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/enrolment-owner-org"
//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* ^status = #draft


* extension 0..0
* value[x] only Reference(HpiOrganization)