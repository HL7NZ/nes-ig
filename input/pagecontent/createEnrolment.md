

### Create Enrolment for Patient
Enrols a patient with a health provider for the provision of a health service


<div>
{% include create-enrolment.svg %}
</div>



####  Create Enrolment processing steps:

1. A FHIR Client sends a POST  request  to the NES  *EpisodeOfCare* endpoint with  a payload containing the NesEnrolment resource to be created, excluding ids
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. The Enrolment is created in the EEE database and an ID is assigned
4. A newly created  NESEnrolment, including its ID,  is returned to the client



####  Create Enrolment Request Example 
[create Enrolment request](EpisodeOfCare-enrolment-2.json.html)

#### Business  Rules



