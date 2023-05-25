Alias: $ethnic-group-level-4-code = https://standards.digital.health.nz/ns/ethnic-group-level-4-code

Instance: enrolment-nomination-request-message-1
InstanceOf: Bundle
Description: "Example enrolment nomination request message"
Usage: #example

* id = "12345"
* type = #message
* entry[0].resource.resourceType = "MessageHeader"
* entry[0].resource.eventCoding.system = "https://standards.digital.health.nz/ns/nes-event-type"
* entry[0].resource.eventCoding.code = #ENROLMENT_NOMINATION
* entry[0].resource.focus[0] = Reference(baby1)
* entry[0].resource.focus[1] = Reference(facility1)
* entry[0].resource.focus[1] = Reference(mother1)

Instance: Inline-Instance-for-enrolment-nomination-patient
InstanceOf: Patient
Usage: #inline
* id = "baby1"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZKC4633"
* name[0].id = "10"
* name[=].family = "Aufderhar"
* name[=].given = "Baby of Jane"
* gender = #female
* birthDate = "2023-05-25"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept.coding.version = "2.0"
* extension[=].valueCodeableConcept.coding = $ethnic-group-level-4-code#21111 "Māori"


Instance: FZZ958-K
InstanceOf: Location
Usage: #inline
* id = "facility1"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* identifier[=].value = "FZZ958-K"

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/messaging-address"
* extension[=].extension[0].url = "provider"
* extension[=].extension[=].valueString = "healthlink"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "livefacedi"

* name = "AAAA Medical Facilty"

Instance: Inline-Instance-next-of-kin
InstanceOf: RelatedPerson 
Usage: #inline
* id = "mother1"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZJM9397"
* name.given = "Mary"
* name.family = "Jones"
* patient = Reference(baby1)
* relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* relationship.coding.code = #MTH


