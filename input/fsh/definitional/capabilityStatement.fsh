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
* rest.resource.profile = "http://hl7.org.nz/fhir/StructureDefinition/NzCoverage"
* rest.resource.interaction.code = #read
* rest.resource.interaction.documentation = "GET [base]/[Coverage]/[id] - Used to retrieve a Patient's entitlements."

* rest.operation[0].name = "process-message"
* rest.operation[0].definition = "http://hl7.org/fhir/OperationDefinition/MessageHeader-process-message"

* messaging.supportedMessage[0].mode = $EventCapabilityMode#sender
* messaging.supportedMessage[0].definition = "http://hl7.org.nz/fhir/MessageDefinition/EnrolmentNominationRequestMessageDefinition"

* messaging.supportedMessage[1].mode = $EventCapabilityMode#receiver
* messaging.supportedMessage[1].definition = "http://hl7.org.nz/fhir/MessageDefinition/EnrolmentNominationRequestMessageDefinition"