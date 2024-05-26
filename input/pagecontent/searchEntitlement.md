
### Search Entitlements

#### Overview

This is typically used to return all entitlements for a person. <br />
The Entitlement service will return one Entitlement for each type. This will be the active entitlement if there is one, or the last end-dated entitlement.

<div>
{% include search-entitlement.svg %}
</div>

####  Get Entitlements for Patient  processing steps:

1. The user requests a a persons entitlements using an NHI number.
2. The integrating application sends a GET request  to the NES  *Coverage* endpoint with  the 'beneficiary' query parameter specifying the patient's NHI number.
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned.
4. The entitlements is retrieved from the database.
5. A bundle of NESEntitlements is returned to the client.

####  Search Entitlement Response Example 

For a search entitlement response example [click here](searchEntitlementResponse.html)

<h4>Search Entitlement Rules and Errors</h4>
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
<td>A search entitlement must include an NHI at minimum (Coverage.beneficiary)</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
</tr>
</table>

