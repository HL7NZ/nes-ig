

### Create Entitlement for Patient

This operation is documented here for future scope and is *not currently available*. If you are interested in this operation please contact our team by completing the [General Enquiry form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36).

This operation records a patient's entitlement to some form of subsidised healthcare.


<div>
{% include create-entitlement.svg %}
</div>



####  Create Entitlement processing steps:

1. A FHIR Client sends a POST request to the NES *Coverage* endpoint with a payload containing the NesEntitlement resource to be created, excluding ids
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. The Entitlement is created in the EEE database and an ID is assigned
4. A newly created NesEntitlement, including its ID, is returned to the client



####  Create  Entitlement Request Example 
[create CSC Entitlement request](Coverage-entitlement-3.json.html)

#### Business  Rules



