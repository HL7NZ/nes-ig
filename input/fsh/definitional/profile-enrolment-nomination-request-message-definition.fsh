
Instance: EnrolmentNominationRequestMessageDefinition
InstanceOf: MessageDefinition
Description: "Defines the message used to request an enrolment"

* url = "http://hl7.org.nz/fhir/MessageDefinition/EnrolmentNominationRequestMessageDefinition"
* status = #draft
* date = "2020-04-21"
* focus[0].code = #Patient
* focus[0].min = 1
* focus[0].max = "1"

* focus[1].code = #Location
* focus[1].min = 1
* focus[1].max = "1"

* focus[1].code = #RelatedPerson
* focus[1].min = 0
* focus[1].max = "1"


* eventCoding.system = "https://standards.digital.health.nz/ns/nes-event-type"
* eventCoding.code = #ENROLMENT_NOMINATION


CodeSystem: NES_event_type_1_0
Id: nes-event-type-1.0
Title: "NES Event Type"
Description: "Identifies NES events."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://standards.digital.health.nz/ns/nes-event-type"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2023-05-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "NES event type"
* ^caseSensitive = false
* ^versionNeeded = false
* ^content = #complete
* ^count = 1
* #ENROLMENT_NOMINATION "NES Enrolment Nomination"
