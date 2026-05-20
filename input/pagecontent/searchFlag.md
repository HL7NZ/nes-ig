

### Search NesFlags for Patient

This is  used to get all Nes Flags  for a patient


<div>
{% include search-flag.svg %}
</div>



####  Search Nes Flags for Patient  processing steps:

1. A FHIR Client sends a GET request  to the NES  *Flag* endpoint with  the 'subject' query parameter specifying the patient's NHI number
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. NES Flags for  this NHI are retrieved from the NES database
4. A bundle of NESFlags is returned to the client  - ALT: Empty bundle returned



####  Search Flags Response Example 
[search-flag-response-message-1](Bundle-FL101.json.html)

#### Business  Rules
1.  A Flag search request must include a valid nhi-id


<h3>Get and Search Flag for Patient Business Rules and Errors</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Business Rule </th>
<th> HTTP error </th>
<th> EM error </th>
<th> Codesystem displayname </th>
<th> Additional description </th>
</tr>

<tr><td> NHI number is a required search parameter </td>
<td> 400 Bad request </td>
<td>  </td>
<td> </td>
<td> </td></tr>

<tr><td> The subject parameter must be a valid nhi-id </td>
<td> 404 Not found </td>
<td> EM02002 </td>
<td> Cannot be found </td>
<td> The NHI is invalid or does not exist </td></tr>


</table>





