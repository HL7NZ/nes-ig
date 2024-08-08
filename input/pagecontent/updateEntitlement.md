

### Update Entitlement Overview

This operation is used to update a patient's entitlement for subsidised healthcare. It is used when the entitlement reurned from the service is showing incorrect information, or if there is a need to end the entitlement.


Scenarios
* CSC
  * A person presents with a community services card, however the card returned from the Entitlements service is showing a different card number to the one presented.
  * A community services card entitlement needs to be ended, as it has been entered in error.

* PSC
  * The pharmaceutical subsidy card information returned from the Entitlements service is incorrect and needs updating.
  * The pharmaceutical subsidy card needs to be ended, as it has been entered in error.

<div>
{% include update-entitlement.svg %}
</div>


####  Update Entitlement processing steps:

1. The user inputs details required to update or end the entitlement.
2. The integrating application sends a PUT request to the NES *Coverage* endpoint with a payload containing the NesEntitlement resource to be updated.
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The Entitlement is updated in the database.
5. The updated Entitlement is returned to the client, or the Entitlement is ended.


####  Update  Entitlement Request Example 
[update CSC Entitlement example requests](updateCSCEntitlement.html)

[update PSC Entitlement example requests](updatePSCEntitlement.html)


### Update Entitlement Rules and Errors

<h4>Update community services card entitlement rules and errors</h4>
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
<td>An update CSC entitlement request must include::
<ul>
  <li>A valid Entitlement ID</li>
  <li>Entitlement type</li>
  <li>beneficiary (NHI number of the patient)</li>
  <li>identifier (the entitlement card number)</li>
  <li>contained Patient resource</li>
  <li>organisation approving the entitlement (payor)</li>
  <li>status</li>
  <li>Period end (if ending the entitlement)</li>
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
  <li>EntitlementID is a required field</li>
   li>Entitlement type is a required field</li>
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
<td>The contained patient must match Entitlement beneficiary and validate with the National Health Index</td>
<td>
 <ul>
  <li>EM02008</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient identity information supplied does not match the patient identity information in the NHI.</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient identity information supplied does not match the patient identity information in the NHI.</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>The NHI provided must match the NHI associated with the Entitlement.</td>
<td>
 <ul>
  <li>TBC</li>
 </ul>
</td>
<td>
 <ul>
  <li>The requested NHI is not consistent with the Entitlement.</li>
 </ul>
</td>
<td>
 <ul>
  <li>The requested NHI is not consistent with the Entitlement.</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>A request to update an entitlement can be made against any valid NHI Identifier (live or dormant) for that patient</td>
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
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>An update CSC entitlement request must include a valid CSC Card Number.</td>
<td>
 <ul>
  <li>EM12006</li>
 </ul>
</td>
<td>
 <ul>
  <li>The CSC Card Number must be known to MoH</li>
 </ul>
</td>
<td>
 <ul>
  <li>The CSC Card Number must be known to MoH</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>A Patient can only be linked to 1 active Entitlement type i.e. CSC or CSCDependent.</td>
<td>
 <ul>
  <li>EM12001</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient cannot have both CSC and CSCDependent Entitlements active at the same time.</li>
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
<td>A CSC Entitlement can only be associated to one (non-dependent) Patient.</td>
<td>
 <ul>
  <li>EM12003</li>
 </ul>
</td>
<td>
 <ul>
  <li>The CSC Entitlement is already assigned to another patient.</li>
 </ul>
</td>
<td>
 <ul>
  <li>The CSC Entitlement is already assigned to another patient.</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>A patient can have multiple CSC dependent entitlements.</td>
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
<td>A CSC Dependent entitlement can only be created for a person 18 or younger.</td>
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
<td>An update to end entitlement must match current entitlement and include end period and status ‘entered in error’</td>
<td>
 <ul>
  <li>EM12026</li>
  <li>EM12027</li>
 </ul>
</td>
<td>
 <ul>
  <li>Invalid termination reason (status)</li>
  <li>Update to end must match previous entitlement</li>
 </ul>
</td>
<td>
 <ul>
  <li>Invalid termination reason (status)</li>
  <li>Update to end must match previous entitlement</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>
</table>

<h4>Update pharmaceutical subsidy cards entitlement rules and errors</h4>
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
<td>An update Entitlement request must include::
<ul>
  <li>EntitlementID</li>
  <li>type of entitlement </li>
  <li>beneficiary (NHI number of the patient)</li>
  <li>identifier (the entitlement card number)</li>
  <li>contained Patient resource</li>
  <li>organisation approving the entitlement (payor)</li>
  <li>status</li>
  <li>period - start</li>
  <li>period end (if ending the entitlement)</li>
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
  <li>EntitlementID is a required field</li>
  <li>entitlement type is a required field</li>
  <li>contained Patient is required</li>
  <li>beneficiary is a required field</li>
  <li>identifier is a required field</li>
  <li>status is a required field</li>
  <li>payor is a required field</li>
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
<td>The contained patient must match Entitlement beneficiary and validate with the National Health Index</td>
<td>
 <ul>
  <li>EM02008</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient identity information supplied does not match the patient identity information in the NHI.</li>
 </ul>
</td>
<td>
 <ul>
  <li>The patient identity information supplied does not match the patient identity information in the NHI.</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>The NHI provided must match the NHI associated with the Entitlement.</td>
<td>
 <ul>
  <li>TBC</li>
 </ul>
</td>
<td>
 <ul>
  <li>The requested NHI is not consistent with the Entitlement.</li>
 </ul>
</td>
<td>
 <ul>
  <li>The requested NHI is not consistent with the Entitlement.</li>
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
<td>Cannot update entitlement for deceased person</td>
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
<td>A request to update an entitlement can be made against any valid NHI Identifier (live or dormant) for that patient</td>
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
  <li>400 Bad request</li>
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
  <li>Cannot be a future date</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>PSC end date must be greater than, or equal to start date, and not a future date</td>
<td>
 <ul>
  <li>EM12024</li>
  <li>EM12025</li>
 </ul>
</td>
<td>
 <ul>
  <li>End date cannot be before start date</li>
  <li>End date cannot be in the future</li>
 </ul>
</td>
<td>
 <ul>
  <li>End date cannot be before start date</li>
  <li>End date cannot be in the future</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td>An update to end entitlement must match current entitlement and include end period and status ‘entered in error’</td>
<td>
 <ul>
  <li>EM12026</li>
  <li>EM12027</li>
 </ul>
</td>
<td>
 <ul>
  <li>Invalid termination reason (status)</li>
  <li>Update to end must match previous entitlement</li>
 </ul>
</td>
<td>
 <ul>
  <li>Invalid termination reason (status)</li>
  <li>Update to end must match previous entitlement</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>
</table>

