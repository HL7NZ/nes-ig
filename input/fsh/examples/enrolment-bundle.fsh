Instance: enrolment-bundle1
InstanceOf: Bundle
Description: "Example enrolment search respnse (active enrolments fro NHI"
Usage: #example

* id = "EN88776655"
* type = #searchset

* identifier.system = "https://standards.digital.health.nz/ns/nes-enrolment-id"
* identifier.value = "EN667788899"

* entry[0].resource.resourceType = "EpisodeOfCare"

* entry[=].resource.type.coding.system = "https://standards.digital.health.nz/nes-enrolment-type"
* entry[=].resource.type.coding.code = #FLS-NF

* entry[=].resource.patient = Reference(Patient/ZAA0792)
* entry[=].resource.careManager = Reference(EnrolmentServiceProvider3)

* entry[=].resource.contained[0] = EnrolmentServiceProvider3
* entry[=].resource.contained[1] = QualifiedEncounter2
* entry[=].resource.status = #active

* entry[=].resource.extension[enrolment-expiry-date].valueDate = "2026-06-05"
* entry[=].resource.extension[reenrolment-date].valueDate = "2022-06-05"
* entry[=].resource.extension[enrolment-owner-org].valueReference = Reference(Organization/GZZ998-G)
* entry[=].resource.extension[enrolment-owner-org].valueReference.display = "Live Org with Dormant"
* entry[=].resource.extension[nes-enrolment-termination-reason].valueCodeableConcept = #Transfer
* entry[=].resource.extension[enrolment-encounter].valueReference = Reference(QualifiedEncounter1)

* entry[1].resource.resourceType = "EpisodeOfCare"

* entry[=].resource.type.coding.system = "https://standards.digital.health.nz/nes-enrolment-type"
* entry[=].resource.type.coding.code = #LMC

* entry[=].resource.patient = Reference(Patient/ZAA0792)
* entry[=].resource.careManager = Reference(EnrolmentServiceProvider4)

* entry[=].resource.contained[0] = EnrolmentServiceProvider4
* entry[=].resource.contained[1] = QualifiedEncounter3
* entry[=].resource.status = #active

* entry[=].resource.extension[enrolment-expiry-date].valueDate = "2026-07-05"
* entry[=].resource.extension[reenrolment-date].valueDate = "2022-07-05"
* entry[=].resource.extension[enrolment-owner-org].valueReference = Reference(Organization/GZZ998-G)
* entry[=].resource.extension[enrolment-owner-org].valueReference.display = "Live Org with Dormant"
* entry[=].resource.extension[enrolment-encounter].valueReference = Reference(QualifiedEncounter3)



Instance: EnrolmentServiceProvider3
InstanceOf: PractitionerRole
Usage: #inline

* practitioner = Reference(Practitioner/99ZZZS)
* practitioner.display = "Mrs TestOne Prefix-Test"
* organization = Reference(Organization/GZZ998-G)
* organization.display = "Live Org with Dormant"
* location = Reference(Location/FZZ968-B)
* location.display = "Facility Has All Contact Types TEST"

Instance: EnrolmentServiceProvider4
InstanceOf: PractitionerRole
Usage: #inline

* practitioner = Reference(Practitioner/90ZZLC)
* practitioner.display = "Corporal Maxwell Quentin Klinger"
* organization = Reference(Organization//GZZ997-E)
* organization.display = "Another Live Org with Dormant"
* location = Reference(Location/FZZ065-D)
* location.display = "Uncle Pats Seaside Sauna Retreat"


Instance: QualifiedEncounter2
InstanceOf: Encounter
Usage: #inline

* status = #finished 
* class = #AMB
* period.start =  "2023-08-27"


Instance: QualifiedEncounter3
InstanceOf: Encounter
Usage: #inline

* status = #finished 
* class = #AMB
* period.start =  "2023-06-14"
