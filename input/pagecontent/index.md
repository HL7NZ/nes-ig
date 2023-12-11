This is the Implementation Guide for an [HL7&reg; FHIR&copy;](http://hl7.org/fhir/) interface for the National Enrolment Service (NES). It brings together all the artifacts that are necessary to understand and use the NES FHIR APIs.
It is based on  [FHIR R4](http://hl7.org/fhir/) and NZBase IG 2.0-rc1

The NES is a registry service that holds information about
* Enrolments - This includes an enrolment with a general practitioner, a lead maternity carer, or a nomination to a well child provider.
* Entitlements - This includes community services cards (csc) and high user heath cards (huhc).
* The New Born enrolment service (NBES) - This includes new born nomination to a general practitioner.

The key etities that are suppoted are:

* [Patient Entitlements](/StructureDefinition-NesEntitlement.html), derived from the [HL7 FHIR coverage resource](https://www.hl7.org/fhir/coverage.html).
* [Patient Enrolments](/StructureDefinition-NesEnrolment.html), derived from the [HL7 FHIR episodeofcare resource](https://hl7.org/fhir/R4/episodeofcare.html).
* The  messages required to send an enrolment nomination request to health providers

This guide uses artifacts from [New Zealand Base Implementation Guide.](https://fhir.org.nz/ig/base/index.html)


### Organization of the Guide

* **Business view:** The Business context of the NES

* **Use cases:**  The expected Use Cases including the FHIR interactions that the NES supports.

* **Important information** Onboarding, general implementation notes, frequently asked questions, glossary

* **Compliance testing:** Information on the process for onboarding and compliance, and the specific tests for each of the NES FHIR interactions.

* **API:** Information on the specific features supported by the API.

* **Profiles:** Details of the data elements included in the Coverage and CareTeam profiles.

* **Extensions:** List of extensions defined by the guide.

* **Message definitions** Message definitions used to support the NBES.

* **Terminology:** List of the FHIR terminology artifacts defined within this implementation guide [For other FHIR terminology see the HL7® FHIR® New Zealand Base Implementation Guide](https://fhir.org.nz/ig/base/index.html). Links can be found from each of the artifacts in the patient and address profiles).

* **Table of contents:** Document list of what is available in this implementation guide.

* **Artifact Index:**  This is a tab automatically generated during the build of the Implementation Guide, and lists all the FHIR artifacts defined by the guide with a link to the details.

* **Support** Links to the FHIR spec and downloads.

  ​
  ​

  ### Source

  ​	This IG was built from [github](https://github.com/HL7NZ/nhi)  branch:   commit id: d80ae4648fe2dde207b2ae64cad5fa39a20dc7ff
