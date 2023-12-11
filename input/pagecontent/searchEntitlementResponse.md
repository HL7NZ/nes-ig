

### Search Entitlement Response

```
{
    "resourceType": "Bundle",
    "id": "8fbebc9f-4cb0-4fad-aed4-5fd303160599",
    "meta": {
        "lastUpdated": "2023-12-11T14:24:49.619+13:00"
    },
    "type": "searchset",
    "link": [
        {
            "relation": "self",
            "url": "https://d29wiwpaz5ey89.cloudfront.net:443/fhir/nes/v1/Coverage?patient=ZGU6010"
        }
    ],
    "entry": [
        {
            "fullUrl": "http://nes-fhir/Entitlements/20012377",
            "resource": {
                "resourceType": "Coverage",
                "id": "20012377",
                "meta": {
                    "profile": [
                        "http://hl7.org.nz/fhir/StructureDefinition/NesEntitlement"
                    ]
                },
                "identifier": [
                    {
                        "use": "official",
                        "system": "https://standards.digital.health.nz/ns/nes-huhc-id",
                        "value": "151478001"
                    }
                ],
                "status": "active",
                "type": {
                    "coding": [
                        {
                            "system": "https://nzhts.digital.health.nz/fhir/ValueSet/coverage-type-code",
                            "code": "huhc"
                        }
                    ]
                },
                "beneficiary": {
                    "reference": "Patient/ZGU6010"
                },
                "period": {
                    "start": "2023-02-20T00:00:00+13:00",
                    "end": "2024-02-19T00:00:00+13:00"
                },
                "payor": [
                    {
                        "reference": "Organization/G00001-G"
                    }
                ]
            }
        }
    ]
}
```
