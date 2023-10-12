Instance: do-not-populate-id
InstanceOf: EpisodeOfCare
Description: "Example enrolment create request payload"
Usage: #example



* type.coding.system = "https://standards.digital.health.nz/nes-enrolment-type"
* type.coding.code = #FLS

* patient = Reference(ZJJ8114)
* careManager = Reference(EnrolmentServiceProvider5)

* contained[0] = EnrolmentServiceProvider5
* contained[1] = ZJJ8114
* status = #active

* extension[enrolment-expiry-date].valueDate = "2026-06-05"

* extension[enrolment-owner-org].valueReference = Reference(Organization/GZZ998-G)
* extension[enrolment-owner-org].valueReference.display = "Live Org with Dormant"



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





Instance: ZJJ8114
InstanceOf: NesPatient
Usage: #inline
* name[0].family = "Mathieu"
* name[=].given[0] = "Francesca"

* birthDate = "2000-03-03"

