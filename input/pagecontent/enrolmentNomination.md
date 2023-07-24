## Enrolment Nomination  Overview

An ‘Enrolment Nomination ’ interaction is initiated by a user who wishes to request that a health provider enrol a patient for a health service.
The request includes details of the patient, the provider,  and in some cases the Patient's next-of-kin.
At a later time , after the health provider has processed the request, they send a response back to the nominated endpoint indicating if the enrolment request has been accepted or declined.

### Enrolment Nomination Request


<div>
{% include enrolment-nomination-request.svg %}
</div>



####  Enrolment Nomination Request processing steps:

1. Whaihua creates a bundle containing Patient, RelatedPerson and MessageHeader resources and posts it to the NES  *$process-message* endpoint. 
2. NES validates and enriches the message with additional Patient details and posts it to the  HealthLink AIR Broker's *$process-message* endpoint. (EventType=FLS_ENROLMENT_NOMINATION)
3. The Messaging Hub transforms the message to an HL7v2.0  ADT^28 request and sends it to the PMS
4. The Messaging Hub returns a synchronous 20x response to NES



####  Enrolment Nomination Request Example - Whaihua to NES
Example of a "skinny" enrolment nomination request message sent by Whaihua to NES 
[enrolment-nomination-request-message-2](Bundle-54321.json.html)

####  Enrolment Nomination Request Example - NES to HealthLink AIR Broker
Example of an enriched enrolment nomination request message sent by  NES to the  HealthLink AIR broker
[enrolment-nomination-request-message-1](Bundle-11223344.json.html)

#### Responses Codes

One of the following asynchronous error response may be returned by the server 



| **Scenarios**         | **http status code** | **body**         | **description**                          |
| --------------------- | -------------------- | ---------------- | ---------------------------------------- |
| Success               | 202                  | empty            | The message has been accepted for  processing |
| Server Error          | 50x                  | empty            | An unexpected error occurred on the part of the server. The client may resend the message at a later time oocne the server is issue is resolved |
| Data  Error           | 40x                  | OperationOutcome | If the server cannot process the message due to a data error, it should return a 400 error with an OperationOutcome in the body describing the error |


#### Example Error Response

[enrolment-nomination-response-message-1](OperationOutcome-enrolment-nomination-request-error-response-1.json.html)

### Enrolment Nomination Response
This is an asynchronous response message indicating  how  the destination PMS has acted ion the nomination request message

<div>
{% include enrolment-nomination-response.svg %}
</div>


####  Enrolment Nomination Response processing steps:
1. The PMS sends an HL7v2.0  ADT^28 ACK message to the HealthLink AIR Broker indicating if the enrolment nomination request has been accepted or not
2. The Messaging Hub creates a bundle containing an OperationOutcome with an appropriateHL7  Result Code and sends it to the NES *$process-message* endpoint.
3. NES returns a synchronous 200 response to the Messaging Hub.

#### Responses Codes

One of the following a synchronous error response may be returned by the server 


| **Scenarios**         | **http status code** | **body**     | **description**                      |
| --------------------- | ---------------- | ---------------- | ---------------------------------------- |
| Success               | 200              | empty            | NES should returns a 200 response to indicate that the message has been successfully processed |
| Server Error          | 50x              | empty            | NES  should returns a 5xx response to indicate an unexpected error occurred on the part of the server. The client may resend the message at a later time once the server is issue is resolved |
| Data  Error  			| 400              | OperationOutcome | If NES cannot process the message due to a data error, it should return a 400 error with an OperationOutcome in the body describing the error ( see example below) |



####  Enrolment Nomination Response -  Success Example
This is an example of an asynchronous response message returned from the PMS indicating that the the enrolment nomination request has been processed succesfully and accepted
[enrolment-nomination-response-message-1](Bundle-34567.json.html)


####  Enrolment Nomination Response -  Error Example
This is an example of an asynchronous response message returned from the PMS indicating there was an error processing the enrolment nomination request
[enrolment-nomination-response-message-2](Bundle-6789.json.html)



#### Enrolment Nomination Response Response- Error Example

This an example of an error response returned by NES if it  receives an invalid Enrolment Nomination Response message

[enrolment-nomination-response-response-error-message-1.](OperationOutcome-enrolment-nomination-response-error-response-1.json.html)



