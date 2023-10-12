

### Update Enrolment for Patient
Enrols a patient with a health provider for the provision of a health service


<div>
{% include create-enrolment.svg %}
</div>



####  Create Enrolment processing steps:

1. A FHIR Client sends a PUT request  to the NES  *EpisodeOfCare* endpoint with the enrolment id in the path, and a payload containing the NesEnrolment resource to be updated
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. The Enrolment is replaced in the EEE database with the enrolment resource described in the update payload
4. The update NESEnrolment is returned to the client



####  Update  Enrolment Request Example 
[upodate Enrolment request](EpisodeOfCare-EN12349876.json)

#### Business  Rules

Currently update may only be used 
-  or add or modify the qualified encounter date, or
-  add a termination reason to an enrolment . This will result in the enrolment being ended.

