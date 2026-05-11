Instance: flag-1
InstanceOf: Flag 
Description: "Example CSC Flag"
Usage: #example

* id = "FL100"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NesFlag"

* identifier.value = "FL100"

* status = #active
* code.coding.system = "https://standards.digital.health.nz/nes-flag-type"
* code.coding.code = #NCCI
* code.text = "https://health.govt.nz/NCCIsomething"
* subject = Reference(Patient/ZJM9397)
* period.start = 2020-08-27

