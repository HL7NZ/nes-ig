Alias: $ethnic-group-level-4-code = https://standards.digital.health.nz/ns/ethnic-group-level-4-code
// thsi is an examp3el of an error that night be returned synchronously by NES in response to an invalid Enrolment Nomination ResponseMessage
Instance: enrolment-nomination-response-error-response-1
InstanceOf: OperationOutcome
Description: "Example of a synchronous 40x error response to a enrolment nomination request message"
Usage: #example

* issue.severity =  #error
* issue.code =  #informational
* issue.diagnostics = "Invalid correlation id"

