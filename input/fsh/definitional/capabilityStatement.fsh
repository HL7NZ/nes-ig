Alias: $EventCapabilityMode = http://hl7.org/fhir/event-capability-mode

Instance: NESCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition



* status =  #draft
* date = "2023-05-24"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* patchFormat = #json

* publisher = "New Zealand Ministry of Health"
* contact.name = "Pat Ryan"
* contact.telecom.system = #email
* contact.telecom.value = "pat.ryan@health.govt.nz"
* description = "NES FHIR Capabilities"
* rest.mode = #server

* rest.resource.type = #Coverage
* rest.resource[=].profile = "http://hl7.org.nz/fhir/StructureDefinition/NzCoverage"
* rest.resource[=].interaction[0].code = #read
//comma delimited fields in documentation string extracted by makeCapabilityStatement.js:   <verb,url,doc,scope>
* rest.resource[=].interaction[=].documentation = "GET,[base]/[Coverage]/[id],Used to retrieve a Patient's entitlements, system/Coverage.r"
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[=].documentation = "POST,[base]/[Coverage], create a new entitlement, system/Coverage.c"
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].documentation = "GET,[base]/[Coverage], search for entitlements, system/Coverage.s"

* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[0].type = #token
* rest.resource[=].searchParam[0].documentation = "external entitlement id"
 
* rest.resource[=].searchParam[1].name = "beneficiary"
* rest.resource[=].searchParam[1].type = #string
* rest.resource[=].searchParam[1].documentation = "NHI-Id"
 
* rest.resource[=].searchParam[2].name = "type"
* rest.resource[=].searchParam[2].type = #token
* rest.resource[=].searchParam[2].documentation = "entitlement type code"

* rest.resource[=].searchParam[3].name = "status"
* rest.resource[=].searchParam[3].type = #token
* rest.resource[=].searchParam[3].documentation = "status code"


* rest.resource[+].type = #EpisodeOfCare
* rest.resource[=].profile = "http://hl7.org.nz/fhir/StructureDefinition/NesEnrolment"
* rest.resource[=].interaction.code = #read
//comma delimited fields in documentation string extracted by makeCapabilityStatement.js:   <verb,url,doc,scope>
* rest.resource[=].interaction.documentation = "GET,[base]/[EpisodeOfCare]/[id],Used to retrieve a Patient's enrolments, system/EpisodeOfCare.r"
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[=].documentation = "POST,[base]/[EpisodeOfCare], create a new enrolment, system/EpisodeOfCare.c"

* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[=].documentation = "PUT,[base]/[EpisodeOfCare]/[id], update an existing enrolment, system/EpisodeOfCare.u"

//search by various parameters
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].documentation = "GET,[base]/[EpisodeOfCare], Search for enrolments, system/EpisodeOfCare.s"



* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[0].type = #string
* rest.resource[=].searchParam[0].documentation = "NHI number"
 
* rest.resource[=].searchParam[1].name = "status"
* rest.resource[=].searchParam[1].type = #token
* rest.resource[=].searchParam[1].documentation = "status code"
 
* rest.resource[=].searchParam[2].name = "type"
* rest.resource[=].searchParam[2].type = #token
* rest.resource[=].searchParam[2].documentation = "type code"


* rest.operation[0].name = "process-message"
* rest.operation[0].definition = "http://hl7.org/fhir/OperationDefinition/MessageHeader-process-message"
* rest.operation[0].documentation = "POST, [base]/$process-message, http://hl7.org/fhir/OperationDefinition/MessageHeader-process-message, system/MessageHeader.c"

* messaging.supportedMessage[0].mode = $EventCapabilityMode#sender
* messaging.supportedMessage[0].definition = "http://hl7.org.nz/fhir/MessageDefinition/EnrolmentNominationRequestMessageDefinition"

* messaging.supportedMessage[1].mode = $EventCapabilityMode#receiver
* messaging.supportedMessage[1].definition = "http://hl7.org.nz/fhir/MessageDefinition/EnrolmentNominationRequestMessageDefinition"

* messaging.supportedMessage[2].mode = $EventCapabilityMode#receiver
* messaging.supportedMessage[2].definition = "http://hl7.org.nz/fhir/MessageDefinition/EnrolmentNominationResponseMessageDefinition"
