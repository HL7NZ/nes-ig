
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
<td>Use NHI (>18) as provided Use a CSC card number provided</td>
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
<td>Use NHI (<18) as provided Use same CSC card number as Entitlement-Create-1/td>
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

h4>NES Update CSC Entitlement tests</h4>
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
