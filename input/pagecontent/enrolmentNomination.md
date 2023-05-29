
## Enrolment Nomination  Overview

An ‘Enrolment Nomination ’ interaction is initiated by a user who wishes to request that a health provider enrol a patient for a health service.
The request includes details of the patient, the provider,  and in some cases the Patient's next-of-kin.
At a later time , after the health provider has processed the request, they send a response back to the nominated endpoint indicating if the enrolment request has been accepted or declined.

### Enrolment Nomination Request
<div>
{% enrolment-nomination-request.svg %}
</div>



####  Enrolment Nomination Request processing steps:

1. NES  creates a bundle containing Patient, RelatedPerson, and Location resources and posts it to the  Messaging Hub's $process-message endpoint. (EventType=FLS_ENROLMENT_NOMINATION)
2. The Messaging Hub transforms the message to an HL7v2.0  ADT^28 request and sends it to the PMS
3. The Messaging Hub returns a synchronous 200 response to NES


### Enrolment Nomination Response
<div>
{% enrolment-nomination-response.svg %}
</div>



####  Enrolment Nomination Request processing steps:
1. The PMS sends an HL7v2.0  ADT^28 ACK message to the Messaging Hub indicating if the enrolment nomination request has been accepted or not
2. The Messaging Hub creates a bundle containing an OperationOutcome with an appropriate Enrolment_nomination_result code and sends it to the NES $process-message endpoint.
3. NES returns a synchronous 200 response to the Messaging Hub.
