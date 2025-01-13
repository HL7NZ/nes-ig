
### Get and Search Entitlement testing

<h4>NES GET Entitlement tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr>
<td>Entitlement-GET-1 <br /> CSC</td>
<td>application displays csc entitlement information correctly:
<ul>
  <li>Identifier (card number)</li>
  <li>Type</li>
  <li>NHI number</li>
  <li>Period</li>
</ul>
</td>
<td>20018179</td>
<td>Output: CSC entitlement information is displayed for the patient</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-GET-2 <br /> CSCDEP</td>
<td>application displays csc-dep entitlement information correctly:
<ul>
  <li>Identifier (card number)</li>
  <li>Type</li>
  <li>Relationship</li>
  <li>NHI number</li>
  <li>Period</li>
</ul>
</td>
<td>20018181</td>
<td>Output:
  <ul>
    <li>CSC entitlement information is displayed for the patient</li>
    <li>Clearly shows card as CSC dependent </li>
  </ul>
</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-GET-3 <br /> HUHC</td>
<td>application displays HUHC entitlement information correctly:
<ul>
  <li>Identifier (card number)</li>
  <li>Type</li>
  <li>NHI number</li>
  <li>Period</li>
</ul>
</td>
<td>305454455</td>
<td>Output: HUHC entitlement information is displayed for the patient</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-GET-4 <br /> PSC</td>
<td>application displays PSC entitlement information correctly:
<ul>
  <li>Identifier (card number)</li>
  <li>Type</li>
  <li>NHI number</li>
  <li>Period</li>
</ul>
</td>
<td>XXXXXX</td>
<td>Output: PSC entitlement information is displayed for the patient</td>
<td>Mandatory if applicable</td>
</tr>
</table>

<h4>NES Search Entitlement tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr>
<td>Entitlement-Search-1 <br /> CSC</td>
<td>application displays entitlement information correctly:
<ul>
  <li>Entitlement id</li>
  <li>Identifier (card number)</li>
  <li>Type</li>
  <li>NHI number</li>
  <li>Period</li>
</ul>
</td>
<td>ZKZ6088</td>
<td>Output: 
  <ul>
   <li>All entitlement information is displayed for the patient</li>
   <li> Patient should have an active CSC entitlement</li>
   <li>Expiry: 2025-11-02</li>
  </ul>
</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Search-2 <br /> CSC-Dep</td>
<td>application displays entitlement information correctly:
<ul>
  <li>Entitlement id</li>
  <li>Identifier (card number)</li>
  <li>Type</li>
  <li>NHI number</li>
  <li>Period</li>
</ul>
</td>
<td>ZKZ6096</td>
<td>Output: 
  <ul>
    <li>All entitlement information is displayed for the patient</li>
    <li>Patient should have an active CSC dependent entitlement</li>
    <li>Expiry: 2025-11-02</li>
  </ul>
</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Search-3 <br /> HUHC</td>
<td>application displays entitlement information correctly:
<ul>
  <li>Entitlement id</li>
  <li>Identifier (card number)</li>
  <li>Type</li>
  <li>NHI number</li>
  <li>Period</li>
</ul>
</td>
<td>ZGE7630</td>
<td>Output: 
  <ul>
    <li>All entitlement information is displayed for the patient</li>
    <li>Patient should have an active HUHC entitlement</li>
    <li>Expiry: 2024-12-30</li>    
  </ul>
</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Search-4 <br /> HUHC + CSC</td>
<td>application displays entitlement information correctly:
<ul>
  <li>Entitlement id</li>
  <li>Identifier (card number)</li>
  <li>Type</li>
  <li>NHI number</li>
  <li>Period</li>
</ul>
</td>
<td>ZJV2957</td>
<td>Output: 
  <ul>
    <li>All entitlement information is displayed for the patient</li>
    <li>Patient should have active CSC and HUHC entitlements</li>
    <li>Expiry: HUHC 2024-12-30</li>
    <li>Expiry: CSC 2025-11-02</li>
  </ul>
</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Search-5<br /> HUHC + CSC + PSC</td>
<td>application displays entitlement information correctly:
<ul>
  <li>Entitlement id</li>
  <li>Identifier (card number)</li>
  <li>Type</li>
  <li>NHI number</li>
  <li>Period</li>
</ul>
</td>
<td>ZJV2965</td>
<td>Output: 
  <ul>
    <li>All entitlement information is displayed for the patient</li>
    <li>Patient should have active CSC and HUHC and PSC entitlements</li>
    <li>Expiry: HUHC 2024-12-30</li>
    <li>Expiry: CSC 2025-11-02</li>
    <li>Expiry: PSC 2025-02-01</li>
  </ul>
</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Search-6<br /> PSC</td>
<td>application displays entitlement information correctly:
<ul>
  <li>Entitlement id</li>
  <li>Identifier (card number)</li>
  <li>Type</li>
  <li>NHI number</li>
  <li>Period</li>
</ul>
</td>
<td>ZLW0398</td>
<td>Output: 
  <ul>
    <li>All entitlement information is displayed for the patient</li>
    <li>Patient should have an active PSC entitlement</li>
    <li>Expiry: PSC 2025-02-01</li>
  </ul>
</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Search-7<br /> PSC</td>
<td>application displays entitlement information correctly:
<ul>
  <li>Entitlement id</li>
  <li>Identifier (card number)</li>
  <li>Type</li>
  <li>NHI number</li>
  <li>Period</li>
</ul>
</td>
<td>XXXXXXX</td>
<td>Output: 
  <ul>
    <li>All entitlement information is displayed for the patient</li>
    <li>Patient should have multiple active PSC entitlements</li>
    <li>All expire: PSC 2025-02-01</li>
  </ul>
</td>
<td>Mandatory if applicable</td>
</tr>
</table>


### CSC Create and Update Testing

<h4>NES Create CSC Entitlement tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr>
<td>Entitlement-Create-CSC-1</td>
<td>application can create a CSC entitlement when no CSC entitlement is returned from the entitlement service, however a person presents with a CSC card</td>
<td>Use NHI (greater than 18) as provided Use a CSC card number provided</td>
<td>Output: CSC entitlement is created and returned via the Entitlement service</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Create-CSC-2</td>
<td>application can create a CSC dependent entitlement when no CSC dependent entitlement is returned from the entitlement service, however a person presents as a dependent child of an adult with a CSC card</td>
<td>Use NHI (less than 18) as provided Use same CSC card number as Entitlement Create 1 </td>
<td>Output: CSC dependent entitlement is created and returned via the Entitlement service</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Create-CSC-error-1 <br /> Duplicate</td>
<td>application can display the correct error when attempting to create a CSC entitlement that already exists</td>
<td>Use NHI (less than 18) as provided Use same CSC card number as Entitlement-Create-1</td>
<td>Output: EM12002 - The patient cannot have more than one CSC Entitlement active at the same time</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Create-CSC-error-2 <br /> More than one type</td>
<td>application can display the correct error when attempting to create:
  <ul>
    <li> a CSC entitlement for a person with a CSC dependent entitlement </li>
    <li> a CSC dependent entitlement for a person with a CSC entitlement </li>
  </ul>
</td>
<td>
  <ul>
    <li>Try to create a 'CSC dependent entitlenment' for the NHI used in Entitlement-Create-1 </li>
    <li>Try to create a CSC entitlementfor the NHI used in Entitlement-Create-2 </li>
  </ul>
</td>
<td>Output: EM12001 - The patient cannot have both CSC and CSC Dependent Entitlements active at the same time</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Create-CSC-error-3 <br /> Invalid NHI</td>
<td>application can display the correct error when attempting to create a CSC entitlement for an invalid NHI</td>
<td>Use NHI ZZZ000 and a CSC number provided</td>
<td>Output: EM02002 - NHI number supplied cannot be found</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Create-CSC-error-4 <br /> Invalid NHI</td>
<td>application can display the correct error when attempting to create a CSC entitlement with a card number that is already is use</td>
<td>Use an NHI provided, Reuse card number from Entitlement-Create-1</td>
<td>Output: EM12003 - The CSC Entitlement is already assigned to another patient</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Create-CSC-error-5 <br /> Card does not exist</td>
<td>application can display the correct error when attempting to create a CSC entitlement with a card number that does not exist</td>
<td>Use an NHI provided and, CSC number: 0123</td>
<td>Output: EM12006 - The CSC Card Number must be known to MoH</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Create-CSC-error-6 <br /> Card not active</td>
<td>application can display the correct error when attempting to create a CSC entitlement with a card number that is not active</td>
<td>Use an NHI provided and CSC number 0000000349650267 </td>
<td>Output: EM12011 - CSC Card number is not Active</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Create-CSC-error-7 <br /> CSC dependent to old</td>
<td>application can display the correct error when attempting to create a CSC dep entitlement with a person who is older than 18.</td>
<td>Use an NHI provided, CSC number as provided</td>
<td>Output: Output: EM12016 - The patient is not a valid age to be a CSC Dependent </td>
<td>Mandatory if applicable</td>
</tr>
</table>

<h4>NES Update CSC Entitlement tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr>
<td>Entitlement-Update-CSC-1 <br /> Update CSC</td>
<td>application can update a CSC entitlement when the CSC entitlement returned from the entitlement service is different from that provided by a person presenting with a CSC card</td>
<td>Use NHI from Entitlement-Create-1, CSC card number as provided</td>
<td>Output: CSC entitlement is created and returned via the Entitlement service </td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Update-CSC-2 <br /> Update CSC dependent</td>
<td>application can update a CSC dep entitlement when the CSC dep entitlement returned from the entitlement service is different from that provided by a person presenting with a CSC card</td>
<td>Use NHI from Entitlement-Create-2, Same CSC card number as Entitlement-Update-1</td>
<td>Output: CSC dependent entitlement is created and returned via the Entitlement service</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Update-error-1 <br /> Duplicate</td>
<td>application can display the correct error when attempting to update a CSC entitlement with details that already exist</td>
<td>Try to update a CSC entitlement with the same details in Entitlement-Update-1 and Entitlement-Update-2 (Duplicate the above to force the error).</td>
<td>Output: EM12002 - The patient cannot have more than one CSC Entitlement active at the same time</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Update-error-2 <br /> Card already used</td>
<td>application can display the correct error when attempting to update a CSC entitlement with a card number that is already in used.</td>
<td>Use new NHI number and card number from Entitlement-Update-1</td>
<td>Output: EM12003 - The CSC Entitlement is already assigned to another patient</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Update-3 <br /> CSC End </td>
<td>application can update a CSC entitlement to end it when it has been created/updated in error.</td>
<td>Use NHI from Entitlement-Update-1</td>
<td>Output: CSC entitlement is ended with end reason 'entered in error'</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-Update-4 <br />CSC-dep End </td>
<td>application can update a CSC dep entitlement to end it when it has been created/updated in error.</td>
<td>Use NHI from Entitlement-Update-2</td>
<td>Output: CSC entitlement is ended with end reason 'entered in error'</td>
<td>Mandatory if applicable</td>
</tr>
</table>

### PSC Create and Update Testing

Note: This testing includes the NES Entitlement [Create](/createEntitlement.html) and [Update](/updateEntitlement.html) use cases and the Medication Dispense (PSC Count) API. For more information see the Search copayment count use case in the [Medical Warnings FHIR implementation guide](https://mws-ig.hip-uat.digital.health.nz/searchCoPaymentCount.html).

<h4>NES PSC Create, Update and PSC Count</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Scenario</th>
<th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr>
<td>Scenario-1</td>
<td>Individual – No action required</td>
<td>application can check the entitlements for an individual (not entitled) and, can then check the PSC count for the individual and display the count (less than 20).</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>No entitlements found</li>
    <li>Has not reached count</li>
    <li>No further action required</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-2</td>
<td>Individual – Needs PSC card</td>
<td>application can check the entitlement’s for an individual (not entitled) and can then check the PSC count for the individual and display the count (20).
Needs New PSC entitlement created</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>No entitlements found</li>
    <li>Has reached the correct count</li>
    <li>PSC entitlement created for the individual and entitlement information displayed in the PMS</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-3</td>
<td>Individual - Has a PSC entitlement</td>
<td>application can check the entitlement for an individual and display the entitlement information</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Entitlements displayed correctly</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-4</td>
<td>Family unit – No action required</td>
<td>application can check the entitlement’s for a family unit (not entitled) and can then check the PSC count for the family unit and display the count (less than 20)</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>No entitlements found</li>
    <li>Has not reached count</li>
    <li>No further action required</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-5</td>
<td>Family unit – Check family unit member entitlement (not entitled), check family unit count (eligible) create and extent entitlement to family unit member/s</td>
<td>application can check the entitlement’s for a family unit (not entitled), can then check the PSC count for the family unit and display the count (20), and
the create a new PSC entitlement for all members of the family unit</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>No entitlements</li>
    <li>Has reached count</li>
    <li>PSC entitlement created for each member of the family with the same PSC card number, and entitlement information displayed.</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-6</td>
<td>Individual – End entitlement</td>
<td>application can end an entitlement for an individual where it has been entered in error</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Entitlement removed and not returned from the entitlement service</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-7</td>
<td>Family Unit – End entitlement</td>
<td>application can end an entitlement for a family unit where it has been entered in error</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Entitlements for family unit removed and not returned from the entitlement service</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-8</td>
<td>Individual - Exceeds 12  concurrent entitlements</td>
<td>application can assign up to 12 PSC entitlements to a family unit member, where that person is part of multiple family units</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Individual has multiple PSC entitlements associated with their NHI</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-9</td>
<td>Individual - Exceeds 12 concurrent entitlements</td>
<td>application can display the correct error when attempting to add a PSC entitlement for a family unit member that has 12 entitlements</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Error returned: EM12002 - The patient cannot have more than twelve active PSC Entitlements</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-10</td>
<td>Family Unit - Search exceeds maximum number of NHIs</td>
<td>application can display the correct error when attempting to return a count for a family unit with greater that 20 members</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Error returned: EM7243 - Max of 20 NHIs may be provided</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-11</td>
<td>Individual - Create entitlement for deceased person</td>
<td>application can display the correct error when attempting to create a  a PSC entitlement for a deceased person</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Error returned: EM12022 - Cannot create or update entitlement for deceased person</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-12</td>
<td>Individual - Update entitlement for deceased person</td>
<td>application can display the correct error when attempting to create a  a PSC entitlement for a deceased person</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Error returned: EM12022 - Cannot create or update entitlement for deceased person</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-13</td>
<td>Individual - Create entitlement for a future start date</td>
<td>application can display the correct error when attempting to create a PSC entitlement for a future date (period start)</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Error returned: EM07212 - Start date cannot be a future date</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-14</td>
<td>Individual - Update entitlement for a future start date</td>
<td>application can display the correct error when attempting to update a PSC entitlement for a future date (period start)</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Error returned: EM07212 - Start date cannot be a future date</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-15</td>
<td>Family Unit - Extend (create) expired PSC entitlement  to additional family unit members</td>
<td>application can display the correct error when attempting to extend a PSC entitlement to family unit members with an expired entitlement number</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Error returned: EM12006 - The PSC Card Number must be known to Te Whatu Ora</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-16</td>
<td>Family Unit - Extend (create) PSC entitlement to additional family unit members</td>
<td>application can display the correct error when attempting to extend a PSC entitlement to family unit members with an unassigned entitlement number</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Error returned: EM12006 - The PSC Card Number must be known to Te Whatu Ora</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-17</td>
<td>Individual - Update expired PSC entitlement</td>
<td>application can display the correct error when attempting to update an expired PSC entitlement</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Error Returned: EM12028 - The requested entitlement is not active</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-18</td>
<td>Individual - Update entitlement number for an NHI</td>
<td>application can update and replace valid entitlement number registered to an NHI (assumes that the updated entitlement number is valid and active)</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Entitlement record is changed with updated entitlement card number</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-19</td>
<td>Individual - Update invalid entitlement for an NHI</td>
<td>application can display the correct error when attempting to update an entitlement number for an NHI with a value that is invalid (does not exist)</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Error Returned: EM12020 - entitlement-id supplied cannot be found</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-20</td>
<td>Individual - create entitlement, invalid NHI</td>
<td>application can display the correct error when attempting to create an entitlement number for an invalid NHI (does not exist)</td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>Error returned: EM02002 - NHI number supplied cannot be found</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-21</td>
<td>Individual - Create entitlement with invalid patient details</td>
<td>application can display the correct error when attempting to create an entitlement number for a valid NHI but with mismatched patient information e.g. DoB </td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>EM02008 -The patient identity information supplied does not match the patient identity information in the NHI.</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>

<tr>
<td>Scenario-22</td>
<td>Individual - Update entitlement with invalid patient details</td>
<td>application can display the correct error when attempting to update an entitlement number for a valid NHI but with mismatched patient information e.g. DoB </td>
<td>Use NHI TBC</td>
<td>Output: 
  <ul>
    <li>EM02008 -The patient identity information supplied does not match the patient identity information in the NHI.</li>
  </ul>
</td>
<td>Mandatory</td>
</tr>
</table>
