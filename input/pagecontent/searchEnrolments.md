

### Search Enrolments for Patient
This is typically used to find all enrolments for a patient filtered by type or status. 


<div>
{% include get-enrolment.svg %}
</div>



####  Enrolment Nomination Request processing steps:

1. A FHIR Client sends a GET request  to the NES  *$EpisodeOfCare* endpoint with  the 'patient' query paramter specifying the aptient's NHI number
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. Enrolments for  this NHI are retrieved from the NES database
4. A bundle of NESEnrolments is returned to the client



####  Get Enrolment Response Example 
[get-enrolment-response-message-1](Bundle-EN88776655.json.html)

#### Business  Rules
1.  An Enrolment search request must include a valid nhi-id


#Questions

2. do we need to define summary fields to be included in search result


