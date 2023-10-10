
### Get Entitlement by ID 
This is used to get the details of a specific entitlement record.

<div>
{% include get-entitlement.svg %}
</div>



####  Get Entitlement processing steps:

1. A FHIR Client sends a GET request  to the NES  *$Coverage* endpoint with the enrolment id in the path
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. The entitlement is retrieved from the NES database
4. An  NESEntitlement is returned to the client



####  Search Entitlement Response Example 
[get entitlement response message 1 ]Coverage-EN667788899.json.html)
