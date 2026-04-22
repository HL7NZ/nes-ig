

### Search NesFlags for Patient

This is  used to get all Nes Flags  for a patient


<div>
{% include search-flag.svg %}
</div>



####  Search Nes Flags for Patient  processing steps:

1. A FHIR Client sends a GET request  to the NES  *Flag* endpoint with  the 'subject' query parameter specifying the patient's NHI number
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. NES Flags for  this NHI are retrieved from the NES database
4. A bundle of NESFlags is returned to the client



####  Search Flags Response Example 
[get-enrolment-response-message-1](Bundle-FL101.json.html)

#### Business  Rules
1.  An Flag search request must include a valid nhi-id





