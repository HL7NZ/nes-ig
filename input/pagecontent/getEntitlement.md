
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


#### 

[For Request rules and errors click here](/general.html#request-rules-and-errors)

<h4>Get Entitlement Rules and errors</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption><b>All test messages will be assessed against the security criteria in the table below</b></caption>
<tr><th>Rule</th>
<th>Error code</th>
<th>Error description</th>
<th>Error text</th>
<th>Http code</th></tr>

<tr>
<td>An Entitlement read request must include a valid Entitlement-id</td>
<td>
 <ul>
  <li>EM12020</li>
  <li>EM12021</li>
 </ul>
</td>
<td>
 <ul>
  <li>Entitlement cannot be found</li>
  <li>Invalid entitlement-id</li>
 </ul>
</td>
 <ul>
  <li>Entitlement cannot be found</li>
  <li>Invalid entitlement-id</li>
 </ul>
<td>
 <ul>
  <li>404 Not found</li>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>
</table>
