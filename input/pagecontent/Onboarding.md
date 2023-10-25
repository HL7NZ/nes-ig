

### Enrolment and Entitlement Onboarding

#### Who can apply for access?

##### To the test environment:

Health professionals, agencies governed by the Health Information Privacy Code (HIPC) and their software vendors will be given access to the National Enrolment Service (NES) in the Health Identity Platform (HIP) Compliance environment for testing and training after completing the on-boarding process described below.

##### To the production environment:

Access to the NES is available to Health professionals and agencies governed by the Health Information Privacy Code (HIPC).

Each organisation and user that has access to the NES accepts their obligations under the Privacy Act 1993 and the Health Information Privacy Code 1994 to only access information about patients they are treating and are authorised to do so.  NES information may also be accessed when assessing a patient’s eligibility for specific programmes, such as bowel and breast screening.

#### On-boarding and Implementation

1. To get started, complete the [online onboarding request form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/67). You will need to provide information about your organisation and the API you want to integrate with.
2. Once your onboarding request has been approved, you will be provided with the information to start your integration. The integration team will be in touch if further information is required.
  * You will receive your credentials in an email and a sms message to the details provided in the onboarding form.
  * You will also receive the access token url, provided scopes, and the UAT endpoint.
3. Complete your development and testing.
4. Submit the results of the compliance tests by email to the [integration team](mailto:integration@health.govt.nz).
5. The integration team will issue a compliance test report. Your application will receive certification to be used in production or additional requirements will need to be met.
6. Access will only be given to the Te Whatu Ora Whaihua platform users, the Te Whatu Ora Enrolment nomination subscriber and HealthLink in the initial implementation (Q4, 2023). If you are interested in this business function please contact [integration@health.govt.nz](mailto:integration@health.govt.nz).

Please allow at least 5 working days for these applications to be processed and production credentials issued. If your product is to be used by many different organisations please get in touch to discuss your rollout plans and how we might assist.

If you require help or have any questions regarding the onboarding process, please contact our team by completing a [General enquiry form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36).

#### Business Functions

See below for available business functions.  
By using Te Whatu Ora APIs you are accessing personally identifiable information from the NES which is not directly from the individual concerned. You need to consider your obligations under HIPC principle 2, and we may request to see your privacy impact assessment prior to access to production.

<h5>Business Functions</h5>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Business Functions</th>
<th>Description</th>
<th>Comments</th></tr>

<tr>
<td>FLS Read</td>
<td>To allow access to get an FLS or FLS-NF enrolment by enrolment-id, or to get persons FLS or FLS-NF enrolment using NHI and other search parameters</td>
<td><a href="getEnrolment.html">See Get Enrolment use case</a> <br />
<a href="searchEnrolment.html">See Search Enrolment use case</a> </td>
</tr>

<tr>
<td>FLS Maintain</td>
<td>Create and Update for FLS and FLS-NF enrolments</td>
<td><a href="createEnrolment.html">See create Enrolment use case</a> <br />
<a href="updateEnrolment.html">See update Enrolment use case</a></td>
</tr>

<tr>
<td>LMC Read</td>
<td>To allow access to get an LMC enrolment by enrolment-id, or to get persons LMC enrolment using NHI and other search parameters</td>
<td><a href="getEnrolment.html">See Get Enrolment use case</a> <br />
<a href="searchEnrolment.html">See Search Enrolment use case</a> </td>
</tr>

<tr>
<td>LMC Maintain</td>
<td>Create and Update for LMC enrolments</td>
<td><a href="createEnrolment.html">See create Enrolment use case</a> <br />
<a href="updateEnrolment.html">See update Enrolment use case</a></td>
</tr>

<tr>
<td>WCTO Read</td>
<td>To allow access to get a WCTO enrolment by enrolment-id, or to get persons WCTO enrolments using NHI and other search parameters</td>
<td><a href="updateEnrolment.html">See update Enrolment use case</a></td>
</tr>

<tr>
<td>WCTO Maintain</td>
<td>Create and Update for WCTO enrolments</td>
<td>To allow access to get a WCTO enrolment by enrolment-id, or to get persons WCTO enrolments using NHI and other search parameters</td>
<td><a href="updateEnrolment.html">See update Enrolment use case</a></td>
</tr>

<tr>
<td>Entitlement Read</td>
<td>Get a Patients Entitlement using identifier, or <br /> Get a Patient's Entitlement using NHI, with optional search parameters status and type</td>
<td><a href="getEntitlement.html">See get Entitlement use case</a> <br />
<a href="searchEntitlement.html">See search Entitlement use case</a></td>
</tr>

<tr>
<td>Create Entitlement</td>
<td>Create a Patiet Entitlement</td>
<td><a href="createEntitlement.html">See create Entitlement use case</a></td>
</tr>
</table>




### New Born Enrolment Service

#### Who can apply for access?

##### To the test environment:

Maternity and related service providers and their software vendors will be given access to the Newborn Enrolment Service (NBES) in the Health Identity Platform (HIP) Compliance environment for testing and training after completing the on-boarding process described below.

##### To the production environment:

Access to the NBES is available to Maternity and related service providers who require the ability to send newborn enrolment nominations.

#### On-boarding and Implementation

1.    To get started, complete the [online onboarding request form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/67). You will need to provide information about your organisation and the API you want to integrate with.
2.    Once your onboarding request has been approved, you will be provided with the information to start your integration. The integration team will be in touch if further information is required.
  * You will receive your credentials in an email and a sms message to the details provided in the onboarding form.
  * You will also receive the access token url, provided scopes, and the UAT endpoint.
3. Complete your development and testing.
4. Submit the results of the compliance tests by email to the [integration team](mailto:integration@health.govt.nz).
5. The integration team will issue a compliance test report. Your application will receive certification to be used in production or additional requirements will need to be met.
6. Access will only be given to the Te Whatu Ora Whaihua platform users, the Te Whatu Ora Enrolment nomination subscriber and HealthLink in the initial implementation (Q4, 2023). If you are interested in this business function please contact [integration@health.govt.nz](mailto:integration@health.govt.nz).

Please allow at least 5 working days for these applications to be processed and production credentials issued. If your product is to be used by many different organisations please get in touch to discuss your rollout plans and how we might assist.

If you require help or have any questions regarding the onboarding process, please contact our team by completing a [General enquiry form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36).

#### Business Functions

See below for available business functions.  
By using Te Whatu Ora APIs you are accessing personally identifiable information from the NES which is not directly from the individual concerned. You need to consider your obligations under HIPC principle 2, and we may request to see your privacy impact assessment prior to access to production.

<h5>Business Functions</h5>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Business Functions</th>
<th>Description</th>
<th>Comments</th></tr>

<tr>
<td>Enrolment Nomination</td>
<td>
  <ul>
    <li>The ability to send a newborn enrolment nomination message (Te Whatu Ora Whaihua platform users and  Te Whatu Ora Enrolment nomination subscriber only). </li>
    <li>The ability to respond to an enrolment nomination message (HealthLink only).</li>
  </ul>
</td>
<td><a href="enrolmentNomination.html">See Enrolment Nomination use case</a></td>
</tr>
</table>
