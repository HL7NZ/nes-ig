Alias: $ethnic-group-level-4-code = https://standards.digital.health.nz/ns/ethnic-group-level-4-code

Instance: enrolment-nomination-request-error-response-1
InstanceOf: OperationOutcome
Description: "Example of a synchronous 422 error response to a enrolment nomination request message"
Usage: #example

* issue.severity =  #error
* issue.code =  #informational
* issue.details.coding.code = #EM02002
* issue.details.coding.system = "https://standards.digital.health.nz/ns/hip-error-code"
* issue.details.text = "The NHI cannot be found" 

