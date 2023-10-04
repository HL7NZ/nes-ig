

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

1.     Tester details  
  a. Organisation Name  
  b. Application name and version  
  c. NES IG Version  
  d. Test Script version  
  e. FHIR release version  
  f. Testing start date and time and end date and time  
  g. Tester name and contact details  
  h. Interactions included in your integration which will be the Enrolment Nomination Request

2.     For each test supply screen shots of the user interface for:

o   the input data as entered in the integrating application (“the application”)

o   the output:

§  any error messages presented by the application

§  the confirmation or result of the request presented by the application

o   **Note**: If non-interactive, please provide JSON request (add)

3.     For each test supply a timestamp when each request is sent.

### Compliance Tests

**Mandatory vs Optional tests**

Not all tests below will be appropriate for every application.

If there are tests below that do not apply please discuss this with the integration team and where appropriate write a description in the compliance tests why the test does not apply.

#### Security and Audit Assessment


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



#### General tests


** These tests apply to all integrations **

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none' data-table-width=760
 data-layout=default data-local-id=2323943e-6418-441c-8d99-e61cee990668>
 <colgroup><col style="width: 94.0px;"><col style="width: 190.0px;"><col style="width: 173.0px;"><col style="width: 161.0px;"><col style="width: 142.0px;"></colgroup>
 <tr>
  <td style='border:solid windowtext 1.0pt;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p align=center style='text-align:center'><strong>Reference</strong></p>
  </td>
  <td style='border:solid windowtext 1.0pt;border-left:none;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p align=center style='text-align:center'><strong>Purpose – Demonstrate that
  the</strong></p>
  </td>
  <td style='border:solid windowtext 1.0pt;border-left:none;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p align=center style='text-align:center'><strong>Input values</strong></p>
  </td>
  <td style='border:solid windowtext 1.0pt;border-left:none;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p align=center style='text-align:center'><strong>Expected outcome</strong></p>
  </td>
  <td style='border:solid windowtext 1.0pt;border-left:none;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p align=center style='text-align:center'><strong>Mandatory / Optional /
  Recommended</strong></p>
  </td>
 </tr>
 <tr style='page-break-inside:avoid'>
  <td style='border:solid windowtext 1.0pt;border-top:none;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p>General-1</p>
  </td>
  <td style='border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p>Application can handle an HTTP<span style='color:#FF5630'> 429</span> <span
  style='color:#FF5630'>(or any 40x error?)</span> error in a graceful way</p>
  </td>
  <td style='border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p>The application reaches its usage plan limit and is returned an HTTP 429
  error. </p>
  </td>
  <td style='border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p>The application will retry several times with an exponentially increasing
  delay</p>
  </td>
  <td style='border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p>Recommended</p>
  </td>
 </tr>
</table>


#### Enrolment Nomination Request

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none' data-table-width=960
 data-layout=wide data-local-id=9b3b6ba9-0801-440b-a1b8-35bee31e7917>
 <colgroup><col style="width: 156.0px;"><col style="width: 234.0px;"><col style="width: 207.0px;"><col style="width: 246.0px;"><col style="width: 117.0px;"></colgroup>
 <tr>
  <td style='border:solid windowtext 1.0pt;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p align=center style='text-align:center'><strong>Reference</strong></p>
  </td>
  <td style='border:solid windowtext 1.0pt;border-left:none;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p align=center style='text-align:center'><strong>Purpose – Demonstrate that
  the</strong></p>
  </td>
  <td style='border:solid windowtext 1.0pt;border-left:none;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p align=center style='text-align:center'><strong>Input values</strong></p>
  </td>
  <td style='border:solid windowtext 1.0pt;border-left:none;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p align=center style='text-align:center'><strong>Expected outcome</strong></p>
  </td>
  <td style='border:solid windowtext 1.0pt;border-left:none;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p align=center style='text-align:center'><strong>Mandatory</strong></p>
  </td>
 </tr>
 <tr style='page-break-inside:avoid'>
  <td style='border:solid windowtext 1.0pt;border-top:none;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p>EnrolmentNominationRequest-1</p>
  </td>
  <td style='border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p>Application can create an enrolment nomination request with the minimum
  set of nomination information</p>
  </td>
  <td style='border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p>Send a nomination request with a fictitious identity:</p>
  <p style='margin-left:36.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:Symbol'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span>Baby </p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>NHI Number</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Gender</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Date of Birth</p>
  <p style='margin-left:36.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:Symbol'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span>GP </p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Facility ID</p>
  <p style='margin-left:36.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:Symbol'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span>PG1 </p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Relationship Code</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>First and Family name</p>
  </td>
  <td style='border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p style='margin-left:36.0pt;text-indent:-18.0pt'>1.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;
  </span>Input: Minimum set of nomination information can be provided</p>
  <p style='margin-left:36.0pt;text-indent:-18.0pt'>2.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;
  </span>Output: Nomination request can be successfully posted to the NES <em>$process-message</em>
  endpoint</p>
  <p style='margin-left:36.0pt;text-indent:-18.0pt'>3.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;
  </span>Get a success response of 200()</p>
  </td>
  <td style='border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p>mandatory</p>
  </td>
 </tr>
 <tr style='page-break-inside:avoid'>
  <td style='border:solid windowtext 1.0pt;border-top:none;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p>EnrolmentNominationRequest-2</p>
  </td>
  <td style='border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p>Application can create an enrolment nomination request with all possible
  nomination information</p>
  </td>
  <td style='border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p>Send a nomination request with a fictitious identity:</p>
  <p style='margin-left:36.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:Symbol'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span>Baby </p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>NHI Number</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Name</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Gender</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Date of Birth</p>
  <p style='margin-left:36.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:Symbol'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span>GP </p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Name</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Facility ID</p>
  <p style='margin-left:36.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:Symbol'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span>PG1 </p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Relationship Code</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>First and Family name</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>NHI Number</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Contact Number</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Work number </p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Email</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Address</p>
  <p style='margin-left:36.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:Symbol'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span></span>PG2</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Relationship Code</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>First and Family name</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>NHI Number</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Contact Number</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Work number </p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Email</p>
  <p style='margin-left:72.0pt;text-indent:-18.0pt'><span style='font-size:
  10.0pt;font-family:"Courier New"'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
  </span></span>Address</p>
  </td>
  <td style='border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p style='margin-left:36.0pt;text-indent:-18.0pt'>1.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;
  </span>Input: All possible nomination information can be provided</p>
  <p style='margin-left:36.0pt;text-indent:-18.0pt'>2.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;
  </span>Output: Nomination request can be successfully posted to the NES <em>$process-message</em>
  endpoint</p>
  </td>
  <td style='border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:3.75pt 3.75pt 3.75pt 3.75pt'>
  <p>mandatory</p>
  </td>
 </tr>
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

#### 1.1.1 Baby’s NHI rule:

·        Baby needs to have valid NHI

·        Baby cannot be deceased

·        Baby must not have PRE-ENROL/ENROL (un-expired) status in NES

#### 1.2.1 Baby’s birthdate rule:

·        A birth date must be after 1 January 1900 and not a future date

#### 1.3.1 Baby’s gender rules:

·        Baby must have a current gender, supplied as a valid gender code as per [FHIR codeset](http://hl7.org/fhir/R4/valueset-administrative-gender.html)

#### 1.4.1 Next of Kin (NoK) rules:

·        At least one NoK name (minimum of first and family name) needs to be provided

·        The relationship code must be a valid code as per the [FHIR codeset](http://hl7.org/fhir/R4/valueset-relatedperson-relationshiptype.html)

#### 1.5.1 Nominated Provider rules:

·        Nominated provider must have a valid Legacy-ClinicID/Clinic ID in HPILocation

Enrolment Nomination request errors
-----------------------------------

**Error Scenario**

**Error Code**

**Error Message**

**FHIR Error response code**

Baby’s NHI is a required field

\-

\-

**422 Unprocessable entity**

{ 

    "resourceType": "OperationOutcome", 

    "issue": \[ 

        { 

            "severity": "error", 

            "code": "processing", 

            "diagnostics": "Invalid Resource id", 

            "location": \[ 

                "Bundle.entry\[1\].resource.ofType(Patient).id", 

                "Line 53, Col 26" 

            \] 

        }, 

        { 

            "severity": "error", 

            "code": "processing", 

            "diagnostics": "@value cannot be empty", 

            "location": \[ 

                "Bundle.entry\[1\].resource.ofType(Patient).id", 

                "Line 53, Col 26" 

            \] 

        }, 

        { 

            "severity": "error", 

            "code": "processing", 

            "diagnostics": "ele-1: 'All FHIR elements must have a @value or children' Rule 'All FHIR elements must have a @value or children' Failed", 

            "location": \[ 

                "Bundle.entry\[1\].resource.ofType(Patient).id", 

                "Line 53, Col 26" 

            \] 

        }, 

        { 

            "severity": "error", 

            "code": "processing", 

            "diagnostics": "ele-1: 'All FHIR elements must have a @value or children' Rule 'All FHIR elements must have a @value or children' Failed", 

            "location": \[ 

                "Bundle.entry\[1\].resource.ofType(Patient).identifier\[0\].value", 

                "Line 64, Col 22" 

            \] 

        }

Baby’s birthdate is a required field

EM13009

The baby's date of birth is missing or invalid.

\-

Date of birth cannot be a future date

\-

Baby’s gender is a required field

EM13008

The baby's gender is missing or invalid.

\-

Nominated GP facility ID is a required field

EM13004

No nominated clinic has been provided.

\-

At least 1 Next of kin name is a required field

EM13010

No next of kin details provided

\-

Invalid code for valueset for baby’s gender

\-

\-

**422 Unprocessable entity**

{

    "resourceType": "OperationOutcome",

    "issue": \[

        {

            "severity": "error",

            "code": "processing",

            "diagnostics": "The value provided ('mixed') is not in the value set http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1 ([http://hl7.org/fhir/ValueSet/administrative-gender](http://hl7.org/fhir/ValueSet/administrative-gender)), and a code is required from this value set) (error message = Unknown code 'mixed' for in-memory expansion of ValueSet '[http://hl7.org/fhir/ValueSet/administrative-gender](http://hl7.org/fhir/ValueSet/administrative-gender)')",

            "location": \[            "Bundle.entry\[1\].resource.ofType(Patient).gender",

                "Line 81, Col 35"

            \]

        }

    \]

}

Missing resource in FHIR input bundle

\-

\-

**422 Unprocessable entity**

{

    "resourceType": "OperationOutcome",

    "issue": \[

        {

            "severity": "error",

            "code": "processing",

            "diagnostics": "Missing RelatedPerson in input bundle"

        }

    \]

}

Relationship code mismatch

\-

\-

**422 Unprocessable entity**

{

    "resourceType": "OperationOutcome",

    "issue": \[

        {

            "severity": "information",

            "code": "processing",

            "diagnostics": "None of the codings provided are in the value set [http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype](http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype) ([http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype](http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype)), and a coding is recommended to come from this value set) (codes = [http://terminology.hl7.org/CodeSystem/v3-RoleCode#NTH](http://terminology.hl7.org/CodeSystem/v3-RoleCode#NTH))",

            "location": \[

                "Bundle.entry\[2\].resource.ofType(RelatedPerson).relationship\[0\]",

                "Line 101, Col 22"

            \]

        },

        {

            "severity": "error",

            "code": "processing",

            "diagnostics": "Unknown code '[http://terminology.hl7.org/CodeSystem/v3-RoleCode#NTH](http://terminology.hl7.org/CodeSystem/v3-RoleCode#NTH)' for '[http://terminology.hl7.org/CodeSystem/v3-RoleCode#NTH](http://terminology.hl7.org/CodeSystem/v3-RoleCode#NTH)'",

            "location": \[

                "Bundle.entry\[2\].resource.ofType(RelatedPerson).relationship\[0\].coding\[0\]",

                "Line 103, Col 30"

            \]

        }

    \]

}

The NHI of the baby cannot be found in the NHI database

EM13001

Baby's NHI not found

\-

The baby already has an active unexpired pre-enrolment/full-enrolment in the NES

EM13002

The baby is already enrolled or pre-enrolled in NES.

\-

The baby is deceased, and NHI has record of death

EM13003

The baby has been marked as deceased in NHI.

\-

The nomination request that came through contains a GP's facility ID that cannot be found in HPILocation

EM13005

The nominated clinic provided cannot be found in HPI.

\-

The gender of the baby supplied by Whaihua does not match against what is recorded in the NHI database

EM13006

The provided gender does not match the NHI record for the baby.

\-

The date of birth of the baby supplied by Whaihua does not match against what is recorded in the NHI database

EM13007

The provided date of birth does not match the NHI record for the baby.

\-