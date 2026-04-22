Instance: flag-bundle-1
InstanceOf: Bundle 
Description: "Example NES Flag search result"
Usage: #example

* id = "FL101"
* type = #searchset

* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NesFlag"

* identifier.value = "FL102"

* entry[0].resource.resourceType = "Flag"
* entry[=].resource.status = #active
* entry[=].resource.code.coding.system = "https://standards.digital.health.nz/nes-flag-type"
* entry[=].resource.code.coding.code = #CNC
* entry[=].resource.code.text = "see this url for guidance https://something "
* entry[=].resource.subject = Reference(Patient/ZJM9397)
* entry[=].resource.period.start = 2020-08-27
* entry[=].resource.period.end = 2026-08-27
