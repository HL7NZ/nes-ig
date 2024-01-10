The following notes apply to all resources in this implementation.

### Resource representation: Json

Only Json is supported by this implementation.


### Errors

#### HTTP Error response codes

<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Status code </th>
<th> Description </th></tr>

<tr><td> 400 </td>
<td> Bad Request </td></tr>

<tr><td> 401 </td>
<td> The client needs to provide credentials, or has provided invalid credentials. </td></tr>

<tr><td> 403 </td>
<td> Authentication was provided, but the authenticated user is not permitted to perform the requested operation. </td></tr>

<tr><td> 404 </td>
<td> Resource not found </td></tr>

<tr><td> 405 </td>
<td> HTTP method not allowed </td></tr>

<tr><td> 409 </td>
<td> Resource conflict, the version provided for the resource is not the current version </td></tr>

<tr><td> 413 </td>
<td> The request body was too big for the server to accept </td></tr>

<tr><td> 422 </td>
<td> Unprocessable Entity, resource was rejected by the server because it “violated applicable FHIR profiles or server business rules” </td></tr>

<tr><td> 500 </td>
<td> General system failure </td></tr>

<tr><td> 429 </td>
<td> Exceeded quota </td></tr>
</table>

#### Response Body
The Response body may contain an OperationOutcome resource describing the result of the request message processing <br />
The table below describes how the OperationOutcome should be populated <br />

<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th> Field </th>
<th> Description </th>
<th> Cardinality </th>
</tr>

<tr>
<td>OperationOutcome.issue</td>
<td>  </td>
<td> 0..n </td>
</tr>

<tr>
<td>OperationOutcome.issue[].severity</td>
<td> error </td>
<td> 0..1 </td>
</tr>

<tr>
<td>OperationOutcome.issue[].code</td>
<td> processing </td>
<td> 0..1 </td>
</tr>

<tr>
<td>OperationOutcome.issue[].details.coding.system</td>
<td>https://standards.digital.health.nz/ns/hip-error-code</td>
<td> 0..1 </td>
</tr>

<tr>
<td>OperationOutcome.issue[].details.coding.code</td>
<td> <a href="https://dev.d3ox9vcqia2rpj.amplifyapp.com/site/CodeSystem-hip-error-code.html">See the HIP Error codes</a> </td>
<td> 0..1 </td>
</tr>

<tr>
<td>OperationOutcome.issue[].details.coding.display</td>
<td> <a href="https://dev.d3ox9vcqia2rpj.amplifyapp.com/site/CodeSystem-hip-error-code.html">See the HIP Error codes</a> </td>
<td> 0..1 </td>
</tr>

<tr>
<td>OperationOutcome.issue[].details.text</td>
<td> See indicative text on each operation use case </td>
<td> 0..1 </td>
</tr>
</table>



#### Error Format

```

{
    "resourceType": "OperationOutcome",
    "issue": [
        {
            "severity": "error",
            "code": "processing",
            "details": {
                "coding": [
                    {
                        "system": "https://standards.digital.health.nz/ns/hip-error-code",
                        "code": "EM07201"
                        "display": "Missing a required field"
                    }
                ],
                "text": "Name is a required field"
            }
        }
    ]
}

```


### Request Rules and Errors

* **Request rules**
  * Every request must include an:
    * http header item UserId that uniquely identifies the individual initiating the request.
    * OAuth 2 access token
    * An api-key

* _Request errors_
  * _Authentication: missing userid header_,  _HTTP401, Processing_
  * _Unauthorized_,  _HTTP401_
  * _Forbidden, HTTP403_


### HTTP Header Details

* This is a list of any additions to standard HTTP header protocol

<h3>Request Headers</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> HTTP Header (Key) </th>
<th> HTTP Header (Value) </th>
<th> Description </th>
<th> Mandatory / Recommended / Optional </th></tr>

<tr><td> Authorization </td>
<td> Bearer {string} </td>
<td> The OAuth2 access token </td>
<td> Mandatory </td></tr>

<tr><td> userid </td>
<td> {string} </td>
<td> Client provided <br />
All requests for all resources must include an http header userid that uniquely identifies the individual initiating the request <br />
Preferably the hpi-person-id of the user would be provided if known, otherwise a userid that allows the authenticated organisation to identify the individual </td>
<td>Mandatory</td></tr>

<tr><td> Content-Type </td>
<td> Application/json </td>
<td> Supported content type </td>
<td> Mandatory </td></tr>

<tr><td> x-api-key </td>
<td> {string} </td>
<td> Te Whatu Ora Provided – issued with client credentials </td>
<td> Mandatory </td></tr>

<tr><td> User-Agent </td>
<td> {string} </td>
<td> The user-agent header is a string field that lets Te Whatu Ora know the application and version of the application accessing the HIP APIs. </td>
<td> Mandatory </td></tr>

<tr><td> X-Correlation-Id </td>
<td> {string} </td>
<td> Client provided <br />
All requests should contain a unique transaction id in the X-Correlation-Id field <br />
If present in the request this will be returned in the response, and can be used to track API calls <br />
Preferred less than 64 characters <br /> </td>
<td> Recommended </td></tr>
</table>

<h3>Response Headers</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Element name </th>
<th> Value </th>
<th> Description </th></tr>

<tr><td> X-Correlation-Id </td>
<td> {string} </td>
<td> Returned if provided </td></tr>

<tr><td> X-request-Id </td>
<td> {string} </td>
<td> Unique identifier for the request within the NHI </td></tr>

<tr><td> ETag </td>
<td> {string} </td>
<td> The resource version number, returned on a Get </td></tr>
</table>

### Security

#### OAUTH2

The NES server uses the OAUTH2 Client Credentials flow for authentication and authorisation and complies with the SMART specification for backend services

#### Scopes

The following scopes are supported. For more information on available functionality please see [Business Functions](/Onboarding.html#business-functions).

<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Domain </th><th> SMART on FHIR Scopes </th><th> Description </th></tr>
<tr><td>Enrolment</td><td> https://api.hip.digital.health.nz/fhir/system/EpisodeOfCare.r </td><td> Read access to Enrolment records </td></tr>
<tr><td>Enrolment</td><td> https://api.hip.digital.health.nz/fhir/system/EpisodeOfCare.s </td><td> Search access to Enrolment records </td></tr>
<tr><td>Enrolment</td><td> https://api.hip.digital.health.nz/fhir/system/EpisodeOfCare.u </td><td> Update access to Enrolment records </td></tr>
<tr><td>Enrolment</td><td> https://api.hip.digital.health.nz/fhir/system/EpisodeOfCare.c </td><td> Create access to Enrolment records </td></tr>
<tr><td>Entitlement</td><td> https://api.hip.digital.health.nz/fhir/system/Coverage.r </td><td> Read access to Entitlement records </td></tr>
<tr><td>Entitlement</td><td> https://api.hip.digital.health.nz/fhir/system/Coverage.s </td><td> Search access to Entitlement records </td></tr>
<tr><td>Entitlement</td><td> https://api.hip.digital.health.nz/fhir/system/Coverage.u </td><td> Update access to Entitlement records </td></tr>
<tr><td>Entitlement</td><td> https://api.hip.digital.health.nz/fhir/system/Coverage.c </td><td> Create access to Entitlement records </td></tr>
<tr><td>New born enrolments</td><td> https://api.hip.digital.health.nz/fhir/system/MessageHeader.c </td><td> Create and respond to enrolment nomination</td></tr>
</table>


#### API Keys and Usage Plans

Clients will be emailed their API key, which should be treated as confidential information and not shared with other parties

An api-key associates the client with a usage plan, which sets upper limits on the API request volume which is permitted. If a client exceeds their usage plan allocation an http error will be returned

Clients will need to add their api key to the x-api-key header in each API request. If no API key is included in the request header, a “Forbidden” error will be returned

<h3>Usage Plans</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Plan </th>
<th> Rate </th>
<th> Burst </th>
<th> Quota </th></tr>

<tr><td> bronze </td>
<td> 1 request per second </td>
<td> 5 </td>
<td> 10,000 requests per day </td></tr>

<tr><td> silver </td>
<td> 5 requests per second </td>
<td> 25 </td>
<td> 250,000 requests per day </td></tr>

<tr><td> gold </td>
<td> 10 requests per second </td>
<td> 50 </td>
<td> 500,000 requests per day </td></tr>
</table>

All test accounts will be assigned to the bronze usage plan. If a Vendor wishes to be assigned to a higher plan, they should contact the Integration team via the [General Enquiry form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36) Please request a change to the usage plan and make sure you include the ClientID at minimum (AppId and Orgid also recommended).

Production accounts will be assigned to the silver usage plan. If an Organisation wishes to be assigned to the gold usage plan, they should contact the Te Whatu Ora [NHI access team](mailto:NHI_Access@health.govt.nz)

If an application reaches its usage plan limit an HTTP 429 error will be returned. The expected behaviour is that the application will retry several times with an exponentially increasing delay


#### GEO Restriction 

GEO Restriction rules prevent access from clients with IPs located in countries other than those listed below. If you need access from another country,  please contact our team by completing the [Enquiry form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36) or adding a comment to the online onboarding request form if you have one.

* New Zealand
* Australia
* Canada
* Cook Islands
