<html>
<body>

<header>
  <h3>Name</h3>
</header>

NES Entitlements FHIR API

<div>

<header>
  <h3> Brief Description</h3>
</header>

The purpose of the NES Entitlements service is to store and disseminate details relating to a patient’s entitlements. At the current time two such entitlements are recorded – the High User Health Card (HUHC) and the Community Services Card (CSC).

Community Services Card (CSC) applications are assessed by Work and Income on behalf of Health New Zealand.
The Community Services Card can reduce the cost of healthcare, prescriptions, emergency dental care among other benefits.

The card can also be used for dependent children aged under 18 years.

<a href="https://www.tewhatuora.govt.nz/our-health-system/claims-provider-payments-and-entitlements/community-services-card/" target="_blank">please go here:</a>

High User Health Card’s (HUHC) are provided to a person who has visited a health practitioner at the general practice they are enrolled in 12 or more times in one year, with the consultations being related to a particular condition or condition(s) which are ongoing. This card is not means tested.
The general practice will have a record of visits, and the doctor will need to make the application on the patient’s behalf for a HUHC. The card lasts for one year, after which time a new application can be made (if appropriate).

<a href="https://www.tewhatuora.govt.nz/our-health-system/claims-provider-payments-and-entitlements/high-use-health-card/" target="_blank">please go here:</a>

</div>

<div>

<header>
  <h3> Overview</h3>
</header>

This is a FHIR API made up of two resources:
<ul>
  <li> NESEntitlements, derived from the HL7 FHIR coverage resource.</li>
  <li> NESPatient, derived from the HL7 FHIR patien resource.</li>
</ul>.

</div>


<div>

<header>
  <h4> Accessible Data</h4>
</header>

The NES Entitlement service holds the following information:

<ul>
  <li>NHI number</li>
  <li>Card number</li>
  <li>Card status</li>
  <li>Entitlement type</li>
  <li>Period of Entitlement</li>
  <li>Card relationship (CSC only used to depict dependent entitlements)</li>
</ul>

The patient’s general practice and their phone and email contact details are not held in the NHI but are retrieved from the National Enrolment Service 
and NES Patient Preferences Service respectively, and returned along with the NHI details if the user has the correct permissions.

</div>

<h3>Business functions & risk scores</h3>
<div>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Name</th>
<th>Function</th>
<th>Description</th>
<th>Clinical Risk Score</th>
<th>Privacy Risk Score</th>
<th>Security Risk Score</th>
<th>Identity Risk Score</th></tr>
<tr><td>Health Entitlements Read</td>
<td>Get a Patient Entitlement using an Entitlement id <br /> Search for a Patient Entitlement’s using an NHI number</td>
<td>Using a known Entitlement id, a GET Request is sent to the NES Entitlement service, the request is validated and returns the associated Entitlement record. <br /> Using a Patients NHI number, a GET request is sent to the NES Entitlement service, the request is validated and a Patient’s entitlements are returned.</td>
<td>LOW</td>
<td>HIGH</td>
<td>HIGH</td>
<td>Level 3</td>
</tr>
</table>
</div>

<div>
<header>
  <h3>Who can use this API</h3>
</header>

Health providers listed in Schedule 2 of the Health Information Privacy Code may access the information in the NHI.

This includes: 
<ul>
  <li>Accident Compensation Corporation (ACC)</li>
  <li> Department of Corrections Health Services</li>
  <li>Te Whatu Ora — Health New Zealand</li>
  <li>Health Practitioners</li>
  <li>Hospitals</li>
  <li>Independent Practitioner Associations</li>
  <li>MedicAlert Foundation — New Zealand Incorporated</li>
  <li>Manatū Hauora — Ministry of Health</li>
  <li>New Zealand Blood and Organ Service</li>
  <li>New Zealand Defense Force Health Services</li>
  <li>Pharmaceutical Management Agency of New Zealand</li>
  <li>Primary Health Organisations (PHOs)</li>
  <li>Maori Health Authority</li>
  <li>Ministry for Disabled People</li>
  <li>Any health agency that has a contract or is funded by the above list to provide health or disability services.</li>
</ul>

Te Whatu Ora — Health New Zealand assigns appropriate permissions and monitors and audits the actions of health provider use of the NHI.

</div>

<div>

<header>
  <h3>Use Cases</h3>
</header>

The below lists a few example outcomes that can be achieved when using the NES Entitlements API.

<ul>
  <li>System to System</li>
    <ul>
      <li>Lookup the NES Entitlement service for information on a specific Entitlement.</li>
      <li>Lookup / Search the NES Entitlement service for a Patient’s entitlements.</li>
    </ul>
  <li>Patient (Consumer Facing Application Authentication)</li>
    <ul>
      <li>A person can access their NES Entitlement information.</li>
    </ul>
</ul>

</div>


<div>
  
<header>
  <h3>API Type</h3>
</header>

REST API <br />
All REST API endpoints adhere to Fast Healthcare Interoperable Resources (FHIR) interoperability standards.

</div>

<div>

<header>
  <h3>Service Levels</h3>
</header>

Target 99.99% service availability 24x7.

</div>

<div>

<header>
  <h3>Restrictions</h3>
</header>

<header>
  <h4>GEO Restriction</h4>
</header>

GEO Restriction rules prevent access from clients with IPs located in countries other than those listed below:

<ul>
  <li>New Zealand</li>
  <li>Australia</li>
  <li>Canada</li>
  <li>Cook Islands</li>
</ul>

</div>

<div>

<header>
  <h4>API Keys and Usage Plans</h4>
</header>

API key's should be treated as confidential information and not shared with other parties

An api-key associates the client with a usage plan, which sets upper limits on the API request volume which is permitted. If a client exceeds their usage plan allocation an http error will be returned

Clients will need to add their api key to the x-api-key header in each API request. If no API key is included in the request header, a “Forbidden” error will be returned

<h5>Usage Plans</h5>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Plan </th>
<th> Rate </th>
<th> Burst </th>
<th> Quota </th></tr>
<tr><td> bronze </td>
<td> 1 request per second </td>
<td> 5 </td>
<td> 10,000 requests per day </td></tr>
<tr><td> silver </td>
<td> 5 requests per second </td>
<td> 25 </td>
<td> 250,000 requests per day </td></tr>
<tr><td> gold </td>
<td> 10 requests per second </td>
<td> 50 </td>
<td> 500,000 requests per day </td></tr>
</table>
</div>

<div>

All test accounts will be assigned to the bronze usage plan. If a Vendor wishes to be assigned to a higher plan, they should contact the Integration team via the <a href="https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36" target="_blank">General Enquiry form</a>. Please request a change to the usage plan and make sure you include the ClientID at minimum (AppId and Orgid also recommended).

Production accounts will be assigned to the silver usage plan. If an Organisation wishes to be assigned to the gold usage plan, they should contact the Te Whatu Ora
<a href="mailto:NHI_Access@health.govt.nz"_blank">NHI access team</a>

If an application reaches its usage plan limit an HTTP 429 error will be returned. The expected behaviour is that the application will retry several times with an exponentially increasing delay

</div>

</body>
</html>
