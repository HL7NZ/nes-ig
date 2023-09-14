The following notes apply to all resources in this implementation.


### Onboarding 
See [NHI General Information](https://nhi-ig.hip.digital.health.nz/general.html)

### HTTP Header Details

* This is a list of any additions to standard HTTP header protocol

<h3>Request Headers</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> HTTP Header (Key) </th>
<th> HTTP Header (Value) </th>
<th> Description </th>
<th> Mandatory / Recommended / Optional </th></tr>

<tr><td> Authorization </td>
<td> Bearer {string} </td>
<td> The OAuth2 access token </td>
<td> Mandatory </td></tr>

<tr><td> userid </td>
<td> {string} </td>
<td> Client provided <br />
All requests for all resources must include an http header userid that uniquely identifies the individual initiating the request <br />
Preferably the hpi-person-id of the user would be provided if known, otherwise a userid that allows the authenticated organisation to identify the individual </td>
<td>Mandatory</td></tr>

<tr><td> X-Correlation-Id </td>
<td> {string} </td>
<td> Client provided <br />
All requests should contain a unique transaction id in the X-Correlation-Id field <br />
If present in the request this will be returned in the response, and can be used to track API calls <br />
Preferred less than 64 characters <br /> </td>
<td> Recommended </td></tr>

<tr><td> Content-Type </td>
<td> Application/json </td>
<td> Supported content type </td>
<td> Mandatory </td></tr>

<tr><td> x-api-key </td>
<td> {string} </td>
<td> Te Whatu Ora Provided – issued with client credentials </td>
<td> Mandatory </td></tr>
</table>

<h3>Response Headers</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Element name </th>
<th> Value </th>
<th> Description </th></tr>

<tr><td> X-Correlation-Id </td>
<td> {string} </td>
<td> Returned if provided </td></tr>

<tr><td> X-request-Id </td>
<td> {string} </td>
<td> Unique identifier for the request within the NHI </td></tr>

<tr><td> ETag </td>
<td> {string} </td>
<td> The resource version number, returned on a Get </td></tr>
</table>