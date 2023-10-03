

### Create Enrolmen for Patient
Enrols a patient with a health provider for the provision of a health service


<div>
{% include create-enrolment.svg %}
</div>



####  Enrolment Nomination Request processing steps:

1. A FHIR Client sends a POST  request  to the NES  *$EpisodeOfCare* endpoint with  a payload containing the NesEnrolment resoucre to bre created, excluding ids
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. The Enrolment is created tint he EEE database and an ID is assigned
4. A newly creatad  NESEnrolments, including its ID,  is returned to the client



####  Create  Enrolment Request Example 
[create-enrolment-request-message-1](Bundle-EN88776655.json.html)

#### Business  Rules



