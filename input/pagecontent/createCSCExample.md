### Create CSC  Entitlement Example

```
{
    "resourceType": "Coverage",
    "id": "-1",
    "meta": {
        "profile": [
            "http://hl7.org.nz/fhir/StructureDefinition/NesEntitlement"
        ]
    },
    "contained": [
        {
            "resourceType": "Patient",
            "id": "ZLW8704",
            "name": [
                {
                   "family": "Murphy",
                   "given": [
                       "Alysson",
                       "Ashlynn"
                    ]
                }
            ],
            "birthDate": "1995-12-24"
        }
    ],
    "identifier": [
        {
            "use": "official",
            "system": "https://standards.digital.health.nz/ns/nes-csc-id",
            "value": "0000004549582007"
        }
    ],
    "status": "active",
    "type": {
        "coding": [
            {
                "system": "https://standards.digital.health.nz/ns/coverage-type-code",
                "code": "csc"
            }
        ]
    },
    "beneficiary": {
        "reference": "#ZLW8704"
    },
    "payor": [
        {
            "reference": "Organization/G0M558-F"
        }
    ]
}
```
