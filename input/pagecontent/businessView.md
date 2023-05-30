


### About

The National Enrolment Service (NES) is designed to provide a single source of truth for patient enrolments with Primary Health Organisations (PHOs).  It does this my maintaining a relationship between the patient identifier (NHI number) and the enrolling organisation (HPI Organisation ID).  Each enrolling organisation is associated with a PHO.

#### Enrolments
Web service APIs integrated into GP Patient Management Systems (PMS) enable practice staff to maintain patient identity and enrolment information in the National Health Index (NHI) and National Enrolment databases in real-time.  The workflow within each PMS varies according to each vendor’s implementation of the APIs.  Other services are provided to notify PMS systems of significant changes (e.g. enrolment expiries, enrolment transfers, NHI links and unlinks) and to allow GPs to update details relating to the primary care experience survey (opt out flag, patient mobile number, patient email address). Currently only SOAP APIs exist for the purpose of maintaining enrolments, in the future we expect equivalent FHIR APIs to be available; they will be described in this IG

The GP a patient  is enrolled with  is described in [Patients enrolled General Practice](https://nhi-ig.hip-uat.digital.health.nz/StructureDefinition-NhiPatient.html)

#### Entitlements
The NES system also has the capability to store and disseminate details relating to a patient’s health entitlements.  At the current time two such entitlements are recorded in NES – the High User Health Card (HUHC) and the Community Services Card (CSC).

#### Enrolment Nominations
An enrolment nomination is an invitation to a health provider to enrol a patient for a health service.  This IG provides the specification for sending a FHIR message to request that a patient be enrolled with a GP for publicly funded health services


#### Relationship to payments

NES and NHI information is extracted on a monthly basis to calculate Capitation Based Funding (CBF) for GP practices.  Over $90 million is calculated and distributed per month using this data.  In addition, NES services are increasingly being used by health providers in other parts of the sector to determine a patient’s enrolling GP to ensure that the patient receives appropriate care.

#### History
The NES system was initially implemented in 2015, but it took over three years for GP PMS vendors to implement and release the required functionality to maintain NES enrolments to their customers.  In December 2018 NES started to be used as the data source for CSC funding to GPs and in April 2019 the cut-over to NES based CBF funding was completed.

#### Future
NES has been designed as an extensible solution capable of supporting multiple types of enrolments and entitlements.  Potential future candidates for leveraging the investment in NES include Dental Enrolments, Prescription Subsidy Cards, and Veteran Status entitlements.


#### Context

To maximise the benefits of the NES all healthcare providers should;

* locate and confirm the patient identity, 
* synchronise data held locally with the NES, and 
* update any new information provided

each time a patient presents for healthcare. 



