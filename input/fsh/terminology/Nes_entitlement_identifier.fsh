CodeSystem: Nes_Entitlement_Identifier_10
Id: nes-entitlement-identifier-1.0
Title: "NES Entitlement System Identifiers"
Description: "A list of the identifiers of entitlement issuers authorities."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://standards.digital.health.nz/ns/es-entitlement-identifier-code"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "List the set of valid entitlement issuer authority identifiers"
* ^caseSensitive = false
* ^versionNeeded = true
* ^content = #complete
* ^count = 3
* #"https://standards.digital.health.nz/ns/nes-csc-id"
* #"https://standards.digital.health.nz/ns/nes-huhc-id"
* #"https://standards.digital.health.nz/ns/nes-psc-id"

ValueSet: Nes_Entitlement_Identifier
Id: nes-entitlement-identifier-1.0
Title: "NES Entitlement System Identifiers"
Description: "A list of the identifiers of entitlement issuers authorities."
* ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/es-entitlement-identifier-code"
* ^version = "1.0"
* ^status = #active
* ^date = "2020-12-18T23:08:15+00:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "The set of valid registration authority identifiers."
* include codes from system https://standards.digital.health.nz/ns/es-entitlement-identifier-code