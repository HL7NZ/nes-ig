Instance: enrolment-nomination-request-message-1
InstanceOf: Bundle
Description: "Example enrolment nomination request message"
Usage: #example

* id = 12345
* type #message
* entry[0].resource.resourceType = #MessageHeader
* entry[0].resource.eventCoding.system = "https://standards.digital.health.nz/ns/nes-event-type"
* entry[0].resource.eventCoding.code = #ENROLMENT_NOMINATION
* entry[0].focus[0].reference = Reference(baby1)


Instance: Inline-Instance-for-enrolment-nomination-patient
InstanceOf: Patient
* id = "baby1"
* identifier.value = "ZKC4633"
* name[0].id = "10"
* name[=].family = "Aufderhar"
* name[=].given = "Baby of Jane"