Instance: enrolment-1
InstanceOf: EpisodeOfCare
Description: "Example enrolment"
Usage: #example

* id = "EN667788899"

* identifier.system = "https://standards.digital.health.nz/ns/nes-enrolment-id"
* identifier.value = "EN667788899"


* patient = Reference(Patient/ZAA0792)
* careManager = Reference(EnrolmentServiceProvider1)

* contained[0] = EnrolmentServiceProvider1
* status = #active

* extension[enrolment-expiry-date].valueDate = "2026-06-05"
* extension[enrolment-owner-org].valueReference = Reference(Organization/GZZ998-G)
* extension[nes-enrolment-termination-reason].valueCodeableConcept = #Transfer

Instance: EnrolmentServiceProvider1
InstanceOf: PractitionerRole
Description: "Example EnrolmentServiceProvider1"
Usage: #inline

* practitioner = Reference(Practitioner/99ZZZS)
* organization = Reference(Organization/GZZ998-G)