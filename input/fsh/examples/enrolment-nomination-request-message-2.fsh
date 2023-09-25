Alias: $ethnic-group-level-4-code = https://standards.digital.health.nz/ns/ethnic-group-level-4-code

Instance: enrolment-nomination-request-message-2
InstanceOf: Bundle
Description: "Example of a minimal enrolment nomination request message sent by Whaihua to NES which will be enriched by NES before being forwarded to the  HealthLink AIR broker"
Usage: #example

* id = "54321"
* type = #message
* timestamp = 2023-05-14T11:15:33+10:00

* entry[0].resource.resourceType = "MessageHeader"
* entry[0].resource.eventCoding.system = "https://standards.digital.health.nz/ns/nes-event-type"
* entry[0].resource.eventCoding.code = #FLS_ENROLMENT_NOMINATION
* entry[0].resource.focus[0] = Reference(https://api.hip-uat.digital.health.nz/fhir/nhi/v1/Patient/ZKC4633)
* entry[0].resource.focus[1] = Reference(RelatedPerson/ZJM9397)

//Whaihua appid 
* entry[0].resource.source.software =  "HSA3333"
* entry[0].resource.source.endpoint =  "http:///example.com"
//EDI account of receiving facility 
* entry[0].resource.destination.endpoint = "edi123"
//The receiving facility’s Health Facility Code 
* entry[0].resource.destination.name = "pmsfacid"

//generated guuid?
* entry[0].fullUrl = "12345"


* entry[1].resource.resourceType = "Patient"
* entry[1].resource.meta.profile = "NHIPatient"
* entry[1].resource.id = "ZKC4633"
* entry[1].resource.identifier.use = #official
* entry[1].resource.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* entry[1].resource.identifier.value = "ZKC4633"
* entry[1].resource.name[0].family = "Aufderhar"
* entry[1].resource.name[=].given = "Baby of Jane"
* entry[1].resource.name[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* entry[1].resource.name[=].extension[=].valueBoolean = true
* entry[1].resource.gender = #female
* entry[1].resource.birthDate = "2023-05-25"
* entry[1].fullUrl = "https://api.hip-uat.digital.health.nz/fhir/nhi/v1/Patient/ZKC4633"

* entry[2].resource.resourceType = "RelatedPerson"
* entry[2].resource.id = "ZJM9397"
* entry[2].resource.identifier.use = #official
* entry[2].resource.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* entry[2].resource.identifier.value = "ZJM9397"
* entry[2].resource.name.given = "Mary"
* entry[2].resource.name.family = "Jones"
* entry[2].resource.name[=].extension[1].url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* entry[2].resource.name[=].extension[=].valueBoolean = true
* entry[2].resource.patient = Reference(https://api.hip-uat.digital.health.nz/fhir/nhi/v1/Patient/ZKC4633)
* entry[2].resource.relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* entry[2].resource.relationship.coding.code = #MTH
* entry[2].fullUrl = "RelatedPerson/ZJM9397"
