Instance: enrolment-2-ended
InstanceOf: EpisodeOfCare
Description: "Example enrolment update request with termination reason "
Usage: #example

* id = "EN12349876"

* identifier.system = "https://standards.digital.health.nz/ns/nes-enrolment-id"
* identifier.value = "EN667788899"

* type.coding.system = "https://standards.digital.health.nz/nes-enrolment-type"
* type.coding.code = #FLS-NF

* patient = Reference(Patient/PatientZJM9397)
* careManager = Reference(EnrolmentServiceProvider10)
* extension[enrolment-encounter].valueReference = Reference(QualifiedEncounter10)

* contained[0] = EnrolmentServiceProvider10
* contained[1] = QualifiedEncounter10
* contained[2] = ZKC4633
* status = #active

* extension[enrolment-expiry-date].valueDate = "2026-06-05"
* extension[reenrolment-date].valueDate = "2022-06-05"
* extension[enrolment-owner-org].valueReference = Reference(Organization/GZZ998-G)
* extension[enrolment-owner-org].valueReference.display = "Live Org with Dormant"
* extension[nes-enrolment-termination-reason].valueCodeableConcept = #Transfer
* extension[enrolment-encounter].valueReference = Reference(QualifiedEncounter10)
* extension[nes-enrolment-termination-reason].valueCodeableConcept.coding.code = #LinkNHI
* extension[nes-enrolment-termination-reason].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/nes-enrolment-termination-reason"
* extension[nes-enrolment-termination-reason].valueCodeableConcept.text = "NHI was Linked"


Instance: EnrolmentServiceProvider10
InstanceOf: PractitionerRole
Description: "Example EnrolmentServiceProvider10"
Usage: #inline

* practitioner = Reference(Practitioner/99ZZZS)
* practitioner.display = "Mrs TestOne Prefix-Test"
* organization = Reference(Organization/GZZ998-G)
* organization.display = "Live Org with Dormant"
* location = Reference(Location/FZZ968-B)
* location.display = "Facility Has All Contact Types TEST"


Instance: QualifiedEncounter10
InstanceOf: Encounter
Usage: #inline

* status = #finished 
* class = #AMB
* period.start =  "2023-09-27"


Instance: ZKC4633
InstanceOf: NesPatient
Usage: #inline
* name[0].family = "Aufderhar"
* name[=].given[0] = "Rickey"
* name[=].given[1] = "Amalia"

* birthDate = "2021-12-29"

