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
<td>Entitlement-GET-1</td>
<td>application displays csc entitlement information correctly:
<ul>
  <li>Identifier (card number)</li>
  <li>Type</li>
  <li>NHI number</li>
  <li>Period</li>
</ul>
</td>
<td>20013649</td>
<td>Output: CSC entitlement information is displayed for the patient</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-GET-2</td>
<td>application displays csc-dep entitlement information correctly:
<ul>
  <li>Identifier (card number)</li>
  <li>Type</li>
  <li>Relationship</li>
  <li>NHI number</li>
  <li>Period</li>
</ul>
</td>
<td>20014527</td>
<td>Output:
  <ul>
    <li>CSC entitlement information is displayed for the patient</li>
    <li>Clerly shows card as CSC dependent </li>
  </ul>
</td>
<td>Mandatory if applicable</td>
</tr>

<tr>
<td>Entitlement-GET-3</td>
<td>application displays HUHC entitlement information correctly:
<ul>
  <li>Identifier (card number)</li>
  <li>Type</li>
  <li>NHI number</li>
  <li>Period</li>
</ul>
</td>
<td>20012377</td>
<td>Output: HUHC entitlement information is displayed for the patient</td>
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
    <li>Expiry: 2024-03-20</li>    
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
</table>
