

### Create Entitlement Overview

This operation is used to create a patient's entitlement for subsidised healthcare.

This operation is used to create an entitlement for:
* Community services card (CSC)
* Pharmaceutical subsidy cards (PSC)

**Scenarios for use**
* CSC
  * A person presents with a community services card, however the card is not returned when searching for the patients entitlements (Note: Most CSC entitlements are automatically created when CSC details are recieved from work and income (Ministry of Social Development).
  * A dependent child of a community services card holder presents and a community services card is not returned when searching for the persons entitlements.

* PSC
  * A family unit is eligible to recieve a pharmaceutical subsidy card.

<div>
{% include create-entitlement.svg %}
</div>


**Create Entitlement processing steps:**

1. The user inputs details required to create the entitlement.
2. The integrating application sends a POST request to the NES *Coverage* endpoint with a payload containing the NesEntitlement resource to be created, excluding ids.
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The Entitlement is created in the database and an ID is assigned.
5. A newly created NesEntitlement, including its ID, is returned to the client


###  Create  Entitlement Request Example 

[create CSC Entitlement request](Coverage-entitlement-3.json.html)

[create PSC Entitlement request]

### Create entitlement rules and errors

<h4>Create community services card entitlement rules and errors</h4>
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
  <li></li>
  <li></li>
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
</table>

<h4>Create pharmaceutical subsidy cards entitlement rules and errors</h4>
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
  <li>identifier (the entitlement card number)</li>
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
  <li>identifier is a required field</li>
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
  <li></li>
  <li></li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient identity information supplied does not match the patient identity information in the NHI.</li>
  <li>'If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource' 'If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource'</li>
  <li>Patient NHI is required</li>
  <li></li>
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
  <li></li>
 </ul>
</td>
<td>
 <ul>
  <li></li>
 </ul>
</td>
<td>
 <ul>
  <li></li>
 </ul>
</td>
<td>
 <ul>
  <li></li>
 </ul>
 </td>
</tr>

<tr>
<td>PSC start date must not be a future date</td>
<td>EM07212</td>
<td>Cannot be a future date</td>
<td>Start date cannot be a future date</td>
<td>400 Bad request</td>
</tr>

<tr>
<td>PSC Payor must be set to Te Whatu Ora Org ID G0K357-H</td>
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

