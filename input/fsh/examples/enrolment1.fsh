Instance: enrolment-1
InstanceOf: EpisodeOfCare
Description: "Example enrolment"
Usage: #example

* id = "EN667788899"

* identifier.system = "https://standards.digital.health.nz/ns/nes-enrolment-id"
* identifier.value = "EN667788899"

* type.coding.system = "https://standards.digital.health.nz/nes-enrolment-type"
* type.coding.code = #FLS-NF

* patient = Reference(Patient/ZJM9397)
* careManager = Reference(EnrolmentServiceProvider1)

* contained[0] = EnrolmentServiceProvider1
* contained[1] = ZJM9397
* status = #active

* extension[enrolment-expiry-date].valueDate = "2026-06-05"
* extension[reenrolment-date].valueDate = "2022-06-05"
* extension[enrolment-owner-org].valueReference = Reference(Organization/GZZ998-G)
* extension[enrolment-owner-org].valueReference.display = "Live Org with Dormant"

* extension[nes-enrolment-termination-reason].valueCodeableConcept.coding.code = #Transfer
* extension[nes-enrolment-termination-reason].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/nes-enrolment-termination-reason"

* extension[enrolment-encounter].valueReference = Reference(QualifiedEncounter1)


Instance: EnrolmentServiceProvider1
InstanceOf: PractitionerRole
Description: "Example EnrolmentServiceProvider1"
Usage: #inline

* practitioner = Reference(Practitioner/99ZZZS)
* practitioner.display = "Mrs TestOne Prefix-Test"
* organization = Reference(Organization/GZZ998-G)
* organization.display = "Live Org with Dormant"
* location = Reference(Location/FZZ968-B)
* location.display = "Facility Has All Contact Types TEST"



Instance: ZJM9397
InstanceOf: NesPatient
Usage: #inline
* name[0].family = "Ryan"
* name[=].given[0] = "Jamie"
* name[=].given[+] = "Joseph"
* birthDate = "1972-06-05"

