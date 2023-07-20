
## Immunisation Update Message Overview

An ‘Immunisation Update Message ’ interaction is initiated by a user who wishes to notify uinterested parteis that an immunisation has occured
The request includes details of the patient who recieved the immunisation, the immunisation itself,  and the PMS  systems to which the message should be sent
At a later time , after the health provider has processed the request, they send a response back to the nominated endpoint indicating if the immunisation request has been accepted or declined.

### Immunisation Update Message Request



<div>
{% include enrolment-nomination-request.svg %}
</div>



####  Immunisation Update Nomination Request processing steps:

1. NES  creates a bundle containing Patient, RelatedPerson, and Location resources and posts it to the  Messaging Hub's $process-message endpoint. (EventType=FLS_ENROLMENT_NOMINATION)
2. The Messaging Hub transforms the message to an HL7v2.0  ADT^28 request and sends it to the PMS
3. The Messaging Hub returns a synchronous 200 response to NES

####  Enrolment Nomination Request Example
[enrolment-nomination-request-message-1](Bundle-12345.json.html)

### Enrolment Nomination Response


<div>
{% include enrolment-nomination-response.svg %}
</div>


####  Enrolment Nomination Request processing steps:
1. The PMS sends an HL7v2.0  ADT^28 ACK message to the Messaging Hub indicating if the enrolment nomination request has been accepted or not
2. The Messaging Hub creates a bundle containing an OperationOutcome with an appropriate Enrolment Nomination Result Code and sends it to the NES $process-message endpoint.
3. NES returns a synchronous 200 response to the Messaging Hub.

####  Enrolment Nomination Response Example
[enrolment-nomination-response-message-1](Bundle-34567.json.html)