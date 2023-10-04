

NES IG Onboarding And Compliance Testing
========================================

### Who can apply for access?

#### To the test environment:

All health providers listed in [Schedule 2 of the Health Information Privacy Code](https://privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/) and software vendors will be given access to all the NES api operations in the HIP Compliance environment for testing and training after completing the on-boarding process described below.

#### To the production environment:

Access to **NES api** interactions is available to all health providers listed in [Schedule 2 of the Health Information Privacy Code](https://privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/) and who require enrolment information as part or their delivery of health services

### On-boarding and Implementation

1.     To get started, complete the [online onboarding request form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/67). You will need to provide information about your organisation and the API you will integrate with.

2.     Once your onboarding request has been approved, you will be provided with the information to start integration. The integration team will be in touch if further information is required.

o   You will receive your credentials in an email and a sms message to the details provided in the onboarding form.

o   You will also receive the access token url, provided scopes, and the UAT endpoint.

3.     Complete your development and testing.

4.     Submit the results of the compliance tests by email to the [integration team](mailto:integration@health.govt.nz).

5.     The integration team team will issue a compliance test report. Your application will receive certification to be used in production or additional requirements will need to be met.

6.     Each organisation using your application with Newborn Enrolment Services (NBES) or ‘enrolment’ service must apply individually for access to the production environment by completing the production form, please email [integration@health.govt.nz](mailto:integration@health.govt.nz).

7.     Access available only to Whaihua and HealthLink. If you are interested in this business function please contact [integration@health.govt.nz](mailto:integration@health.govt.nz)

Please allow at least 5 working days for these applications to be processed and production credentials issued. If your product is to be used by many different organisations please get in touch to discuss your rollout plans and how we might assist.

If you require help or have any questions regarding the onboarding process, please contact our team by completing a [General enquiry form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36).

### Business Functions

See below for available business functions.  
By using Te Whatu Ora APIs you are accessing personally identifiable information from the NES which is not directly from the individual concerned. You need to consider your obligations under HIPC principle 2, and we may request to see your privacy impact assessment prior to access to production.

**Business Functions**

**Description**

**Comments**

Enrolment Nomination

·        Create an Enrolment nomination (Whaihua only at this stage)

·        Respond to an Enrolment nomination request (HealthLink only at this stage)

·        A FHIR bundle enrolment nomination request is passed to the nomination service

·        A FHIR response bundle is passed from HealthLink to the nomination service

·        See [Enrolment Nomination usecase](https://master.d1wcqdkm82x5bt.amplifyapp.com/enrolmentNomination.html)

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

\*\* All test messages will be assessed against the security criteria in the table below \*\*

**Reference**

**Purpose**

**Input values**

**Expected outcome**

**Mandatory**

Security 1

Credentials match those issued to the testing organisation  
and their orgID and appID are auditing correctly

Checked against all tests

Te Whatu Ora will check internal logs

Mandatory

Security 2

Sending user ID is an end user ID or an hpi-person-id

Checked against all tests

Te Whatu Ora will check internal logs

Mandatory

Security 3

Sending user ID changes when different end users are initiating the request (Please make sure a separate user creates a request)

Checked against all tests

Te Whatu Ora will check internal logs

Mandatory

Security 4

Each request has a unique request id in the X-Correlation-Id field  
If present this will be returned in the response

Checked against all tests

Te Whatu Ora will check internal logs

Recommended

#### General tests

\*\* These tests apply to all integrations \*\*

**Reference**

**Purpose – Demonstrate that the**

**Input values**

**Expected outcome**

**Mandatory / Optional / Recommended**

General-1

Application can handle an HTTP 429 (or any 40x error?) error in a graceful way

The application reaches its usage plan limit and is returned an HTTP 429 error.

The application will retry several times with an exponentially increasing delay

Recommended

#### Enrolment Nomination Request

**Reference**

**Purpose – Demonstrate that the**

**Input values**

**Expected outcome**

**Mandatory**

EnrolmentNominationRequest-1

Application can create an enrolment nomination request with the minimum set of nomination information

Send a nomination request with a fictitious identity:

·        Baby

o   NHI Number

o   Gender

o   Date of Birth

·        GP

o   Facility ID

·        PG1

o   Relationship Code

o   First and Family name

1.     Input: Minimum set of nomination information can be provided

2.     Output: Nomination request can be successfully posted to the NES _$process-message_ endpoint

3.     Get a success response of 200()

mandatory

EnrolmentNominationRequest-2

Application can create an enrolment nomination request with all possible nomination information

Send a nomination request with a fictitious identity:

·        Baby

o   NHI Number

o   Name

o   Gender

o   Date of Birth

·        GP

o   Name

o   Facility ID

·        PG1

o   Relationship Code

o   First and Family name

o   NHI Number

o   Contact Number

o   Work number

o   Email

o   Address

·        PG2

o   Relationship Code

o   First and Family name

o   NHI Number

o   Contact Number

o   Work number

o   Email

o   Address

1.     Input: All possible nomination information can be provided

2.     Output: Nomination request can be successfully posted to the NES _$process-message_ endpoint

mandatory

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