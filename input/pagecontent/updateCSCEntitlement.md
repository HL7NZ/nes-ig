

### Update CSC Entitlement details

```
{
    "resourceType": "Coverage",
    "id": "20021066",
    "meta": {
        "profile": [
            "http://hl7.org.nz/fhir/StructureDefinition/NesEntitlement"
        ]
    },
    "contained": [
        {
            "resourceType": "Patient",
            "id": "ZGU6010",
            "name": [
                {
                   "family": "AddPatientPerfTest",
                   "given": [
                       "Given",
                       "Other"
                   ]
                }
            ],
            "birthDate": "1991-01-01"
        }
    ],
    "identifier": [
        {
            "use": "official",
            "system": "https://standards.digital.health.nz/ns/nes-csc-id",
            "value": "0000004551767009"
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
        "reference": "#ZGU6010"
    },

    "period": {
        "start": "2023-11-10T00:00:00+13:00"
    },
    "payor": [
        {
            "reference": "Organization/G0M558-F"
        }
    ]
}
```


### Update CSC Entitlement to end

```
{
    "resourceType": "Coverage",
    "id": "20021066",
    "meta": {
        "profile": [
            "http://hl7.org.nz/fhir/StructureDefinition/NesEntitlement"
        ]
    },
    "contained": [
        {
            "resourceType": "Patient",
            "id": "ZGU6010",
            "name": [
                {
                   "family": "AddPatientPerfTest",
                   "given": [
                       "Given",
                       "Other"
                   ]
                }
            ],
            "birthDate": "1991-01-01"
        }
    ],
    "identifier": [
        {
            "use": "official",
            "system": "https://standards.digital.health.nz/ns/nes-csc-id",
            "value": "0000004551767009"
        }
    ],
    
    "status": "entered-in-error",
    "type": {
        "coding": [
            {
                "system": "https://standards.digital.health.nz/ns/coverage-type-code",
                "code": "csc"
            }
        ]
    },
    "beneficiary": {
        "reference": "#ZGU6010"
    },

    "period": {
        "start": "2023-11-10T00:00:00+13:00",
        "end": "2023-11-11T00:00:00+13:00"
    },
    "payor": [
        {
            "reference": "Organization/G0M558-F"
        }
    ]
}
```
