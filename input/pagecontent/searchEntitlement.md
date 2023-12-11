
### Search Entitlement

#### Overview

This is typically used to get all entitlements for a patient.

<div>
{% include search-entitlement.svg %}
</div>

####  Get Entitlements for Patient  processing steps:

1. A FHIR Client sends a GET request  to the NES  *Coverage* endpoint with  the 'beneficiary' query parameter specifying the patient's NHI number
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. All active entitlements for this Patint are retrieved from the NES database
4. A bundle of NESEntitlements is returned to the client

####  Search Entitlement Response Example 

For a search entitlement response example [click here](searchEntitlementResponse.html)

#### Search Entitlement Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Search Entitlement rules**
  * An Entitlement search request must include a valid nhi-id

* _Get Entitlement errors_
  * Note: An empty bundle will be returned if the NHI is incorrect

