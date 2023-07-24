Alias: $ethnic-group-level-4-code = https://standards.digital.health.nz/ns/ethnic-group-level-4-code

Instance: enrolment-nomination-request-message-1
InstanceOf: Bundle
Description: "Example enrolment nomination request message"
Usage: #example

* id = "11223344"
* type = #example
* timestamp = 2023-05-14T11:15:33+10:00
* meta.tag[0].code = http://terminology.hl7.org/CodeSystem/v3-ProcessingID#P
* entry[0].resource.resourceType = "MessageHeader"
* entry[0].resource.text = ""
* entry[0].resource.eventCoding.system = "https://standards.digital.health.nz/ns/nes-event-type"
* entry[0].resource.eventCoding.code = #FLS_ENROLMENT_NOMINATION
* entry[0].resource.focus[0] = Reference(Patient/ZKC4633)
* entry[0].resource.focus[1] = Reference(RelatedPerson/ZJM9397)

//NES or AIR HPI appid 
* entry[0].resource.source.software =  "HSAP11111"
 //EDI account of sending facility
* entry[0].resource.source.endpoint =  "Mohedi"
//Moh facility id
* entry[0].resource.source.name =  "Mohfacid"


//EDI account of receiving facility 
* entry[0].resource.destination.endpoint = "edi123"
//The receiving facility’s Health Facility Code 
* entry[0].resource.destination.name = "pmsfacid"


//generated guuid?
* entry[0].fullUrl = "12345"


* entry[1].resource.resourceType = "Patient"
* entry[1].resource.text = ""
* entry[1].resource.id = "ZKC4633"
* entry[1].resource.identifier.use = #official
* entry[1].resource.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* entry[1].resource.identifier.value = "ZKC4633"
* entry[1].resource.name[0].id = "10"
* entry[1].resource.name[=].family = "Aufderhar"
* entry[1].resource.name[=].given = "Baby of Jane"
* entry[1].resource.gender = #female
* entry[1].resource.birthDate = "2023-05-25"
* entry[1].resource.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* entry[1].resource.extension[=].valueCodeableConcept.coding.version = "2.0"
* entry[1].resource.extension[=].valueCodeableConcept.coding = $ethnic-group-level-4-code#21111 "Māori"
* entry[1].resource.address.line = "23 Thule St"
* entry[1].resource.address.city = "Waipu"
* entry[1].resource.address.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* entry[1].resource.address.extension[0].valueString = "Waipu river"
* entry[1].fullUrl = "Patient/ZKC4633"



* entry[2].resource.resourceType = "RelatedPerson"
* entry[2].resource.text = ""
* entry[2].resource.id = "ZJM9397"
* entry[2].resource.identifier.use = #official
* entry[2].resource.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* entry[2].resource.identifier.value = "ZJM9397"
* entry[2].resource.name.given = "Mary"
* entry[2].resource.name.family = "Jones"
* entry[2].resource.patient = Reference(Patient/ZKC4633)
* entry[2].resource.relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* entry[2].resource.relationship.coding.code = #MTH

* entry[3].fullUrl = "RelatedPerson/ZJM9397"
