## Enrolment Nomination  Overview

An ‘Enrolment Nomination ’ interaction is initiated by a user who wishes to request that a health provider enrol a patient for a health service.
The request includes details of the patient, the Patient’s guardian and in some cases the provider.
At a later time, after the health provider has processed the request, they send a response back to the nominated endpoint indicating if the enrolment request has been accepted or declined.

### Enrolment Nomination Request


<div>
{% include enrolment-nomination-request.svg %}
</div>



####  Enrolment Nomination Request processing steps:

1. Whaihua creates a bundle containing Patient, RelatedPerson and MessageHeader resources and posts it to the NES  *$process-message* endpoint. 
2. NES validates and enriches the message with additional Patient details and posts it to the  HealthLink AIR Broker's *$process-message* endpoint. (EventType=FLS_ENROLMENT_NOMINATION)
3. The Messaging Hub transforms the message to an HL7v2.0  ADT^28 request and sends it to the PMS
4. The Messaging Hub returns a synchronous 202 response to NES



####  Enrolment Nomination Request Example - Whaihua to NES
Example of a "skinny" enrolment nomination request message sent by Whaihua to NES 
[enrolment-nomination-request-message-2](Bundle-54321.json.html)

####  Enrolment Nomination Request Example - NES to HealthLink AIR Broker
Example of an enriched enrolment nomination request message sent by  NES to the  HealthLink AIR broker
[enrolment-nomination-request-message-1](Bundle-11223344.json.html)


#### Resource Profile:

The FHIR enrolment nomination message will be created as a FHIR [Bundle](https://www.hl7.org/fhir/R4/bundle-definitions.html#Bundle) containing the below resources:

·        [NHI Patient](https://nhi-ig.hip.digital.health.nz/StructureDefinition-NhiPatient.html)

·        [HPI Practitioner](https://hpi-ig.hip-uat.digital.health.nz/StructureDefinition-HPIPractitioner.html)

·        [HL7 FHIR RelatedPerson](https://hl7.org/fhir/R4/valueset-relatedperson-relationshiptype.html)

·        [MessageHeader](http://hl7.org/fhir/R4/messageheader.html)


### Business Rules

#### Enrolment Nomination request rules

* An enrolment nomination request must include a
  * Baby NHI number
  * Baby date of birth
  * Baby gender
  * Nominated GP facility ID
  * At least 1 Next of kin family and last name
* A request may also include a
  * Baby name
  * Nominated GP name
  * Next of kin 1
    * NHI number, address and contact details (up to 3 contact details).
  * Next of kin2
    * NHI number, family and last name, relationship code, address and contact details (up to 3 contact details).

#### Baby’s NHI rule:

* Baby needs to have valid NHI
* Baby cannot be deceased
* Baby must not have PRE-ENROL/ENROL (un-expired) status in NES

#### Baby’s birthdate rule:

* A birth date must be after 1 January 1900 and not a future date

#### Baby’s gender rules:

* Baby must have a current gender, supplied as a valid gender code as per [FHIR codeset](http://hl7.org/fhir/R4/valueset-administrative-gender.html)

#### Next of Kin (NoK) rules:

* At least one NoK name (minimum of first and family name) needs to be provided
* The relationship code must be a valid code as per the [FHIR codeset](http://hl7.org/fhir/R4/valueset-relatedperson-relationshiptype.html)

#### Nominated Provider rules:

* Nominated provider must have a valid Legacy-ClinicID/Clinic ID in HPILocation


<h3>Enrolment Nomination request errors</h3>
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


<tr><td>Baby’s NHI is a required field</td>
<td>-</td>
<td>-</td>
<td><em>422 Unprocessable entity</em></td></tr>

<tr><td>Baby’s birthdate is a required field<br />
	Date of birth cannot be a future date</td>
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

#### Responses Codes

 One of the following asynchronous error response may be returned by the server 



| **Scenarios**           | **http status code** | **body**         | **description**                          |
| ----------------------- | -------------------- | ---------------- | ---------------------------------------- |
| Success                 | 202                  | empty            | The message has been accepted for  processing |
| Server Error            | 50x                  | empty            | An unexpected error occurred on the part of the server. The client may resend the message at a later time once the server is issue is resolved |
| Data  Error             | 400,422                  | OperationOutcome | If the server cannot process the message due to a data error, it should return a 400 error with an OperationOutcome in the body describing the error |
| Other processing errors | 4xx                  | empty            | Other 4xx errors may be returned by intermediary gateways (e.g. 401 Unauthorized). 429 Too many requests. These may not provide an OperationOutcome |

#### Example Error Response

[enrolment-nomination-response-message-1](OperationOutcome-enrolment-nomination-request-error-response-1.json.html)

### Enrolment Nomination Response
This is an asynchronous response message indicating  how  the destination PMS has acted on the nomination request message

<div>
{% include enrolment-nomination-response.svg %}
</div>


####  Enrolment Nomination Response processing steps:
1. The PMS sends an HL7v2.0  ADT^28 ACK message to the HealthLink AIR Broker indicating if the enrolment nomination request has been accepted or not
2. The Messaging Hub creates a bundle containing an OperationOutcome with an appropriate HL7 Result Code and sends it to the NES *$process-message* endpoint.
3. NES returns a synchronous 202 response to the Messaging Hub.

#### Responses Codes
The response codes which may be sent in response to an Enrolment Nomination Response are the same as those describer for  Enrolment Nomination Request 

[Responses Codes](enrolmentNomination.html#responses-codes) 



####  Enrolment Nomination Response -  Success Example
This is an example of an asynchronous response message returned from the PMS indicating that the the enrolment nomination request has been processed succesfully and accepted
[enrolment-nomination-response-message-1](Bundle-34567.json.html)


####  Enrolment Nomination Response -  Error Example
This is an example of an asynchronous response message returned from the PMS indicating there was an error processing the enrolment nomination request
[enrolment-nomination-response-message-2](Bundle-6789.json.html)



#### Enrolment Nomination Response Response- Error Example

This an example of an error response returned by NES if it  receives an invalid Enrolment Nomination Response message

[enrolment-nomination-response-response-error-message-1.](OperationOutcome-enrolment-nomination-response-error-response-1.json.html)



