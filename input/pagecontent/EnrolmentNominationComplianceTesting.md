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



<h4>Enrolment Nomination Errors</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption>Note: Some of these tests may not be able to be performed by the application or service. If so, please leave a comment in the test as to why it was not able to be demonstrated e.g. application cannot send message without NHI so error not required to be handled</caption>
<tr><th>Reference</th>
<th>Purpose</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>EnrolmentNomination-Error-1</td>
<td>application will manage the error when attempting to send an enrolment nomination message that does not have the Baby’s NHI number</td>
<td>Send a nomination request for:
 <ul> 
  <li>Baby  
   	 <ul>
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
    <li>Input:Input: enrolment nomination information can be provided</li>
    <li>Output:Output: Error 422 Unprocessable entity</li>
  </ol>
</td>
<td>mandatory</td></tr>

<tr><td>EnrolmentNomination-Error-2</td>
<td>application will manage the error when attempting to send an enrolment nomination with an NHI number that cannot be found</td>
<td>Send a nomination request for:
 <ul> 
  <li>Baby  
   	 <ul>
      	<li>NHI: ZKS3305</li>       
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
    <li>Input:Input: enrolment nomination information can be provided</li>
    <li>Output:Output: Error EM13001 'Baby's NHI not found'</li>
  </ol>
</td>
<td>mandatory</td></tr>

<tr><td>EnrolmentNomination-Error-3</td>
<td>application will manage the error when attempting to send an enrolment nomination message that does not have the Baby’s date of birth</td>
<td>Send a nomination request for:
 <ul> 
  <li>Baby  
   	 <ul>
      	<li>NHI: ZKS3307</li>       
      	<li>Gender: Female</li>
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
    <li>Input:Input: enrolment nomination information can be provided</li>
    <li>Output:Output: Error EM13009 The baby's date of birth is missing or invalid.</li>
  </ol>
</td>
<td>mandatory</td></tr>

<tr><td>EnrolmentNomination-Error-4</td>
<td>application will manage the error when attempting to send an enrolment nomination message that has a Baby’s date of birth as a future date</td>
<td>Send a nomination request for:
 <ul> 
  <li>Baby  
   	 <ul>
      	<li>NHI: ZKS3307</li>
      	<li>Gender: Female</li>
      	<li>DOB: 2025-10-11</li>
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
    <li>Output: Error EM13009 The baby's date of birth is missing or invalid.</li>
  </ol>
</td>
<td>mandatory</td></tr>




</table>
