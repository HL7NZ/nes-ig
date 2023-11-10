<h4>Enrolment Nomination Request</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>EnrolmentNominationRequest-1</td>
<td>application can create an enrolment nomination request with the minimum set of enrolment nomination information</td>
<td>Send a nomination request for:
 <ul> 
  <li>Baby  
   	 <ul>
      	<li>NHI: ZKS3307</li>
      	<li>Gender: Female</li>
      	<li>DOB: 2023-10-11</li>
    </ul>
  </li>
  <li>GP
  	 <ul>
     	<li>Facility ID: FZZ932-C</li>
    </ul>
  </li>
   <li>PG1
  	 <ul>
     	<li>Relationship Code: MTH</li>
        <ul>
          <li>Given name: Priya</li>
          <li>Family name: Testing NBES One</li>
        </ul>
     </ul>
   </li>
  </ul>
</td>
<td>
  <ol type="1">
    <li>Input:Minimum set of nomination information can be provided</li>
    <li>Output: Nomination request can be successfully posted to the NES $process-message endpoint</li>
     <li>Get a success response of 200()</li>
  </ol>
</td>
<td>mandatory</td></tr>

<tr><td>EnrolmentNominationRequest-2</td>
<td>application can create an enrolment nomination request with all possible nomination information</td>
<td>Send a nomination request for:
  <ul> 
  <li>Baby  
   	 <ul>
      	<li>NHI ZKS3340</li>
        <li>Name
          <ul>
            <li>Given name: Baby of Trentham</li>
            <li>Family name: Testing NBES Four</li>
          </ul>
        </li>
      	<li>Gender: unknown</li>
      	<li>DOB: 2023-10-08</li>
    </ul>
  </li>
  <li>GP
  	 <ul>
     	<li>Facility ID: FZZ932-C</li>
     	<li>Facility name: Facility for Private Hospital</li>
    </ul>
   </li>
   <li>PG1
  	 <ul>
     	<li>Relationship Code: MTH</li>
        <li>Given name: Maria</li>
        <li>Family name: Murtle</li>
        <li>NHI Number: ZKU8202</li>
      	<li>Contact Number: 1234567</li>
      	<li>Work number: 121234567</li>
      	<li>Email: NBES@NBES.com</li> 
      	<li>Address: 31 King Street, Ebdentown, Upper Hutt, 5018</li> 
    </ul>
   </li>
</ul>
</td>
<td>
  <ol type="1">
     <li>Input: All possible nomination information can be provided</li>
     <li>Output: Nomination request can be successfully posted to the NES $process-message endpoint</li>
   </ol>
</td>
<td>mandatory</td></tr>


</table>
