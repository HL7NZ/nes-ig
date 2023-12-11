
### Get Entitlement by ID

#### Overview

The Get Entitlement operation allows an authorised user to retrieve an Entitlement record for a Patient using a known Entitlement record id.

<div>
{% include get-entitlement.svg %}
</div>


####  Get Entitlement processing steps:

1. A FHIR Client sends a GET request  to the NES  *Coverage* endpoint with the enrolment id in the path
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. The entitlement is retrieved from the NES database
4. An  NESEntitlement is returned to the client



####  Get Entitlement Response Example 
[get entitlement response message 1 ](Coverage-EN667788899.json.html)


#### Get Entitlement Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Get Entitlement rules**
  * An Entitlement read request must include a valid Entitlement-id

* _Get Entitlement errors_
  * _"Invalid entitlement-id" (HTTP 404 Not found, Error, Processing)_
  * _"ID provided must be numeric" (HTTP 400 bad request, Error, Processing)_
