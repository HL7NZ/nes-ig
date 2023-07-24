Alias: $ethnic-group-level-4-code = https://standards.digital.health.nz/ns/ethnic-group-level-4-code

Instance: enrolment-nomination-response-message-2
InstanceOf: Bundle
Description: "Example enrolment nomination request message"
Usage: #example

* id = "6789"
* type = #example
* meta.tag[0].code = http://terminology.hl7.org/CodeSystem/v3-ProcessingID#P
* entry[0].resource.resourceType = "MessageHeader"

//Healthlink AIR Broker  HPI appid 
* entry[0].resource.source.software =  "HSAP22222"
 //EDI account of sending facility
* entry[0].resource.source.endpoint =  "pmsedi"
//facility id of sending facility
* entry[0].resource.source.name =  "facid123"

* entry[0].resource.eventCoding.system = "https://standards.digital.health.nz/ns/nes-event-type"
* entry[0].resource.eventCoding.code = #FLS_ENROLMENT_NOMINATION_ACK
* entry[0].resource.focus[0] = Reference(OperationOutcome/error)

//the Bundle.id of the request message
* entry[0].resource.response.identifier = "12345"

// * entry[0].resource.source.endpoint =  "https://healhlink.co.nz/airBroker"
* entry[0].fullUrl = "34567"


* entry[1].resource.resourceType = "OperationOutcome"
* entry[1].resource.id = "error"
* entry[1].resource.issue.severity =  #error
* entry[1].resource.issue.code =  #processing
* entry[1].resource.issue.diagnostics = "problem processing NK1 segment"

* entry[1].resource.issue.details.coding.code = #AE
* entry[1].resource.issue.details.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0008"

