

### Create Enrolment for Patient

The Create Enrolment operation is initiated by a user who needs to create a new Enrolment with a health provider for the provision of a health service to a patient.


<div>
{% include create-enrolment.svg %}
</div>



####  Create Enrolment processing steps:

1. A FHIR Client sends a POST  request  to the NES  *EpisodeOfCare* endpoint with  a payload containing the NesEnrolment resource to be created, excluding ids
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. The Enrolment is created in the EEE database and an ID is assigned
4. A newly created  NESEnrolment, including its ID,  is returned to the client


####  Create Enrolment Request Example 
[create Enrolment request](CreateEnrolmentRequestExample.html)



#### Behaviour

* FHIR Create Enrolment operation received by the system
* Requester identity checked to make sure they are valid and have correct permission set.
* Enrolment record is validated.
* The patient identity is validated.
* The request is checked against existing enrolment records for the patient to make sure the changes requested complies with the relevant enrolment Business and Attribute Rules.
* If all the attributes / items in the Enrolment record are correct
  * A new enrolment record is created in NES with the details populated in the request.
  * If required any enrolments are ended.
* If checks result in an error at any point, processing will stop and an Operation Outcome resource returned.
* If the request results in an existing Patient Provider enrolment ending, a notification will be created.
  * Organisations use the Common ‘Get Notifications’ request to check for new notifications of changes.
  * We won’t send a notification if the enrolment is with the org that actions the request.

#### Business  Rules

* A Create Enrolment request must include:
  * A valid enrolling organisation (HPI-Organisation-id),
  * A valid service facility (HPI-Facility-id) (WCTO excluded).
  * Enrolment status
  * Enrolment type, and
  * Contained Patient resource

* A Create Enrolment request may include a valid practitioner (HPI-person-id / CPN)

* A Create Enrolment request must not include:
  * id or identiter (the id = identifier and is set by the service)
  * qualified encounter
  * re-enrolment date
  * expiry date (This is set by the service
    * FLS:
      * Nomination (future scope).
      * Enrol (set to three years from creation date).
      * Pre-enrol (set to three months from creation date).
    * FLS-NF (does not expire / set to a constant)
    * LMC (set to 6 weeks from baby's birthdate)
    * WCTP (set to the child's 5th birthday)
  * owning Organisation (set by the service to the hpi-Organisation-id of the requestor)
  * termination reason code
  * period
    * start (set by the service to the operation date)
    * end (only set when a record is ended)

* The Contained Patient resource must be a valid patient that includes at minimum the:
  * Live NHI
  * Patient name
  * Patient date of birth

* A request must not enrol a Patient with a Provider for a Health Service when an active enrolment for the specific Health Service exists for that patient with that Provider.

* The enrolment start date will be the date the request is processed to create the enrolment.

**FLS Specific Rules**
* A Patient must not be pre-enrolled for Health Service if an active enrolment exists for that Health Service for that patient.

* A request to enrol a patient for a health service must not be actioned if an enrolment (enrolled or pre-enrolled) has already been accepted on that date.

* A Patient must have a maximum of one active enrolment (enrolled or pre-enrolled) with a GP / PHO for Primary Care.

* A Patient must be less than three months old at the date of enrolment to pre-enrol with a GP Practice / PHO.


<h3>Create Enrolment Errors</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Error Scenario</th>
<th>Error Code</th>
<th>Error Message</th>
<th>HTTP Status code</th></tr>

<tr><td>Missing HPI-Organisation-id in request</td>
<td>EM07201</td>
<td>HPI-Organisation-id is a required field</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>Missing HPI-Facility-id in request</td>
<td>EM07201</td>
<td>HPI-Facility-id is a required field</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>Missing Enrolment status in request</td>
<td>EM07201</td>
<td>Enrolment status is a required field</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>Missing Enrolment type in request</td>
<td>EM07201</td>
<td>Enrolment type is a required field</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>Missing Patient resource in request</td>
<td>EM07201</td>
<td>Patient resource is a required field</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>NHI provied is dormant</td>
<td>EM02004</td>
<td>The NHI Identifier provided is dormant. This record cannot be updated</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>Patient identity information does not match Patient NHI supplied</td>
<td>EM02008</td>
<td>The Patient identity information does not match Patient NHI supplied</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>NHI number supplied supplied cannot be found.</td>
<td>EM02002</td>
<td>NHI number supplied supplied cannot be found.</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>HPI-Organisation-id supplied cannot be found.</td>
<td>EM02002</td>
<td>HPI-Organisation-id supplied cannot be found.</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>HPI-Facility-id supplied cannot be found.</td>
<td>EM02002</td>
<td>HPI-Facility-id supplied cannot be found.</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>hpi-person-id (CPN) supplied cannot be found.</td>
<td>EM02002</td>
<td>hpi-person-id (CPN) supplied cannot be found.</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>An enrolment for <1> already exists for this patient with the requested organisation</td>
<td>EM11003</td>
<td>An enrolment already exists for this patient with the requested organisation</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>An enrolment has already been recorded for this patient today</td>
<td>EM11006</td>
<td>An enrolment has already been recorded for this patient today</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>A patient must not have more than one active enrolment for a health service</td>
<td>EM11005</td>
<td>A patient must not have more than one active enrolment for a health service</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>This patient is older than three months, and cannot be pre-enrolled</td>
<td>EM11007</td>
<td>This patient is older than three months, and cannot be pre-enrolled</td>
<td><em>422 Unprocessable entity</em></td></tr>
</table>



