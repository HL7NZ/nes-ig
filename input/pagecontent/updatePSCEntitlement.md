### Update PSC Entitlement details

```
{
    "resourceType": "Coverage",
    "id": "20023638",
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
            "system": "https://standards.digital.health.nz/ns/nes-psc-id",
            "value": "10000045495"
        }
    ],
    "status": "active",
    "type": {
        "coding": [
            {
                "system": "https://standards.digital.health.nz/ns/coverage-type-code",
                "code": "psc"
            }
        ]
    },
    "beneficiary": {
        "reference": "#ZLW8704"
    },

    "period": {
        "start": "2024-07-01T00:00:00+12:00"
    },
    "payor": [
        {
            "reference": "Organization/G0K357-H"
        }
    ]
}
```


### Update PSC Entitlement to end

```
{
    "resourceType": "Coverage",
    "id": "20023638",
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
            "system": "https://standards.digital.health.nz/ns/nes-psc-id",
            "value": "10000045495"
        }
    ],
    "status": "entered-in-error",
    "type": {
        "coding": [
            {
                "system": "https://standards.digital.health.nz/ns/coverage-type-code",
                "code": "psc"
            }
        ]
    },
    "beneficiary": {
        "reference": "#ZLW8704"
    },

    "period": {
        "start": "2024-07-01T00:00:00+12:00",
        "end": "2024-07-11T00:00:00+13:00"
    },
    "payor": [
        {
            "reference": "Organization/G0K357-H"
        }
    ]
}
```
