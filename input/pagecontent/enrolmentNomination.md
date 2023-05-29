

### Enrolment Nomination  Overview

An ‘Enrolment Nomination ’ interaction is initiated by a user wished to request that a health provider enrol a patient for a health servcie<br />
The request includes detaisl of the patient, the provider and in some cases the Patein'ts next of kin 
At a later time , after the health provider has processed the request, they send a response back tot the nominate dendpoint indicating the enrolment request has been accepted or declined

<div>
{% enrolment-nomination-request.svg %}
</div>



####  Enrolment Nomination Request processing steps:

1. The user initiates creating a new Patient in the integrating application
2. The integrating application sends an HTTP POST request (a FHIR create) containing the Patient details E.g. Post\<Endpoint>/Patient
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. A Patient record is created and a Patient ID (nhi-id) is issued
5. The NHPI FHIR API confirms a successful update – HTTP 201 Created status code
6. The integrating application indicates to the user the create has been successful
7. The integrating application retains the nhi-id and version number for future requests relating to this record
