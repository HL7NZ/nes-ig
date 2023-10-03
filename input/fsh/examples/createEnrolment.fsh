Instance: enrolment-2
InstanceOf: EpisodeOfCare
Description: "Example enrolment create request payload"
Usage: #example



* type.coding.system = "https://standards.digital.health.nz/nes-enrolment-type"
* type.coding.code = #FLS

* patient = Reference(Patient/PatientZKF6683)
* careManager = Reference(EnrolmentServiceProvider5)

* contained[0] = EnrolmentServiceProvider5
* contained[1] = QualifiedEncounter4
* contained[2] = PatientZJJ8114
* status = #active

* extension[enrolment-expiry-date].valueDate = "2026-06-05"
* extension[reenrolment-date].valueDate = "2022-06-05"
* extension[enrolment-owner-org].valueReference = Reference(Organization/GZZ998-G)
* extension[enrolment-owner-org].valueReference.display = "Live Org with Dormant"
* extension[nes-enrolment-termination-reason].valueCodeableConcept = #Transfer
* extension[enrolment-encounter].valueReference = Reference(QualifiedEncounter1)
* extension[nes-enrolment-termination-reason].valueCodeableConcept.coding.code = #LinkNHI
* extension[nes-enrolment-termination-reason].valueCodeableConcept.text = "NHI was Linked"


Instance: EnrolmentServiceProvider5
InstanceOf: PractitionerRole
Description: "Example EnrolmentServiceProvider5"
Usage: #inline

* practitioner = Reference(Practitioner/99ZZZS)
* practitioner.display = "Mrs TestOne Prefix-Test"
* organization = Reference(Organization/GZZ998-G)
* organization.display = "Live Org with Dormant"
* location = Reference(Location/FZZ968-B)
* location.display = "Facility Has All Contact Types TEST"


Instance: QualifiedEncounter4
InstanceOf: Encounter
Usage: #inline

* status = #finished 
* class = #AMB
* period.start =  "2023-07-27"


Instance: PatientZJJ8114
InstanceOf: NesPatient
Usage: #inline

* identifier.value = "ZJJ8114"

* name[0].family = "Mathieu"
* name[=].given[0] = "Francesca"

* birthDate = "2000-03-03"

