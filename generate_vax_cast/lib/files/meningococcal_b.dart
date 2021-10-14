import 'package:vax_cast/vax_cast.dart';

final meningococcal_ = AntigenSupportingData.fromJson({
    "contraindications": {
        "vaccineGroup": {
            "contraindication": [
                {
                    "observationCode": "116",
                    "observationTitle": "Severe allergic reaction after previous dose of Meningococcal B",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Meningococcal B vaccine."
                },
                {
                    "observationCode": "080",
                    "observationTitle": "Adverse reaction to vaccine component",
                    "contraindicationText": "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
                }
            ]
        }
    },
    "series": [
        {
            "seriesName": "Meningococcal B risk 2-dose series MenB-4C Patient Seeks Protection",
            "targetDisease": "Meningococcal B",
            "vaccineGroup": "Meningococcal B",
            "seriesType": "Risk",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Patient Seeks Protection",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "minAgeToStart": "10 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Patient seeks protection",
                        "code": "001"
                    },
                    "description": "Administer to persons seeking protection.",
                    "beginAge": "16 years",
                    "endAge": "24 years",
                    "guidance": "A MenB vaccine series may be administered to adolescents and young adults to provide short-term protection against most strains of serogroup B meningococcal disease. The preferred age for MenB vaccination is 16-18 years (recommendation Category B)."
                },
                {
                    "observationCode": {
                        "text": "Patient seeks Meningococcal B protection",
                        "code": "177"
                    },
                    "description": "Administer to persons seeking protection from Meningococcal B.",
                    "beginAge": "16 years",
                    "endAge": "24 years",
                    "guidance": "A MenB vaccine series may be administered to adolescents and young adults to provide short-term protection against most strains of serogroup B meningococcal disease. The preferred age for MenB vaccination is 16-18 years (recommendation Category B)."
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "10 years - 4 days",
                            "minAge": "10 years",
                            "earliestRecAge": "10 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "meningococcal B, OMV",
                            "cvx": "163",
                            "beginAge": "10 years",
                            "tradeName": "Bexsero",
                            "mvx": "NOV",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "meningococcal B, OMV",
                            "cvx": "163",
                            "beginAge": "10 years - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "10 years - 4 days",
                            "minAge": "16 years",
                            "earliestRecAge": "16 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "4 weeks",
                            "cessationDate": "42873"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "4 weeks",
                            "effectiveDate": "42874"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "meningococcal B, OMV",
                            "cvx": "163",
                            "beginAge": "10 years",
                            "tradeName": "Bexsero",
                            "mvx": "NOV",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "meningococcal B, OMV",
                            "cvx": "163",
                            "beginAge": "10 years"
                        },
                        {
                            "vaccineType": "meningococcal B, unspecified",
                            "cvx": "164",
                            "beginAge": "10 years"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Meningococcal B risk 2-dose series MenB-FHbp",
            "targetDisease": "Meningococcal B",
            "vaccineGroup": "Meningococcal B",
            "seriesAdminGuidance": [
                "A 2-dose series for MenB-FHbp (Trumenba) which is used only for healthy adolescents and young adults who are not at increased risk for meningococcal B disease."
            ],
            "seriesType": "Risk",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Patient Seeks Protection",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "minAgeToStart": "16 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Patient seeks protection",
                        "code": "001"
                    },
                    "description": "Administer to persons seeking protection.",
                    "beginAge": "16 years",
                    "endAge": "24 years",
                    "guidance": "A MenB vaccine series may be administered to adolescents and young adults to provide short-term protection against most strains of serogroup B meningococcal disease. The preferred age for MenB vaccination is 16-18 years (recommendation Category B)."
                },
                {
                    "observationCode": {
                        "text": "Patient seeks Meningococcal B protection",
                        "code": "177"
                    },
                    "description": "Administer to persons seeking protection from Meningococcal B.",
                    "beginAge": "16 years",
                    "endAge": "24 years",
                    "guidance": "A MenB vaccine series may be administered to adolescents and young adults to provide short-term protection against most strains of serogroup B meningococcal disease. The preferred age for MenB vaccination is 16-18 years (recommendation Category B)."
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "10 years - 4 days",
                            "minAge": "10 years",
                            "earliestRecAge": "10 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "meningococcal B, recombinant",
                            "cvx": "162",
                            "beginAge": "10 years",
                            "tradeName": "Trumenba",
                            "mvx": "PFR",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "meningococcal B, recombinant",
                            "cvx": "162",
                            "beginAge": "10 years - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "10 years - 4 days",
                            "minAge": "16 years",
                            "earliestRecAge": "16 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "4 months - 4 days",
                            "minInt": "4 months",
                            "earliestRecInt": "4 months"
                        },
                        {
                            "fromPrevious": "N",
                            "fromTargetDose": "1",
                            "absMinInt": "6 months - 4 days",
                            "minInt": "6 months",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "meningococcal B, recombinant",
                            "cvx": "162",
                            "beginAge": "10 years",
                            "tradeName": "Trumenba",
                            "mvx": "PFR",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "meningococcal B, recombinant",
                            "cvx": "162",
                            "beginAge": "10 years"
                        },
                        {
                            "vaccineType": "meningococcal B, unspecified",
                            "cvx": "164",
                            "beginAge": "10 years"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Meningococcal B risk 2-dose series MenB-4C Increased Risk",
            "targetDisease": "Meningococcal B",
            "vaccineGroup": "Meningococcal B",
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "minAgeToStart": "10 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Undergoing elective splenectomy",
                        "code": "002"
                    },
                    "description": "Administered to persons who are undergoing elective splenectomy if they have not previously received Meningococcal B vaccine.",
                    "beginAge": "10 years",
                    "guidance": "Vaccination 14 or more days before splenectomy is suggested."
                },
                {
                    "observationCode": {
                        "text": "Microbiologists routinely exposed to Neisseria meningitidis",
                        "code": "050"
                    },
                    "description": "Administer to microbiologists routinely exposed to isolates of Neisseria meningitidis.",
                    "beginAge": "10 years"
                },
                {
                    "observationCode": {
                        "text": "Persons at risk during an outbreak",
                        "code": "070"
                    },
                    "description": "Administer to persons identified as at increased risk because of a serogroup B meningococcal disease outbreak",
                    "beginAge": "10 years"
                },
                {
                    "observationCode": {
                        "text": "Persistent complement, properdin, or factor B deficiency",
                        "code": "151"
                    },
                    "description": "Administer to persons who have persistent complement component deficiencies, including inherited or chronic deficiencies in C3, C5-9, properdin, factor D, factor H, or who are taking eculizumab (Soliris).",
                    "beginAge": "10 years"
                },
                {
                    "observationCode": {
                        "text": "Anatomical or functional asplenia",
                        "code": "160"
                    },
                    "description": "Administer to persons with anatomic or functional asplenia, including sickle cell disease.",
                    "beginAge": "10 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "10 years - 4 days",
                            "minAge": "10 years",
                            "earliestRecAge": "10 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "meningococcal B, OMV",
                            "cvx": "163",
                            "beginAge": "10 years",
                            "tradeName": "Bexsero",
                            "mvx": "NOV",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "meningococcal B, OMV",
                            "cvx": "163",
                            "beginAge": "10 years - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {}
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "4 weeks",
                            "cessationDate": "42873"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "4 weeks",
                            "effectiveDate": "42874"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "meningococcal B, OMV",
                            "cvx": "163",
                            "beginAge": "10 years",
                            "tradeName": "Bexsero",
                            "mvx": "NOV",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "meningococcal B, OMV",
                            "cvx": "163",
                            "beginAge": "10 years"
                        },
                        {
                            "vaccineType": "meningococcal B, unspecified",
                            "cvx": "164",
                            "beginAge": "10 years"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 3",
                    "age": [
                        {}
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "1 years - 4 days",
                            "minInt": "1 year",
                            "earliestRecInt": "1 year"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "meningococcal B, OMV",
                            "cvx": "163",
                            "beginAge": "10 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "meningococcal B, OMV",
                            "cvx": "163",
                            "beginAge": "10 years"
                        },
                        {
                            "vaccineType": "meningococcal B, unspecified",
                            "cvx": "164",
                            "beginAge": "10 years"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 4",
                    "age": [
                        {}
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "2 years - 4 days",
                            "minInt": "2 years",
                            "earliestRecInt": "2 years",
                            "latestRecInt": "4 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "meningococcal B, OMV",
                            "cvx": "163",
                            "beginAge": "10 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "meningococcal B, OMV",
                            "cvx": "163",
                            "beginAge": "10 years"
                        },
                        {
                            "vaccineType": "meningococcal B, unspecified",
                            "cvx": "164",
                            "beginAge": "10 years"
                        }
                    ],
                    "recurringDose": "Yes"
                }
            ]
        },
        {
            "seriesName": "Meningococcal B risk 3-dose series MenB-FHbp Increased Risk",
            "targetDisease": "Meningococcal B",
            "vaccineGroup": "Meningococcal B",
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "minAgeToStart": "10 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Undergoing elective splenectomy",
                        "code": "002"
                    },
                    "description": "Administered to persons who are undergoing elective splenectomy if they have not previously received Meningococcal B vaccine.",
                    "beginAge": "10 years",
                    "guidance": "Vaccination 14 or more days before splenectomy is suggested."
                },
                {
                    "observationCode": {
                        "text": "Microbiologists routinely exposed to Neisseria meningitidis",
                        "code": "050"
                    },
                    "description": "Administer to microbiologists routinely exposed to isolates of Neisseria meningitidis.",
                    "beginAge": "10 years"
                },
                {
                    "observationCode": {
                        "text": "Persons at risk during an outbreak",
                        "code": "070"
                    },
                    "description": "Administer to persons identified as at increased risk because of a serogroup B meningococcal disease outbreak",
                    "beginAge": "10 years"
                },
                {
                    "observationCode": {
                        "text": "Persistent complement, properdin, or factor B deficiency",
                        "code": "151"
                    },
                    "description": "Administer to persons 10 years or older with persistent complement component deficiencies, including inherited or chronic deficiencies in C3, C5-9, properdin, factor D, factor H, or who are taking eculizumab (Soliris).",
                    "beginAge": "10 years"
                },
                {
                    "observationCode": {
                        "text": "Anatomical or functional asplenia",
                        "code": "160"
                    },
                    "description": "Administer to persons with anatomic or functional asplenia, including sickle cell disease.",
                    "beginAge": "10 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "10 years - 4 days",
                            "minAge": "10 years",
                            "earliestRecAge": "10 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "meningococcal B, recombinant",
                            "cvx": "162",
                            "beginAge": "10 years",
                            "tradeName": "Trumenba",
                            "mvx": "PFR",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "meningococcal B, recombinant",
                            "cvx": "162",
                            "beginAge": "10 years - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {}
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "4 weeks",
                            "latestRecInt": "8 weeks",
                            "cessationDate": "42873"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "4 weeks",
                            "latestRecInt": "8 weeks",
                            "effectiveDate": "42874"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "meningococcal B, recombinant",
                            "cvx": "162",
                            "beginAge": "10 years",
                            "tradeName": "Trumenba",
                            "mvx": "PFR",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "meningococcal B, recombinant",
                            "cvx": "162",
                            "beginAge": "10 years"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Evaluation",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Dose is not required once 6 months has passed since the previous dose",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Interval",
                                            "interval": "6 months"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 3",
                    "age": [
                        {}
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "4 months",
                            "earliestRecInt": "4 months",
                            "cessationDate": "42873"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "4 months - 4 days",
                            "minInt": "4 months",
                            "earliestRecInt": "4 months",
                            "effectiveDate": "42874"
                        },
                        {
                            "fromPrevious": "N",
                            "fromTargetDose": "1",
                            "absMinInt": "0 days",
                            "minInt": "6 months",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "meningococcal B, recombinant",
                            "cvx": "162",
                            "beginAge": "10 years",
                            "tradeName": "Trumenba",
                            "mvx": "PFR",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "meningococcal B, recombinant",
                            "cvx": "162",
                            "beginAge": "10 years"
                        },
                        {
                            "vaccineType": "meningococcal B, unspecified",
                            "cvx": "164",
                            "beginAge": "10 years"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 4",
                    "age": [
                        {}
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "1 years - 4 days",
                            "minInt": "1 year",
                            "earliestRecInt": "1 year"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "meningococcal B, recombinant",
                            "cvx": "162",
                            "beginAge": "10 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "meningococcal B, recombinant",
                            "cvx": "162",
                            "beginAge": "10 years"
                        },
                        {
                            "vaccineType": "meningococcal B, unspecified",
                            "cvx": "164",
                            "beginAge": "10 years"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 5",
                    "age": [
                        {}
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "2 years - 4 days",
                            "minInt": "2 years",
                            "earliestRecInt": "2 years",
                            "latestRecInt": "4 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "meningococcal B, recombinant",
                            "cvx": "162",
                            "beginAge": "10 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "meningococcal B, recombinant",
                            "cvx": "162",
                            "beginAge": "10 years"
                        },
                        {
                            "vaccineType": "meningococcal B, unspecified",
                            "cvx": "164",
                            "beginAge": "10 years"
                        }
                    ],
                    "recurringDose": "Yes"
                }
            ]
        }
    ]
});