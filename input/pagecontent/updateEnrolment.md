

### Update Enrolment for Patient

The Operation is used to update an enrolment record - and is currently limited to _ending an enrolment_ for:
* FLS-NF enrolment (First Level Services not funded).
* WCTO enrolment nomination  (Well child Tamariki Ora services).
* LMC enrolment (Lead Maternity Carer).


<div>
{% include update-enrolment.svg %}
</div>

**Update Enrolment processing steps:**

1. A FHIR Client sends a PUT request  to the NES  *EpisodeOfCare* endpoint with the enrolment id in the path, and a payload containing the NesEnrolment resource to be updated
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. The Enrolment EEE database is replaced in the with the enrolment resource described in the update payload
4. The updated NESEnrolment is returned to the client



####  Update  Enrolment Request Example

[update to end enrolment request](updateEnrolmentRequestExample.html)


<h3> Update enrolment rules and errors</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption><a href="general.html#request-rules-and-errors">For Request rules and errors click here</a> <br /> Updates to enrolments are currently limited to ending the enrolment only. Update enrolment details is future scope.</caption>
<tr><th>Rule</th>
<th>Error code</th>
<th>Error description</th>
<th>Error text</th>
<th>Http code</th></tr>

<tr>
<td>An update enrolment request must contain:
<ul>
  <li>An enrolment id (active)</li>
  <li>Contained PractitonerRole resource (Facility, Organisation and Pracitioner if present)</li>
  <li>Contained Patient resource</li>
  <li>Health service code (type)</li>
  <li>Enrolment status</li>
  <li>Enrolment-owner-org</li>
  <li>End Period and Termination reason code (if ending the enrolment) 
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
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>

<tr>
<td> An enrolment can only be updated by creating Organisation</td>
<td>
 <ul>
  <li>EM01203</li>
 </ul>
</td>
<td>
 <ul>
  <li>An enrolment can only be updated by a user representing the authorised organisation for the enrolment</li>
 </ul>
</td>
<td>
 <ul>
  <li>An enrolment can only be updated by a user representing the authorised organisation for the enrolment</li>
 </ul>
</td>
<td>
 <ul>
  <li>400 Bad request</li>
 </ul>
 </td>
</tr>
</table>

