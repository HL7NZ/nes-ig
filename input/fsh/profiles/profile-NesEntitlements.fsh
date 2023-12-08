

//defined in NZ Base
Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb
Alias: $NZGeocode = http://hl7.org.nz/fhir/StructureDefinition/nz-geocode
Alias: $buildingName = http://hl7.org.nz/fhir/StructureDefinition/building-name
Alias: $domicileCode = http://hl7.org.nz/fhir/StructureDefinition/domicile-code


Profile:        NesEntitlement

Parent:         NzCoverage         

Id:             NesEntitlement
Title:          "NES Entitlements"
Description:    "The coverage resource contains information related to Patient entitlements"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NesEntitlement"


//excluded


* policyHolder 0..0
* subscriber 0..0
* subscriberId 0..0
* dependent 0..0
* class 0..0
* order 0..0
* network 0..0
* costToBeneficiary 0..0
* subrogation 0..0
* contract 0..0
* implicitRules 0..0 
* language 0..0

// documentation
* id ^short = "Logical id of this artifact (The Entitlement.id)"
* identifier ^short = "Business Identifier for the Entitlement"
* identifier ^definition = "A unique identifier assigned to this Entitlement (the card number)."
* status ^short = "active | cancelled"
* status ^definition = "The status of entitlement, derived from the start and end dates. Cancelled = ended entitlements."
* type ^short = "Entitlement type such as CSC or HUHC."
* type ^definition = "The type of the Entitlement for example community services card (CSC) or high user health card (HUHC)."
* beneficiary  ^short = "The Health service users NHI."
* beneficiary   ^definition = "The NHI number of the person who benefits from the entitlement"
* relationship ^short = "Used to identify a CSC dependent"
* relationship  ^definition = "An attribute used to identify if this entitlement is dependent on another CSC entitlement. Child for  CSC-dep"
* period ^short = "Entitlement Start and Expiry or End date"
* period ^definition = "Time period of the entitlement. Period Start = Entitlement start date. Period end = Entitlement expiry date (active entitlements) or Entitlement end date (ended entitlements)."
* payor  ^short = "Organisation approving the entitlement."
* payor ^definition = "The HPI Org Id for the organisation approving a Patient Entitlement."

// constraints on base profile
* type from https://nzhts.digital.health.nz/fhir/ValueSet/coverage-type-code
* identifier.system from https://nzhts.digital.health.nz/fhir/ValueSet/es-entitlement-identifier-code
* identifier.use = #official (exactly)

