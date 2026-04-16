Instance: flag-1
InstanceOf: Flag 
Description: "Example CSC Flag"
Usage: #example

* id = "FL100"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NesFlag"

* identifier.value = "FL100"

* status = #active
* code.coding.system = "https://standards.digital.health.nz/nes-flag-type"
* code.coding.code = #CNC
* code.text = "see this url for guidance https://something "
* subject = Reference(Patient/ZJM9397)
* period.start = 2020-08-27
* period.end = 2026-08-27
