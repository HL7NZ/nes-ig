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
<td>Application can create an enrolment nomination request with the minimum set of nomination information</td>
<td>Send a nomination request with a fictitious identity:
 <ul> 
  <li>Baby  
   	 <ul>
      	<li>NHI: ZKS3307</li>
      	<li>Gender: Female</li>
      	<li>DOB: 2023-10-11</li>
    </ul>
  </li>
  <li>gp
  	 <ul>
     	<li>Facility ID: FZZ932-C</li>
    </ul>
   </li>
   <li>PG1
  	 <ul>
     	<li>Relationship Code: MTH</li>
        <ul>
          <li>First name: Priya</li>
          <li>Family name: Testing NBES One</li>
        </ul>
     </ul>
   </li>
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
<td>Application can create an enrolment nomination request with all possible nomination information</td>
<td>Send a nomination request with a fictitious identity:
  <ul> 
  <li>Baby  
   	 <ul>
      	<li>NHI Number</li>
        <li>Name</li>
      	<li>Gender</li>
      	<li>Date of Birth</li>
    </ul>
  </li>
  <li>gp
  	 <ul>
     	<li>Name</li>
     	<li>Facility</li>
    </ul>
   </li>
   <li>PG1
  	 <ul>
     	<li>Relationship Code</li>
        <li>First and Family name</li>
        <li>NHI Number</li>
      	<li>Contact Number</li>
      	<li>Work number </li>
      	<li>Email</li> 
      	<li>Address</li> 
    </ul>
   </li>

</ul>
</td>
<td>
  <ol type="1">
     <li>Input: All possible nomination  information can be provided</li>
     <li>Output: Nomination request can be successfully posted to the NES $process-message endpoint</li>
   </ol>
</td>
<td>mandatory</td></tr>
</table>
