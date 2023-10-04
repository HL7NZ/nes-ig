

NES IG Onboarding And Compliance Testing
========================================

### Who can apply for access?

#### To the test environment:

All health providers listed in [Schedule 2 of the Health Information Privacy Code](https://privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/) and software vendors will be given access to all the NES api operations in the HIP Compliance environment for testing and training after completing the on-boarding process described below.

#### To the production environment:

Access to **NES api** interactions is available to all health providers listed in [Schedule 2 of the Health Information Privacy Code](https://privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/) and who require enrolment information as part or their delivery of health services

### On-boarding and Implementation

1.    To get started, complete the [online onboarding request form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/67). You will need to provide information about your organisation and the API you will integrate with.

2.    Once your onboarding request has been approved, you will be provided with the information to start integration. The integration team will be in touch if further information is required.

      o   	You will receive your credentials in an email and a sms message to the details provided in the onboarding form.

      o   You will also receive the access token url, provided scopes, and the UAT endpoint.

3.    Complete your development and testing.

4.    Submit the results of the compliance tests by email to the [integration team](mailto:integration@health.govt.nz).

5.    The integration team team will issue a compliance test report. Your application will receive certification to be used in production or additional requirements will need to be met.

6.    Each organisation using your application with Newborn Enrolment Services (NBES) or ‘enrolment’ service must apply individually for access to the production environment by completing the production form, please email [integration@health.govt.nz](mailto:integration@health.govt.nz).

7.    Access available only to Whaihua and HealthLink. If you are interested in this business function please contact [integration@health.govt.nz](mailto:integration@health.govt.nz)

Please allow at least 5 working days for these applications to be processed and production credentials issued. If your product is to be used by many different organisations please get in touch to discuss your rollout plans and how we might assist.

If you require help or have any questions regarding the onboarding process, please contact our team by completing a [General enquiry form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36).

### Business Functions

See below for available business functions.  
By using Te Whatu Ora APIs you are accessing personally identifiable information from the NES which is not directly from the individual concerned. You need to consider your obligations under HIPC principle 2, and we may request to see your privacy impact assessment prior to access to production.

**Business Functions**

| Business Functions   | Description                              | Comments                                 |
| -------------------- | ---------------------------------------- | ---------------------------------------- |
| Enrolment Nomination | Create an Enrolment nomination (Whaihua only at this stage)<br /> Respond to an Enrolment nomination request (HealthLink only at this stage | A FHIR bundle enrolment nomination request is passed to the nomination service<br />A FHIR response bundle is passed from HealthLink to the nomination service<br /><br />See [Enrolment Nomination usecase](https://master.d1wcqdkm82x5bt.amplifyapp.com/enrolmentNomination.html) |



### Compliance testing

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
<td>The application reaches its usage plan limit and is returned an HTTP 429 error.
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

### Resource Profile:

The FHIR enrolment nomination message will be created as a FHIR [Bundle](https://www.hl7.org/fhir/R4/bundle-definitions.html#Bundle) containing the below resources:

·        [NHI Patient](https://nhi-ig.hip.digital.health.nz/StructureDefinition-NhiPatient.html)

·        [HPI Practitioner](https://hpi-ig.hip-uat.digital.health.nz/StructureDefinition-HPIPractitioner.html)

·        [HL7 FHIR RelatedPerson](https://hl7.org/fhir/R4/valueset-relatedperson-relationshiptype.html)

·        [MessageHeader](http://hl7.org/fhir/R4/messageheader.html)

### Enrolment Nomination request rules

·        An enrolment nomination request must include a

o   Baby NHI number

o   Baby date of birth

o   Baby gender

o   Nominated GP facility ID

o   At least 1 Next of kin family and last name

·        A request may also include a

o   Baby name

o   Nominated GP name

o   Next of kin1 NHI number, address and contact details (up to 3 contact details)

o   Next of kin2 NHI number, family and last name, relationship code, address and contact details (up to 3 contact details)

#### Baby’s NHI rule:

·        Baby needs to have valid NHI

·        Baby cannot be deceased

·        Baby must not have PRE-ENROL/ENROL (un-expired) status in NES

#### Baby’s birthdate rule:

·        A birth date must be after 1 January 1900 and not a future date

#### Baby’s gender rules:

·        Baby must have a current gender, supplied as a valid gender code as per [FHIR codeset](http://hl7.org/fhir/R4/valueset-administrative-gender.html)

#### Next of Kin (NoK) rules:

·        At least one NoK name (minimum of first and family name) needs to be provided

·        The relationship code must be a valid code as per the [FHIR codeset](http://hl7.org/fhir/R4/valueset-relatedperson-relationshiptype.html)

#### Nominated Provider rules:

· 		Nominated provider must have a valid Legacy-ClinicID/Clinic ID in HPILocation

<h4>Enrolment Nomination request errors</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Error Scenario</th>
<th>Error Code</th>
<th>Error Message</th>
<th>HTTP Status code</th></tr>


<tr><td>Baby’s NHI is a required field/td>
<td>-</td>
<td>-</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>
	<ul>
		<li>Baby’s birthdate is a required field</li>
		<li>Date of birth cannot be a future date</li>
	</u1></td>
<td>EM13009</td>
<td>The baby's date of birth is missing or invalid</td>
<td>-</td>
</tr>


<tr><td>Baby’s gender is a required field</td>
<td>EM13008</td>
<td>The baby's gender is missing or invalid</td>
<td>-</td></tr>

<tr><td>Nominated GP facility ID is a required field</td>
<td>EM13004</td>
<td>No nominated clinic has been provided</td>
<td>-</td></tr>

<tr><td>At least 1 Next of kin name is a required field</td>
<td>EM13010</td>
<td>No next of kin details provided</td>
<td>-</td></tr>

<tr><td>Invalid code for valueset for baby’s gender</td>
<td>-</td>
<td>-</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>Missing resource in FHIR input bundle</td>
<td>-</td>
<td>-</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>Relationship code mismatch</td>
<td>-</td>
<td>-</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>The NHI of the baby cannot be found in the NHI database</td>
<td>EM13001</td>
<td>Baby's NHI not found</td>
<td>-</td></tr>

<tr><td>The baby already has an active unexpired pre-enrolment/full-enrolment in the NES</td>
<td>EM13002</td>
<td>The baby is already enrolled or pre-enrolled in NES</td>
<td>-</td></tr>

<tr><td>The baby is deceased, and NHI has record of death</td>
<td>EM13003</td>
<td>The baby has been marked as deceased in NHI</td>
<td>-</td></tr>

<tr><td>The nomination request that came through contains a GP's facility ID that cannot be found in HPILocation</td>
<td>EM13005</td>
<td>The nominated clinic provided cannot be found in HPI</td>
<td>-</td></tr>

<tr><td>The gender of the baby supplied by Whaihua does not match against what is recorded in the NHI database</td>
<td>EM13006</td>
<td>The provided gender does not match the NHI record for the baby</td>
<td>-</td></tr>

<tr><td>The date of birth of the baby supplied by Whaihua does not match against what is recorded in the NHI database</td>
<td>EM13007</td>
<td>The provided date of birth does not match the NHI record for the baby</td>
<td>-</td></tr>
</table>

