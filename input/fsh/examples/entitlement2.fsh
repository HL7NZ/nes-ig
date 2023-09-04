Instance: entitlement-2
InstanceOf: Coverage 
Description: "Example CSC dependant entitlement"
Usage: #example

* id = "EN5544332211"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NesEntitlement"

* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/nes-entitlement-id"
* identifier[=].value = "EN5544332211"

* identifier[=].use = #secondary
* identifier[=].system = "https://standards.digital.health.nz/ns/nes-csc-id"
* identifier[=].value = "CSC12345"

* status = #active
* type.coding.system = "https://nzhts.digital.health.nz/fhir/ValueSet/coverage-type-code"
* type.coding.code = #csc

* subscriber = Reference(Patient/ZAA0792)
* beneficiary = Reference(Patient/ZJM9397) 
* relationship.coding.system = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"
* relationship.coding.code = #child

* period.start = 2023-08-27
* period.end = 2024-08-27

* payor =  Reference(Organization/GZZ998-G)