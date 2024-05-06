Instance: entitlement-1
InstanceOf: Coverage 
Description: "Example CSC entitlement"
Usage: #example

* id = "EN667788899"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NesEntitlement"


* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/nes-csc-id"
* identifier[=].value = "CSC12345"

* status = #active
* type.coding.system = "https://standards.digital.health.nz/ns/coverage-type-code"
* type.coding.code = #csc

* beneficiary = Reference(Patient/ZAA0792) 

* period.start = 2023-08-27
* period.end = 2024-08-27

* payor =  Reference(Organization/GZZ998-G)