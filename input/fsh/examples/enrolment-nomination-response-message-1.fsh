Alias: $ethnic-group-level-4-code = https://standards.digital.health.nz/ns/ethnic-group-level-4-code

Instance: enrolment-nomination-response-message-1
InstanceOf: Bundle
Description: "Example enrolment nomination request message"
Usage: #example

* id = "34567"
* type = #message
* entry[0].resource.resourceType = "MessageHeader"
* entry[0].resource.eventCoding.system = "https://standards.digital.health.nz/ns/nes-event-type"
* entry[0].resource.eventCoding.code = #FLS_ENROLMENT_NOMINATION
* entry[0].resource.focus[0] = Reference(OperationOutcome/success)

//the Bundle.id of the request message
* entry[0].resource.response.identifier = "12345"

* entry[0].resource.source.endpoint =  "https://healhlink.co.nz/airBroker"
* entry[0].fullUrl = "34567"


* entry[1].resource.resourceType = "OperationOutcome"
* entry[1].resource.id = "success"
* entry[1].resource.issue.severity =  #information
* entry[1].resource.issue.code =  #informational
* entry[1].resource.issue.details.text = "accepted"
* entry[1].resource.issue.details.coding.code = #ACCEPTED
* entry[1].resource.issue.details.coding.system = "https://standards.digital.health.nz/ns/enrolment-nomination-result"

