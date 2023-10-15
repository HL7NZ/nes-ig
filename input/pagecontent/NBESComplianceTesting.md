

### Newborn Enrolment Nomination Compliance testing

Provide the following details in a test report and email to [integration@health.govt.nz](mailto:integration@health.govt.nz).

1. Tester details <br />
   a. Organisation Name <br />
   b. Application name and version <br />
   c. NES IG Version <br />
   d. Test Script version <br />
   e. FHIR release version<br />
   f. Testing start date and time and end date and time <br />
   g. Tester name and contact details <br />
   h. Interactions included in your integration which will be the Enrolment Nomination Request

2. For each test supply screen shots of the user interface for:
    * the input data as entered in the integrating application (“the application”)
    * the output:
      * any error messages presented by the application
      * the confirmation or result of the request presented by the application
    * For update operations the state of the record pre-request should be included. 
    * **Note**: If non-interactive, please provide JSON request (add)

3. For each test supply a timestamp when each request is sent.

### Compliance Tests

**Mandatory vs Optional tests**

Not all tests below will be appropriate for every application.

If there are tests below that do not apply please discuss this with the integration team and where appropriate write a description in the compliance tests why the test does not apply.


<h4>Security and Audit Assessment</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption><b>All test messages will be assessed against the security criteria in the table below</b></caption>
<tr><th>Reference</th>
<th>Purpose</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>Security 1</td>
<td>Credentials match those issued to the testing organisation <br /> and their orgID and appID are auditing correctly</td>
<td>Checked against all tests</td>
<td>Te Whatu Ora will check internal logs</td>
<td>Mandatory</td></tr>

<tr><td>Security 2</td>
<td>Sending user ID is an end user ID or an hpi-person-id (CPN)</td>
<td>Checked against all tests</td>
<td>Te Whatu Ora will check internal logs</td>
<td>Mandatory</td></tr>

<tr><td>Security 3</td>
<td>Sending user ID changes when different end users are initiating the request (Please make sure a seperate user creates a request)</td>
<td>Checked against all tests</td>
<td>Te Whatu Ora will check internal logs</td>
<td>Mandatory</td></tr>

<tr><td> Security 4 </td>
<td>Each request has a unique request id in the X-Correlation-Id field  If present this will be returned in the response | Checked against all tests |</td>
<td>Checked against all tests</td>
<td>Te Whatu Ora will check internal logs</td>
<td>Mandatory</td></tr>

</table>


<h4>General tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption><b>These tests apply to all integrations</b></caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory / Optional / Recommended</th></tr>

<tr><td>General-1</td>
<td>Application can handle an HTTP 429 error in a graceful way</td>
<td>The application reaches its usage plan limit and is returned an HTTP 429 error.</a></td>
<td>The application will retry several times with an exponentially increasing delay</td>
<td>Recommended</td></tr>

</table>

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
      	<li>NHI Number</li>
      	<li>Gender</li>
      	<li>Date of Birth</li>
    </ul>
  </li>
  <li>gp
  	 <ul>
     	<li>Facility</li>
    </ul>
   </li>
   <li>PG1
  	 <ul>
     	<li>Relationship Code</li>
        <li>First and Family name</li>
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
