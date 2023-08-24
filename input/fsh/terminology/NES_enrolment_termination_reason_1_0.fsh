CodeSystem: Nes_enrolment_termination_reason
Id: nes-enrolment-termination-reason-1.0
Title: "NES Enrolment Termination Reason Code"
Description: "A code to describe the reason the enrolment has ended"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://standards.digital.health.nz/nes-enrolment-termination-reason"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2023-08-23T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "For use with NES Enrolments"
* ^caseSensitive = false
* ^versionNeeded = true
* ^content = #complete
* ^count = 7
// From NES Data Dictionary v3.08
* #Transfer  "The patient has enrolled with another organisation"
* #OptOut  "An eligible patient has chosen to end their enrolment"
* #Died   "The patient has died" 
* #NotEligible "No Longer Eligible"
* #LinkNHI "Linked NHI"
* #Expire "Enrolment has expired"
* #OrgEnd "Enrolmnent terminated by Enrolling Organisation"


ValueSet: Nes_enrolment_termination_reason
Id: nes-enrolment-termination-reason-1.0
Title: "NES Enrolment Termination Reason "
Description: "A code to describe the reason the enrolment has ended"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/nes-enrolment-termination-reason"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2023-08-23T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "For use with NES Enrolments"
* include codes from system https://standards.digital.health.nz/nes-enrolment-termination-reason|1.0