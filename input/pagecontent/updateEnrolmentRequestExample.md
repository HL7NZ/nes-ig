

### Update to end enrolment - WCTO example


```
{
    "resourceType": "EpisodeOfCare",
    "id": "20023639",
    "meta": {
        "profile": [
            "http://hl7.org.nz/fhir/StructureDefinition/EpisodeOfCare"
        ]
    },
    "contained": [
        {
            "resourceType": "PractitionerRole",
            "id": "1",
            "practitioner": {
                "reference": "Practitioner/99ZZZS",
                "display": "TestOne Prefix-Test"
            },
            "organization": {
                "reference": "Organization/GZZ999-J",
                "display": "Verification Test Organisation"
            },
            "location": [
                {
                    "reference": "Location/FZZ999-B",
                    "display": "Live Facilty"
                }
            ]
        },
        {
            "resourceType": "Patient",
            "id": "ZMA8041",
            "meta": {
                "profile": [
                    "http://hl7.org.nz/fhir/StructureDefinition/NesPatient"
                ]
            },
            "name": [
                {
                    "family": "Pineapple",
                    "given": [
                        "James"
                    ]
                }
            ],
            "birthDate": "2024-07-22"
        }
    ],
    "extension": [
        {
            "url": "http://hl7.org.nz/fhir/StructureDefinition/enrolment-expiry-date",
            "valueDate": "2029-07-22"
        },
        {
            "url": "http://hl7.org.nz/fhir/StructureDefinition/enrolment-owner-org",
            "valueReference": {
                "reference": "Organization/G00001-G"
            }
        },
                {
            "url": "http://hl7.org.nz/fhir/StructureDefinition/nes-enrolment-termination-reason",
            "valueCodeableConcept": {
                "coding": [
                    {
                        "system": "https://standards.digital.health.nz/nes-enrolment-termination-reason",
                        "code": "EnrolledInError"
                    }
                ]
            }
        }
    ],
    "status": "waitlist",
    "type": [
        {
            "coding": [
                {
                    "system": "https://standards.digital.health.nz/nes-enrolment-type",
                    "code": "WCTO"
                }
            ]
        }
    ],
    "patient": {
        "reference": "#ZMA8041"
    },
    "period": {
        "start": "2024-07-24",
        "end": "2024-07-24"
    },
    "careManager": {
        "reference": "#1"
    }
}
```
