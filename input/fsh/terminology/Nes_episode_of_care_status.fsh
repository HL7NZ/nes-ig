ValueSet: Nes_episode_of_care_status
Id: nes-episode-of-care-status-1.0
Title: "NES Enrolment Status"
Description: "NES Enrolment Status"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/nes-episode-of-care-status"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-09T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the status of an enrolment ."
* ^compose.inactive = true
* include codes from system http://hl7.org/fhir/episode-of-care-status 
* exclude http://hl7.org/fhir/episode-of-care-status#onhold
* exclude http://hl7.org/fhir/episode-of-care-status#cancelled
* exclude http://hl7.org/fhir/episode-of-care-status#entered-in-error