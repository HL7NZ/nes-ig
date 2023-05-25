
Instance: EnrolmentNominationResponseMessageDefinition
InstanceOf: MessageDefinition
Description: "Defines the message used to respond to a request for an enrolment"

* url = "http://hl7.org.nz/fhir/MessageDefinition/EnrolmentNominationResponseMessageDefinition"
* status = #draft
* date = "2020-04-21"
* focus[0].code = #OperationOutcome
* focus[0].min = 1
* focus[0].max = "1"


* eventCoding.system = "https://standards.digital.health.nz/ns/nes-event-type"
* eventCoding.code = #ENROLMENT_NOMINATION
