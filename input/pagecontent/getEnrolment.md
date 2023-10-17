

### Get Enrolment by ID
The Get Enrolmet operation allows an authorised user to retrieve an Enrolment record for a Patient using a known Enrolment record id.


<div>
{% includeget-enrolment-by-id.svg %}
</div>



####  Get Enrolment by ID processing steps:

1. The user supplies an enrolment-id to be looked up.
2. The integrating application sends an HTTP GET request for the Enrolment record using the enrolment-id. E.g. GET\<Endpoint>/EpisodeOfCare/[Enrolment-id]
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The Enrolment record is retrieved from the NES - ALT: Enrolment Record not found. Operation Outcome resource returned<br />
5. The response containing the Enrolment record is returned.



####  Get Enrolment Response Example 
TBC

#### Business  Rules
1.  A Get Enrolment request must include a valid Enrolment-id

