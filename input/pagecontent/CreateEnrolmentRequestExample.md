
### Create WCTO Enrolment (Nomination) Request

```
{
    "resourceType": "EpisodeOfCare",
    "id": "-1",
    "contained": [
        {
            "resourceType": "PractitionerRole",
            "id": "EnrolmentServiceProvider",
            "practitioner": {
                "reference": "Practitioner/99ZZZS"
            },
            "organization": {
                "reference": "Organization/GZZ999-J"
            },
            "location": [
                {
                    "reference": "Location/FZZ999-B"
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
    "careManager": {
        "reference": "#EnrolmentServiceProvider"
    }
}
```
