

### Search Entitlement Response


#### Search response containing CSC

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

#### Search response containing HUHC

```
{
    "resourceType": "Bundle",
    "id": "597c5ecd-3ef6-4fb1-a87e-5db6c41f9252",
    "meta": {
        "lastUpdated": "2023-12-11T22:26:28.559+13:00"
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


#### Search response containing CSC and HUHC

```
{
    "resourceType": "Bundle",
    "id": "2bf6f0cb-23ff-43cb-bd69-68987e905704",
    "meta": {
        "lastUpdated": "2023-12-11T22:21:24.141+13:00"
    },
    "type": "searchset",
    "link": [
        {
            "relation": "self",
            "url": "https://d29wiwpaz5ey89.cloudfront.net:443/fhir/nes/v1/Coverage?patient=ZGU5994"
        }
    ],
    "entry": [
        {
            "fullUrl": "http://nes-fhir/Entitlements/20014537",
            "resource": {
                "resourceType": "Coverage",
                "id": "20014537",
                "meta": {
                    "profile": [
                        "http://hl7.org.nz/fhir/StructureDefinition/NesEntitlement"
                    ]
                },
                "identifier": [
                    {
                        "use": "official",
                        "system": "https://standards.digital.health.nz/ns/nes-csc-id",
                        "value": "0000000236598504"
                    }
                ],
                "status": "active",
                "type": {
                    "coding": [
                        {
                            "system": "https://nzhts.digital.health.nz/fhir/ValueSet/coverage-type-code",
                            "code": "csc"
                        }
                    ]
                },
                "beneficiary": {
                    "reference": "Patient/ZGU5994"
                },
                "period": {
                    "start": "2023-11-10T00:00:00+13:00",
                    "end": "2024-11-11T00:00:00+13:00"
                },
                "payor": [
                    {
                        "reference": "Organization/G00001-G"
                    }
                ]
            }
        },
        {
            "fullUrl": "http://nes-fhir/Entitlements/20012376",
            "resource": {
                "resourceType": "Coverage",
                "id": "20012376",
                "meta": {
                    "profile": [
                        "http://hl7.org.nz/fhir/StructureDefinition/NesEntitlement"
                    ]
                },
                "identifier": [
                    {
                        "use": "official",
                        "system": "https://standards.digital.health.nz/ns/nes-huhc-id",
                        "value": "151478000"
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
                    "reference": "Patient/ZGU5994"
                },
                "period": {
                    "start": "2023-10-24T00:00:00+13:00",
                    "end": "2024-10-24T00:00:00+13:00"
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

#### Search response containing PSC and ended CSC

```
{
    "resourceType": "Bundle",
    "id": "7c6a5806-323b-4803-a332-116ae8037fb5",
    "meta": {
        "lastUpdated": "2024-08-06T00:50:23.878+12:00"
    },
    "type": "searchset",
    "link": [
        {
            "relation": "self",
            "url": "https://api.hip-uat.digital.health.nz:443/fhir/nes/v1/Coverage?beneficiary=ZLW8704"
        }
    ],
    "entry": [
        {
            "fullUrl": "http://nes-fhir/Entitlements/20023638",
            "resource": {
                "resourceType": "Coverage",
                "id": "20023638",
                "meta": {
                    "profile": [
                        "http://hl7.org.nz/fhir/StructureDefinition/NesEntitlement"
                    ]
                },
                "identifier": [
                    {
                        "use": "official",
                        "system": "https://standards.digital.health.nz/ns/nes-psc-id",
                        "value": "1000004549582007"
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
                    "reference": "Patient/ZLW8704"
                },
                "period": {
                    "start": "2024-07-01T00:00:00+12:00",
                    "end": "2025-02-01T00:00:00+13:00"
                },
                "payor": [
                    {
                        "reference": "Organization/G0K357-H"
                    }
                ]
            }
        },
        {
            "fullUrl": "http://nes-fhir/Entitlements/20021065",
            "resource": {
                "resourceType": "Coverage",
                "id": "20021065",
                "meta": {
                    "profile": [
                        "http://hl7.org.nz/fhir/StructureDefinition/NesEntitlement"
                    ]
                },
                "identifier": [
                    {
                        "use": "official",
                        "system": "https://standards.digital.health.nz/ns/nes-csc-id",
                        "value": "0000004549582007"
                    }
                ],
                "status": "cancelled",
                "type": {
                    "coding": [
                        {
                            "system": "https://standards.digital.health.nz/ns/coverage-type-code",
                            "code": "csc"
                        }
                    ]
                },
                "beneficiary": {
                    "reference": "Patient/ZLW8704"
                },
                "period": {
                    "start": "2018-08-30T00:00:00+12:00",
                    "end": "2023-11-11T00:00:00+13:00"
                },
                "payor": [
                    {
                        "reference": "Organization/G0M558-F"
                    }
                ]
            }
        }
    ]
}
```
