

### Create Enrolment

The Create Enrolment operation is initiated by a user who needs to create a new Enrolment with a health provider for the provision of a health service.

<div>
{% include create-enrolment.svg %}
</div>

####  Create Enrolment processing steps:

1. A FHIR Client sends a POST  request  to the NES  *EpisodeOfCare* endpoint with  a payload containing the NesEnrolment resource to be created, excluding ids
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. The Enrolment is created in the EEE database and an ID is assigned
4. A newly created  NESEnrolment, including its ID,  is returned to the client

####  Create Enrolment Request Example 
[create Enrolment request](EpisodeOfCare-do-not-populate-id.json.html)


#### Business  Rules

These business rules are split up by enrolment type:
* First Level Service (FLS) and First Level Service Non-funded (FLS-NF)
* Maternity and newborn care services (LMC)
* Well child Tamariki Ora services (WCTO

##### FLS and FLS-NF Rules

* A Create Enrolment request must include:
  * A valid enrolling organisation (HPI-Organisation-id),
  * A valid service facility (HPI-Facility-id)
  * Enrolment status
  * Enrolment type, and
  * Contained Patient resource

* A Create Enrolment request may include a valid practitioner (HPI-person-id / CPN)

* A Create Enrolment request must not include:
  * id or identiter
  * qualified encounter
  * expiry date
  * re-enrolment date
  * owning Organisation
  * termination reason code
  * managing organisation
  * period
* The Contained Patient resource must be a valid patient that includes at minimum the:
  * Live NHI
  * Patient name
  * Patient date of birth
* A request must not enrol a Patient with a Provider for a Health Service when an active enrolment for the specific Health Service exists for that patient with that Provider.
* A Patient must not be pre-enrolled for Health Service if an active enrolment exists for that Health Service for that patient.
* A request to enrol a patient for a health service must not be actioned if an enrolment (enrolled or pre-enrolled) has already been accepted on that date.
* A Patient must have a maximum of one active enrolment (enrolled or pre-enrolled) with a GP / PHO for Primary Care.
* The enrolment start date will be the date the request is processed to create the enrolment.
* A Patient must be less than three months old at the date of enrolment to pre-enrol with a GP Practice / PHO.


##### LMC Rules

##### WCTO Rules



