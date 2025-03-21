

### Create Entitlement Overview

This operation is used to create a patient's entitlement for subsidised healthcare.

This operation is used to create an entitlement for:
* Community services card holders (CSC)
* Pharmaceutical subsidy card holders (PSC)

#### Additional information

##### CSC

* The create CSC operation should be used when:
  * a CSC entitlement is not returned with a search of the entitlements service however a person presents with a CSC. In this scenario the NHI match service hasn't been able to match an NHI to a CSC provided by MSD. The create matches the NHI with the CSC information provided by MSD and creates the entitlement. Most CSC entitlements are automatically created when CSC details are recieved.
  * A CSC-dependent entitlement is not returned with a search of the entitlements service for a [dependent child of a community services card holder](https://www.tewhatuora.govt.nz/for-health-providers/claims-provider-payments-and-entitlements/community-services-card/). In this case the create operation is used to create and entitlement for the dependent child. The dependent childs CSC entitlement will have the same card number as the parent. The FHIR service uses the relationship attributre to denote a dependent card holder.

##### PSC

* The create PSC operation should be used when an individual or family unit is eligible to recieve a PSC and no PSC entitlement is returned with a search of the entitlements service.
* When creating a PSC the entitlements service will automatically generate a PSC number (identifier) for an individual or the first member of the family unit. For each subsequent member of the family unit, the PSC number (identifier) provided by the entitlement service should be included in the create operation. This will result in all members of the family have the same card number (Not they will all have their own entitlements and therefore have individual entitlement IDs (Coverage.id)).  


<div>
{% include create-entitlement.svg %}
</div>


**Create Entitlement processing steps:**

1. The user inputs details required to create the entitlement.
2. The integrating application sends a POST request to the NES *Coverage* endpoint with a payload containing the NesEntitlement resource to be created.
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The Entitlement is created in the database and an ID is assigned.
5. A newly created NesEntitlement, including its ID, is returned to the client


###  Create  Entitlement Request Examples 

[create CSC Entitlement request](createCSCExample.html)

[create PSC Entitlement request](createPSCExample.html)

### Create entitlement rules and errors

<h4>Create CSC (community services card) entitlement rules and errors</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption><a href="general.html#request-rules-and-errors">For Request rules and errors click here</a></caption>
<tr><th>Rule</th>
<th>Error code</th>
<th>Error description</th>
<th>Error text</th>
<th>Http code</th></tr>

<tr>
<td>A create CSC entitlement request must include:
<ul>
  <li>type of entitlement</li>
  <li>beneficiary (NHI number of the patient)</li>
  <li>identifier (the entitlement card number)</li>
  <li>contained Patient resource</li>
  <li>organisation approving the entitlement (payor)</li>
  <li>status</li> 
</ul>
</td>
<td>
 <ul>
  <li>EM07201</li>
 </ul>
</td>
<td>
 <ul>
  <li>Is a required field</li>
 </ul>
</td>
<td>
 <ul>
  <li>type is a required field</li>
  <li>beneficiary is a required field</li>
  <li>identifier is a required field</li>
  <li>contained patient is a required field</li>
  <li>payor is a required field</li>
  <li>status is a required field</li> 
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>The contained patient must match Entitlement beneficiary, be alive, and validate with the National Health Index</td>
<td>
 <ul>
  <li>EM02008</li>
  <li>EM99999</li>
  <li>EM99999</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient identity information supplied does not match the patient identity information in the NHI</li>
  <li>N/A</li>
  <li>N/A</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient identity information supplied does not match the patient identity information in the NHI.</li>
  <li>'If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource' 'If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource'</li>
  <li>Patient NHI is required</li>
 </ul>
</td>
<td>
 <ul>
  <li>422 Unprocessable Entity</li>
  <li>400 Bad request</li>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>A request to create an entitlement can be made against any valid NHI Identifier (live or dormant) for that patient.</td>
<td>
 <ul>
  <li>EM02002</li>
 </ul>
</td>
<td>
 <ul>
  <li>Cannot be found</li>
 </ul>
</td>
<td>
 <ul>
  <li>NHI number supplied cannot be found</li>
 </ul>
</td>
<td>
 <ul>
  <li>404 Not found</li>
 </ul>
 </td>
</tr>

<tr>
<td>A Create Patient entitlement request must include a valid CSC Card Number</td>
<td>
 <ul>
  <li>EM12006</li>
 </ul>
</td>
<td>
 <ul>
  <li>The CSC Card Number must be known to Te Whatu Ora</li>
 </ul>
</td>
<td>
 <ul>
  <li>The CSC Card Number must be known to MoH (Te Whatu Ora)</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>A Patient can only be linked to 1 active Entitlement type i.e. CSC or CSCDependent</td>
<td>
 <ul>
  <li>EM12001</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient cannot have both CSC and CSCDependent Entitlements active at the same time</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient cannot have both CSC and CSCDependent Entitlements active at the same time.</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>A Patient can have a maximum of one Active CSC Entitlement.</td>
<td>
 <ul>
  <li>EM12002</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient cannot have more than one active CSC Entitlement.</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient cannot have more than one active CSC Entitlement.</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>A CSC Entitlement can only be associated to one (non-dependent) Patient</td>
<td>
 <ul>
  <li>EM12003</li>
 </ul>
</td>
<td>
 <ul>
  <li>The CSC Entitlement is already assigned to another patient</li>
 </ul>
</td>
<td>
 <ul>
  <li>The CSC Entitlement is already assigned to another patient</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>A patient can have multiple CSC dependent entitlements</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
</tr>

<tr>
<td>A CSC Dependent entitlement can only be created for a person 18 or younger</td>
<td>
 <ul>
  <li>EM12016</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient is not a valid age to be a CSC Dependent.</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient is not a valid age to be a CSC Dependent.</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>PSC Payor must be set to Te Whatu Ora (Org ID - G0K357-H)</td>
<td>
 <ul>
  <li>EM12029</li>
 </ul>
</td>
<td>
 <ul>
  <li>Invalid Payor</li>
 </ul>
</td>
<td>
 <ul>
  <li>Invalid Payor</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>
</table>

<h4>Create PSC (pharmaceutical subsidy card) entitlement rules and errors</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption><a href="general.html#request-rules-and-errors">For Request rules and errors click here</a></caption>
<tr><th>Rule</th>
<th>Error code</th>
<th>Error description</th>
<th>Error text</th>
<th>Http code</th></tr>

<tr>
<td>A create PSC entitlement request must include:
<ul>
  <li>type of entitlement</li>
  <li>beneficiary (NHI number of the patient)</li>
  <li>contained Patient resource</li>
  <li>organisation approving the entitlement (payor)</li>
  <li>status</li>
  <li>start date (period start)</li> 
</ul>
</td>
<td>
 <ul>
  <li>EM07201</li>
 </ul>
</td>
<td>
 <ul>
  <li>Is a required field</li>
 </ul>
</td>
<td>
 <ul>
  <li>type is a required field</li>
  <li>beneficiary is a required field</li>
  <li>contained patient is a required field</li>
  <li>payor is a required field</li>
  <li>status is a required field</li> 
  <li>period start is a required field</li> 
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>A Create PSC Entitlement request may include the identifier (the entitlement card number).</td>
<td>
 <ul>
  <li>EM12006</li>
 </ul>
</td>
<td>
 <ul>
  <li>Card Number must be known to Te Whatu Ora</li>
 </ul>
</td>
<td>
 <ul>
  <li>The PSC Card Number must be known to Te Whatu Ora</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>
 
<tr>
<td>The contained patient must match Entitlement beneficiary, and validate with the National Health Index</td>
<td>
 <ul>
  <li>EM02008</li>
  <li>EM99999</li>
  <li>EM99999</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient identity information supplied does not match the patient identity information in the NHI.</li>
  <li>N/A</li>
  <li>N/A</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient identity information supplied does not match the patient identity information in the NHI.</li>
  <li>'If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource' 'If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource'</li>
  <li>Patient NHI is required</li>
 </ul>
</td>
<td>
 <ul>
  <li>422 Unprocessable Entity</li>
  <li>400 Bad request</li>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>Cannot create and entitlement for a deceased person</td>
<td>
 <ul>
  <li>EM12022</li>
 </ul>
</td>
<td>
 <ul>
  <li>Cannot create or update entitlement for deceased person</li>
 </ul>
</td>
<td>
 <ul>
  <li>Cannot create or update entitlement for deceased person</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>The PSC card number must be 1-16 numeric characters, with no leading zeros</td>
<td>
 <ul>
  <li>EM12023</li>
 </ul>
</td>
<td>
 <ul>
  <li>Invalid entitlement external id</li>
 </ul>
</td>
<td>
 <ul>
  <li>Invalid entitlement external id</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>A Patient can have a maximum of twelve active PSC Entitlements</td>
<td>
 <ul>
  <li>EM12002</li>
 </ul>
</td>
<td>
 <ul>
  <li>Active entitlement limit</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient cannot have more than twelve active PSC Entitlements</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>A request to create an entitlement can be made against any valid NHI Identifier (live or dormant) for that patient.</td>
<td>
 <ul>
  <li>EM02002</li>
 </ul>
</td>
<td>
 <ul>
  <li>Cannot be found</li>
 </ul>
</td>
<td>
 <ul>
  <li>NHI number supplied cannot be found.</li>
 </ul>
</td>
<td>
 <ul>
  <li>404 Not found</li>
 </ul>
 </td>
</tr>


<tr>
<td>A person can have multiple unique PSC entitlements (duplicates are not allowed)</td>
<td>
 <ul>
  <li>N/A</li>
 </ul>
</td>
<td>
 <ul>
  <li>N/A silent ignore</li>
 </ul>
</td>
<td>
 <ul>
  <li>N/A silent ignore</li>
 </ul>
</td>
<td>
 <ul>
  <li>N/A</li>
 </ul>
 </td>
</tr>

<tr>
<td>PSC start date must not be a future date</td>
<td>
   <ul>
    <li>EM07212</li>
   </ul>
</td>
<td>
 <ul>
  <li>Cannot be a future date</li>
 </ul>
</td>
<td>
 <ul>
  <li>Start date cannot be a future date</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
</td>
</tr>

<tr>
<td>PSC Payor must be set to Te Whatu Ora (Org ID - G0K357-H)</td>
<td>
 <ul>
  <li>EM12029</li>
 </ul>
</td>
<td>
 <ul>
  <li>Invalid Payor</li>
 </ul>
</td>
<td>
 <ul>
  <li>Invalid Payor</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>Coverage period date must be a full date</td>
<td>
 <ul>
  <li>EM12030</li>
 </ul>
</td>
<td>
 <ul>
  <li>Coverage period date must be a full date</li>
 </ul>
</td>
<td>
 <ul>
  <li>Coverage period date must be a full date</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>
</table>

