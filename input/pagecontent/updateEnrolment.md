

### Update Enrolment for Patient
Update an existing enrolment record.


<div>
{% include update-enrolment.svg %}
</div>



####  Update Enrolment processing steps:

1. A FHIR Client sends a PUT request  to the NES  *EpisodeOfCare* endpoint with the enrolment id in the path, and a payload containing the NesEnrolment resource to be updated
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. The Enrolment EEE database is replaced in the with the enrolment resource described in the update payload
4. The updated NESEnrolment is returned to the client



####  Update  Enrolment Request Example 
[upodate Enrolment request](EpisodeOfCare-EN12349876.json.html)

#### Business  Rules

Currently update may only be used to
-  add or modify the qualified encounter date, or
-  add a termination reason to an enrolment . This will result in the enrolment being ended.

