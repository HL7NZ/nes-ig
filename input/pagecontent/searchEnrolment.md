

### Get Enrolments for Patient

This is typically used to get all enrolments for a patient. It may optionally be further restricted to enrolments of a specific type and/or enrolments having a particular status


<div>
{% include get-enrolment.svg %}
</div>



####  Get Enrolment for Patient  processing steps:

1. A FHIR Client sends a GET request  to the NES  *EpisodeOfCare* endpoint with  the 'patient' query parameter specifying the patient's NHI number
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. Enrolments for  this NHI are retrieved from the NES database
4. A bundle of NESEnrolments is returned to the client



####  Search Enrolment Response Example 
[get-enrolment-response-message-1](Bundle-EN88776655.json.html)

#### Business  Rules
1.  An Enrolment search request must include a valid nhi-id


### Search Enrolments for Patient
This is typically used to find all enrolments for a patient filtered by type or status. 


<div>
{% include search-enrolment.svg %}
</div>



####  Search Enrolments for Patient filtered by type and status

1. A FHIR Client sends a GET request  to the NES  *$EpisodeOfCare* endpoint with  the 'patient' query parameter specifying the patient's NHI number, the type = "FLS" and the status = "active"
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. Active FLS Enrolments for  this NHI meeting the search criteria are retrieved from the NES database
4. A bundle of NESEnrolments is returned to the client





