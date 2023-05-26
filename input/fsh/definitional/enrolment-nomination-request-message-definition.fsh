
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

* focus[2].code = #RelatedPerson
* focus[2].min = 0
* focus[2].max = "1"


* eventCoding.system = "https://standards.digital.health.nz/ns/nes-event-type"
* eventCoding.code = #ENROLMENT_NOMINATION

