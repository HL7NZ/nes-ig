


### About

The National Enrolment Service (NES) is a registry designed to provide a single source of truth for patient enrolments, entitlements and newborn enrolment nominations. 

It does this by maintaining a relationship between the service type, patient identifier (NHI number) and the enrolling organisation (HPI Organisation ID). The facility where services are provided and the provider’s ID (HPI CPN) can also be recorded.

#### Enrolments

Enrolments include a patients:
* enrolment with a Primary Health Organisations (PHOs) - funded GP enrolment
* registration with a general practitioner (non-funded)
* enrolment with a lead maternity carer (LMC)
* nomination to a Well Child Tamariki Ora provider
 
Web service APIs integrated into Patient Management Systems (PMS) enable practice staff to maintain patient identity and enrolment information in the National Health Index (NHI) and National Enrolment Service (NES) databases in real-time.  The workflow within each PMS varies according to each vendor’s implementation of the APIs.  Other services are provided to notify PMS systems of significant changes (e.g. enrolment expiries, enrolment transfers, NHI links and unlinks).

A patient's general practitioner (a read-only snapshot) is also available to be returned in the patient resource [See the NHI patient profile for more information ](https://nhi-ig.hip-uat.digital.health.nz/StructureDefinition-NhiPatient.html)

#### Entitlements
The NES system also has the capability to store and disseminate details relating to a patient’s entitlements.  At the current time two such entitlements are recorded in NES – the High User Health Card (HUHC) and the Community Services Card (CSC).

#### Enrolment Nominations
An enrolment nomination is an invitation to a health provider to enrol a patient for a health service.  This Implementation guide provides the specification for sending a FHIR message to request that a newborn be enrolled with a GP for first level services.


#### Relationship to payments

NES and NHI information is extracted on a monthly basis to calculate Capitation Based Funding (CBF) for GP practices.  Over $90 million is calculated and distributed per month using this data.  In addition, NES services are increasingly being used by health providers in other parts of the sector to retrieve a patient’s enrolling GP to ensure that information is sent to the correct provider.

#### History
The NES system was rolled out to GP PMS vendors between 2015 and 2018, providing functionality to maintain GP enrolments in real-time. In December 2018 NES started to be used as the data source for CSC funding to GPs and in April 2019 the cut-over to NES based CBF funding was completed.

#### Future
NES has been designed as an extensible solution capable of supporting multiple types of enrolments and entitlements.  Potential future candidates for leveraging the investment in NES include enrolments in the Adolescent Dental service, and Well Child Tamariki Ora services, Prescription Subsidy Cards, and Veteran entitlements.
