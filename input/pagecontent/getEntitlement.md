
### Get Entitlement by ID

#### Overview

The Get Entitlement operation allows an authorised user to retrieve an Entitlement record for a Patient using a known Entitlement record id.

<div>
{% include get-entitlement.svg %}
</div>


####  Get Entitlement processing steps:

1. The user requests a specific Entitlement to be looked up.
2. The integrating application sends a GET request  to the NES  *Coverage* endpoint with the Entitlement id in the path
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The entitlement is retrieved from the database
5. An  NESEntitlement is returned to the client


####  Get Entitlement Response Example 
[get entitlement response message 1 ](Coverage-EN667788899.json.html)


<h4>Get Entitlement Rules and Errors</h4>
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
<td>
 <ul>
  <li>Entitlement cannot be found</li>
  <li>Invalid entitlement-id</li>
 </ul>
</td>
<td>
 <ul>
  <li>404 Not found</li>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>
</table>
