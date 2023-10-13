

### Create Entitlement for Patient
Records a patient's entitlement to some form of subsidised healthcare


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



