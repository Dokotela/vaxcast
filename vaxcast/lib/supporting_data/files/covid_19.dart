import 'package:vaxcast/vaxcast.dart';

final covid19 = AntigenSupportingData.fromJson({
    "targetDisease": "COVID-19",
    "vaccineGroup": "COVID-19",
    "contraindications": {
        "vaccineGroup": {
            "contraindication": [
                {
                    "observationCode": "122",
                    "observationTitle": "Severe allergic reaction after previous dose of COVID-19",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of COVID-19 vaccine."
                },
                {
                    "observationCode": "080",
                    "observationTitle": "Adverse reaction to vaccine component",
                    "contraindicationText": "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
                }
            ]
        },
        "vaccine": {
            "contraindication": [
                {
                    "observationCode": "187",
                    "observationTitle": "Allergic reaction to polysorbate 80",
                    "contraindicationText": "Do not vaccinate if the patient has had an immediate allergic reaction of any severity to polysorbate 80.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212"
                        }
                    ]
                },
                {
                    "observationCode": "188",
                    "observationTitle": "Known allergy to Polyethylene glycol [PEG]",
                    "contraindicationText": "Do not vaccinate if the patient has known allergy to Polyethylene glycol [PEG].",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208"
                        }
                    ]
                }
            ]
        }
    },
    "series": [
        {
            "seriesName": "3-dose Pfizer series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccines and other vaccines may now be administered without regard to timing. This includes simultaneous administration of COVID-19 vaccines and other vaccines on the same day, as well as coadministration within 14 days. It is unknown whether reactogenicity of COVID-19 vaccine is increased with coadministration, including with other vaccines known to be more reactogenic, such as adjuvanted vaccines or live vaccines. When deciding whether to coadminister another vaccine(s) with COVID-19 vaccines, providers should consider whether the patient is behind or at risk of becoming behind on recommended vaccines, their risk of vaccine-preventable disease (e.g., during an outbreak or occupational exposures), and the reactogenicity profile of the vaccines.",
                "Vaccination should be deferred until recovery from acute illness (if person had symptoms) and criteria have been met to discontinue isolation.",
                "Current evidence suggests that the risk of SARS-CoV-2 reinfection is low in the months after initial infection but may increase with time due to waning immunity. Thus, people with a history of MIS-C or MIS-A should consider delaying vaccination until they have recovered from illness and for 90 days after the date of diagnosis of MIS-C or MIS-A, recognizing that the risk of reinfection and, therefore, the benefit from vaccination, might increase with time following initial infection.",
                "Currently no data on safety or efficacy of COVID-19 vaccination in persons who received monoclonal antibodies or convalescent plasma as part of COVID-19 treatment. Vaccination should be deferred for at least 90 days to avoid interference of the treatment with vaccine-induced immune responses."
            ],
            "seriesType": "Standard",
            "selectSeries": {
                "defaultSeries": "Yes",
                "productPath": "Yes",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "1"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "21 days - 4 days",
                            "minInt": "21 days",
                            "earliestRecInt": "21 days",
                            "latestRecInt": "42 days"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "6 months - 4 days",
                            "minInt": "6 months",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "2-dose Moderna series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccines and other vaccines may now be administered without regard to timing. This includes simultaneous administration of COVID-19 vaccines and other vaccines on the same day, as well as coadministration within 14 days. It is unknown whether reactogenicity of COVID-19 vaccine is increased with coadministration, including with other vaccines known to be more reactogenic, such as adjuvanted vaccines or live vaccines. When deciding whether to coadminister another vaccine(s) with COVID-19 vaccines, providers should consider whether the patient is behind or at risk of becoming behind on recommended vaccines, their risk of vaccine-preventable disease (e.g., during an outbreak or occupational exposures), and the reactogenicity profile of the vaccines.",
                "Vaccination should be deferred until recovery from acute illness (if person had symptoms) and criteria have been met to discontinue isolation.",
                "Current evidence suggests that the risk of SARS-CoV-2 reinfection is low in the months after initial infection but may increase with time due to waning immunity. Thus, people with a history of MIS-C or MIS-A should consider delaying vaccination until they have recovered from illness and for 90 days after the date of diagnosis of MIS-C or MIS-A, recognizing that the risk of reinfection and, therefore, the benefit from vaccination, might increase with time following initial infection.",
                "Currently no data on safety or efficacy of COVID-19 vaccination in persons who received monoclonal antibodies or convalescent plasma as part of COVID-19 treatment. Vaccination should be deferred for at least 90 days to avoid interference of the treatment with vaccine-induced immune responses.",
                "If age 12 through 17 years and Moderna vaccine inadvertently administered instead of Pfizer-BioNTech as the first dose, may administer Moderna vaccine as the second dose (as off-label use, because Moderna vaccine is not authorized in this age group)."
            ],
            "seriesType": "Standard",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "2"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "208; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "208; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "1-dose Janssen series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccines and other vaccines may now be administered without regard to timing. This includes simultaneous administration of COVID-19 vaccines and other vaccines on the same day, as well as coadministration within 14 days. It is unknown whether reactogenicity of COVID-19 vaccine is increased with coadministration, including with other vaccines known to be more reactogenic, such as adjuvanted vaccines or live vaccines. When deciding whether to coadminister another vaccine(s) with COVID-19 vaccines, providers should consider whether the patient is behind or at risk of becoming behind on recommended vaccines, their risk of vaccine-preventable disease (e.g., during an outbreak or occupational exposures), and the reactogenicity profile of the vaccines.",
                "Vaccination should be deferred until recovery from acute illness (if person had symptoms) and criteria have been met to discontinue isolation.",
                "Current evidence suggests that the risk of SARS-CoV-2 reinfection is low in the months after initial infection but may increase with time due to waning immunity. Thus, people with a history of MIS-C or MIS-A should consider delaying vaccination until they have recovered from illness and for 90 days after the date of diagnosis of MIS-C or MIS-A, recognizing that the risk of reinfection and, therefore, the benefit from vaccination, might increase with time following initial infection.",
                "Currently no data on safety or efficacy of COVID-19 vaccination in persons who received monoclonal antibodies or convalescent plasma as part of COVID-19 treatment. Vaccination should be deferred for at least 90 days to avoid interference of the treatment with vaccine-induced immune responses."
            ],
            "seriesType": "Standard",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "3"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 208; 210; 211; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "3-dose mRNA series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccines and other vaccines may now be administered without regard to timing. This includes simultaneous administration of COVID-19 vaccines and other vaccines on the same day, as well as coadministration within 14 days. It is unknown whether reactogenicity of COVID-19 vaccine is increased with coadministration, including with other vaccines known to be more reactogenic, such as adjuvanted vaccines or live vaccines. When deciding whether to coadminister another vaccine(s) with COVID-19 vaccines, providers should consider whether the patient is behind or at risk of becoming behind on recommended vaccines, their risk of vaccine-preventable disease (e.g., during an outbreak or occupational exposures), and the reactogenicity profile of the vaccines.",
                "Vaccination should be deferred until recovery from acute illness (if person had symptoms) and criteria have been met to discontinue isolation.",
                "Current evidence suggests that the risk of SARS-CoV-2 reinfection is low in the months after initial infection but may increase with time due to waning immunity. Thus, people with a history of MIS-C or MIS-A should consider delaying vaccination until they have recovered from illness and for 90 days after the date of diagnosis of MIS-C or MIS-A, recognizing that the risk of reinfection and, therefore, the benefit from vaccination, might increase with time following initial infection.",
                "Currently no data on safety or efficacy of COVID-19 vaccination in persons who received monoclonal antibodies or convalescent plasma as part of COVID-19 treatment. Vaccination should be deferred for at least 90 days to avoid interference of the treatment with vaccine-induced immune responses."
            ],
            "seriesType": "Standard",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "4"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "6 months - 4 days",
                            "minInt": "6 months",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not required if any non-Pfizer vaccine is administered",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count by Age",
                                            "doseCount": "0",
                                            "doseType": "Total",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "207; 213"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Risk 3-dose Immunocompromised Pfizer series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "A patients clinical team is best positioned to determine the degree of immune compromise and appropriate timing of vaccination.Factors to consider in assessing the general level of immune competence in a patient include disease severity, duration, clinical stability, complications, comorbidities, and any potentially immune-suppressing treatment.",
                "COVID-19 vaccines and other vaccines may now be administered without regard to timing. This includes simultaneous administration of COVID-19 vaccines and other vaccines on the same day, as well as coadministration within 14 days. It is unknown whether reactogenicity of COVID-19 vaccine is increased with coadministration, including with other vaccines known to be more reactogenic, such as adjuvanted vaccines or live vaccines. When deciding whether to coadminister another vaccine(s) with COVID-19 vaccines, providers should consider whether the patient is behind or at risk of becoming behind on recommended vaccines, their risk of vaccine-preventable disease (e.g., during an outbreak or occupational exposures), and the reactogenicity profile of the vaccines.",
                "Vaccination should be deferred until recovery from acute illness (if person had symptoms) and criteria have been met to discontinue isolation.",
                "Current evidence suggests that the risk of SARS-CoV-2 reinfection is low in the months after initial infection but may increase with time due to waning immunity. Thus, people with a history of MIS-C or MIS-A should consider delaying vaccination until they have recovered from illness and for 90 days after the date of diagnosis of MIS-C or MIS-A, recognizing that the risk of reinfection and, therefore, the benefit from vaccination, might increase with time following initial infection.",
                "Currently no data on safety or efficacy of COVID-19 vaccination in persons who received monoclonal antibodies or convalescent plasma as part of COVID-19 treatment. Vaccination should be deferred for at least 90 days to avoid interference of the treatment with vaccine-induced immune responses."
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "Yes",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "1"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Recipient of a hematopoietic stem cell transplant",
                        "code": "004"
                    },
                    "description": "Administer to recipients of a hematopoietic stem cell transplant [HSCT] within 2 years of successful transplantation.",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Severe antibody deficiencies",
                        "code": "145"
                    },
                    "description": "Administer to persons who have severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency).",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                        "code": "147"
                    },
                    "description": "Administer to persons who have complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome).",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                        "code": "148"
                    },
                    "description": "Administer to persons who have partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia).",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                        "code": "153"
                    },
                    "description": "Administer to persons who have a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency).",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - Severely immunocompromised",
                        "code": "154"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are severely immunocompromised [See the CDC general recommendations for a definition of severely immunocompromised].",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Transplantation",
                        "code": "157"
                    },
                    "description": "Administer to persons who have received a transplant.",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Immunosuppressive therapy",
                        "code": "158"
                    },
                    "description": "Administer to persons who are undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies.",
                    "beginAge": "12 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Radiation therapy",
                        "code": "159"
                    },
                    "description": "Administer to persons who are undergoing radiation therapy.",
                    "beginAge": "12 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Active treatement for solid tumors",
                        "code": "189"
                    },
                    "description": "Administer to persons receiving active treatement for solid tumors",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Active treatement for hematologic malignancies",
                        "code": "190"
                    },
                    "description": "Administer to persons receiving active treatement for hematologic malignancies",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Receipt of CAR-T-cell therapy",
                        "code": "191"
                    },
                    "description": "Adminster to persons receiving CAR-T-cell therapy",
                    "beginAge": "12 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "21 days - 4 days",
                            "minInt": "21 days",
                            "earliestRecInt": "21 days",
                            "latestRecInt": "42 days"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Risk 3-dose Immunocompromised Moderna series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "A patients clinical team is best positioned to determine the degree of immune compromise and appropriate timing of vaccination.Factors to consider in assessing the general level of immune competence in a patient include disease severity, duration, clinical stability, complications, comorbidities, and any potentially immune-suppressing treatment.",
                "COVID-19 vaccines and other vaccines may now be administered without regard to timing. This includes simultaneous administration of COVID-19 vaccines and other vaccines on the same day, as well as coadministration within 14 days. It is unknown whether reactogenicity of COVID-19 vaccine is increased with coadministration, including with other vaccines known to be more reactogenic, such as adjuvanted vaccines or live vaccines. When deciding whether to coadminister another vaccine(s) with COVID-19 vaccines, providers should consider whether the patient is behind or at risk of becoming behind on recommended vaccines, their risk of vaccine-preventable disease (e.g., during an outbreak or occupational exposures), and the reactogenicity profile of the vaccines.",
                "Vaccination should be deferred until recovery from acute illness (if person had symptoms) and criteria have been met to discontinue isolation.",
                "Current evidence suggests that the risk of SARS-CoV-2 reinfection is low in the months after initial infection but may increase with time due to waning immunity. Thus, people with a history of MIS-C or MIS-A should consider delaying vaccination until they have recovered from illness and for 90 days after the date of diagnosis of MIS-C or MIS-A, recognizing that the risk of reinfection and, therefore, the benefit from vaccination, might increase with time following initial infection.",
                "Currently no data on safety or efficacy of COVID-19 vaccination in persons who received monoclonal antibodies or convalescent plasma as part of COVID-19 treatment. Vaccination should be deferred for at least 90 days to avoid interference of the treatment with vaccine-induced immune responses.",
                "If age 12 through 17 years and Moderna vaccine inadvertently administered instead of Pfizer-BioNTech as the first dose, may administer Moderna vaccine as the second dose (as off-label use, because Moderna vaccine is not authorized in this age group)."
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "2"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Recipient of a hematopoietic stem cell transplant",
                        "code": "004"
                    },
                    "description": "Administer to recipients of a hematopoietic stem cell transplant [HSCT] within 2 years of successful transplantation.",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Severe antibody deficiencies",
                        "code": "145"
                    },
                    "description": "Administer to persons who have severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency).",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                        "code": "147"
                    },
                    "description": "Administer to persons who have complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome).",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                        "code": "148"
                    },
                    "description": "Administer to persons who have partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia).",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                        "code": "153"
                    },
                    "description": "Administer to persons who have a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency).",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - Severely immunocompromised",
                        "code": "154"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are severely immunocompromised [See the CDC general recommendations for a definition of severely immunocompromised].",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Transplantation",
                        "code": "157"
                    },
                    "description": "Administer to persons who have received a transplant.",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Immunosuppressive therapy",
                        "code": "158"
                    },
                    "description": "Administer to persons who are undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies.",
                    "beginAge": "18 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Radiation therapy",
                        "code": "159"
                    },
                    "description": "Administer to persons who are undergoing radiation therapy.",
                    "beginAge": "18 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Active treatement for solid tumors",
                        "code": "189"
                    },
                    "description": "Administer to persons receiving active treatement for solid tumors",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Active treatement for hematologic malignancies",
                        "code": "190"
                    },
                    "description": "Administer to persons receiving active treatement for hematologic malignancies",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Receipt of CAR-T-cell therapy",
                        "code": "191"
                    },
                    "description": "Adminster to persons receiving CAR-T-cell therapy",
                    "beginAge": "18 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "208; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "208; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "208; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Risk 1-dose Immunocompromised Janssen series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "A patients clinical team is best positioned to determine the degree of immune compromise and appropriate timing of vaccination.Factors to consider in assessing the general level of immune competence in a patient include disease severity, duration, clinical stability, complications, comorbidities, and any potentially immune-suppressing treatment.",
                "COVID-19 vaccines and other vaccines may now be administered without regard to timing. This includes simultaneous administration of COVID-19 vaccines and other vaccines on the same day, as well as coadministration within 14 days. It is unknown whether reactogenicity of COVID-19 vaccine is increased with coadministration, including with other vaccines known to be more reactogenic, such as adjuvanted vaccines or live vaccines. When deciding whether to coadminister another vaccine(s) with COVID-19 vaccines, providers should consider whether the patient is behind or at risk of becoming behind on recommended vaccines, their risk of vaccine-preventable disease (e.g., during an outbreak or occupational exposures), and the reactogenicity profile of the vaccines.",
                "Vaccination should be deferred until recovery from acute illness (if person had symptoms) and criteria have been met to discontinue isolation.",
                "Current evidence suggests that the risk of SARS-CoV-2 reinfection is low in the months after initial infection but may increase with time due to waning immunity. Thus, people with a history of MIS-C or MIS-A should consider delaying vaccination until they have recovered from illness and for 90 days after the date of diagnosis of MIS-C or MIS-A, recognizing that the risk of reinfection and, therefore, the benefit from vaccination, might increase with time following initial infection.",
                "Currently no data on safety or efficacy of COVID-19 vaccination in persons who received monoclonal antibodies or convalescent plasma as part of COVID-19 treatment. Vaccination should be deferred for at least 90 days to avoid interference of the treatment with vaccine-induced immune responses."
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "3"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Recipient of a hematopoietic stem cell transplant",
                        "code": "004"
                    },
                    "description": "Administer to recipients of a hematopoietic stem cell transplant [HSCT] within 2 years of successful transplantation.",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Severe antibody deficiencies",
                        "code": "145"
                    },
                    "description": "Administer to persons who have severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency).",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                        "code": "147"
                    },
                    "description": "Administer to persons who have complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome).",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                        "code": "148"
                    },
                    "description": "Administer to persons who have partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia).",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                        "code": "153"
                    },
                    "description": "Administer to persons who have a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency).",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - Severely immunocompromised",
                        "code": "154"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are severely immunocompromised [See the CDC general recommendations for a definition of severely immunocompromised].",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Transplantation",
                        "code": "157"
                    },
                    "description": "Administer to persons who have received a transplant.",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Immunosuppressive therapy",
                        "code": "158"
                    },
                    "description": "Administer to persons who are undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies.",
                    "beginAge": "18 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Radiation therapy",
                        "code": "159"
                    },
                    "description": "Administer to persons who are undergoing radiation therapy.",
                    "beginAge": "18 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Active treatement for solid tumors",
                        "code": "189"
                    },
                    "description": "Administer to persons receiving active treatement for solid tumors",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Active treatement for hematologic malignancies",
                        "code": "190"
                    },
                    "description": "Administer to persons receiving active treatement for hematologic malignancies",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Receipt of CAR-T-cell therapy",
                        "code": "191"
                    },
                    "description": "Adminster to persons receiving CAR-T-cell therapy",
                    "beginAge": "18 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 208; 210; 211; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Risk 3-dose Immunocompromised mRNA series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "A patients clinical team is best positioned to determine the degree of immune compromise and appropriate timing of vaccination.Factors to consider in assessing the general level of immune competence in a patient include disease severity, duration, clinical stability, complications, comorbidities, and any potentially immune-suppressing treatment.",
                "COVID-19 vaccines and other vaccines may now be administered without regard to timing. This includes simultaneous administration of COVID-19 vaccines and other vaccines on the same day, as well as coadministration within 14 days. It is unknown whether reactogenicity of COVID-19 vaccine is increased with coadministration, including with other vaccines known to be more reactogenic, such as adjuvanted vaccines or live vaccines. When deciding whether to coadminister another vaccine(s) with COVID-19 vaccines, providers should consider whether the patient is behind or at risk of becoming behind on recommended vaccines, their risk of vaccine-preventable disease (e.g., during an outbreak or occupational exposures), and the reactogenicity profile of the vaccines.",
                "Vaccination should be deferred until recovery from acute illness (if person had symptoms) and criteria have been met to discontinue isolation.",
                "Current evidence suggests that the risk of SARS-CoV-2 reinfection is low in the months after initial infection but may increase with time due to waning immunity. Thus, people with a history of MIS-C or MIS-A should consider delaying vaccination until they have recovered from illness and for 90 days after the date of diagnosis of MIS-C or MIS-A, recognizing that the risk of reinfection and, therefore, the benefit from vaccination, might increase with time following initial infection.",
                "Currently no data on safety or efficacy of COVID-19 vaccination in persons who received monoclonal antibodies or convalescent plasma as part of COVID-19 treatment. Vaccination should be deferred for at least 90 days to avoid interference of the treatment with vaccine-induced immune responses."
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "4"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Recipient of a hematopoietic stem cell transplant",
                        "code": "004"
                    },
                    "description": "Administer to recipients of a hematopoietic stem cell transplant [HSCT] within 2 years of successful transplantation.",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Severe antibody deficiencies",
                        "code": "145"
                    },
                    "description": "Administer to persons who have severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency).",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                        "code": "147"
                    },
                    "description": "Administer to persons who have complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome).",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                        "code": "148"
                    },
                    "description": "Administer to persons who have partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia).",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                        "code": "153"
                    },
                    "description": "Administer to persons who have a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency).",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - Severely immunocompromised",
                        "code": "154"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are severely immunocompromised [See the CDC general recommendations for a definition of severely immunocompromised].",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Transplantation",
                        "code": "157"
                    },
                    "description": "Administer to persons who have received a transplant.",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Immunosuppressive therapy",
                        "code": "158"
                    },
                    "description": "Administer to persons who are undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies.",
                    "beginAge": "12 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Radiation therapy",
                        "code": "159"
                    },
                    "description": "Administer to persons who are undergoing radiation therapy.",
                    "beginAge": "12 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Active treatement for solid tumors",
                        "code": "189"
                    },
                    "description": "Administer to persons receiving active treatement for solid tumors",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Active treatement for hematologic malignancies",
                        "code": "190"
                    },
                    "description": "Administer to persons receiving active treatement for hematologic malignancies",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Receipt of CAR-T-cell therapy",
                        "code": "191"
                    },
                    "description": "Adminster to persons receiving CAR-T-cell therapy",
                    "beginAge": "12 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Risk 3-dose Increased Risk Pfizer series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccines and other vaccines may now be administered without regard to timing. This includes simultaneous administration of COVID-19 vaccines and other vaccines on the same day, as well as coadministration within 14 days. It is unknown whether reactogenicity of COVID-19 vaccine is increased with coadministration, including with other vaccines known to be more reactogenic, such as adjuvanted vaccines or live vaccines. When deciding whether to coadminister another vaccine(s) with COVID-19 vaccines, providers should consider whether the patient is behind or at risk of becoming behind on recommended vaccines, their risk of vaccine-preventable disease (e.g., during an outbreak or occupational exposures), and the reactogenicity profile of the vaccines.",
                "Vaccination should be deferred until recovery from acute illness (if person had symptoms) and criteria have been met to discontinue isolation.",
                "Current evidence suggests that the risk of SARS-CoV-2 reinfection is low in the months after initial infection but may increase with time due to waning immunity. Thus, people with a history of MIS-C or MIS-A should consider delaying vaccination until they have recovered from illness and for 90 days after the date of diagnosis of MIS-C or MIS-A, recognizing that the risk of reinfection and, therefore, the benefit from vaccination, might increase with time following initial infection.",
                "Currently no data on safety or efficacy of COVID-19 vaccination in persons who received monoclonal antibodies or convalescent plasma as part of COVID-19 treatment. Vaccination should be deferred for at least 90 days to avoid interference of the treatment with vaccine-induced immune responses."
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "B",
                "seriesPreference": "5"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Pregnancy",
                        "code": "007"
                    },
                    "description": "Administer to persons who are pregnant.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Diabetes",
                        "code": "014"
                    },
                    "description": "Administer to persons who have diabetes.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Chronic liver disease",
                        "code": "015"
                    },
                    "description": "Administer to persons who have chronic liver disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Chronic heart disease",
                        "code": "016"
                    },
                    "description": "Administer to persons who have chronic heart disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks. Includes heart failure, coronary artery disease, etc."
                },
                {
                    "observationCode": {
                        "text": "Chronic lung disease",
                        "code": "017"
                    },
                    "description": "Administer to persons who have chronic lung disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks. Includes COPD"
                },
                {
                    "observationCode": {
                        "text": "Asthma",
                        "code": "027"
                    },
                    "description": "Administer to persons who have asthma.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years with moderate-to-severe asthma should receive a booster shot. Persons aged 18-49 years with moderate-to-severe asthma may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Smoke Cigarettes",
                        "code": "042"
                    },
                    "description": "Administer to persons who smoke cigarettes.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years who smoke cigarettes (current or former) should receive a booster shot. Persons aged 18-49 years smoke cigarettes (current or former) may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Less severe antibody deficiencies",
                        "code": "146"
                    },
                    "description": "Administer to persons who have less severe B-lymphocyte [humoral] - antibody deficiencies [e.g., selective IgA deficiency and IgG subclass deficiency].",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Persistent complement, properdin, or factor B deficiency",
                        "code": "151"
                    },
                    "description": "Administer to persons who have persistent complement component deficiencies, including inherited or chronic deficiencies in C3, C5-9, properdin, factor D, factor H, or who are taking eculizumab [Soliris].",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - not severely immunocompromised",
                        "code": "155"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are not severely immunocompromised [See the CDC general recommendations for a definition of severely immunocompromised].",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Anatomical or functional asplenia",
                        "code": "160"
                    },
                    "description": "Administer to persons with anatomic or functional asplenia, including sickle cell disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Chronic renal disease",
                        "code": "161"
                    },
                    "description": "Administer to persons who have chronic renal disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Occupations at increased risk for COVID-19 exposure and transmission",
                        "code": "195"
                    },
                    "description": "Administer to persons with occupations at increased risk for COVID-19 exposure and transmission.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Occupations at increased risk for COVID-19 exposure and transmission and may get a booster shot based on their individual benefits and risks. Occupatoins at increased risk can be found online at: https://www.cdc.gov/coronavirus/2019-ncov/vaccines/booster-shot.html#HighRisk"
                },
                {
                    "observationCode": {
                        "text": "Residing in an institutional setting at increased risk for COVID-19 exposure and transmission",
                        "code": "196"
                    },
                    "description": "Administer to persons residing in an institutional setting at increased risk for COVID-19 exposure and transmission",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Institutional settings such as health care, schools, correctional facilities, and homeless shelters at increased risk for COVID-19 exposure and transmission and may get a booster shot based on their individual benefits and risks including"
                },
                {
                    "observationCode": {
                        "text": "Resident of long term care facility",
                        "code": "197"
                    },
                    "description": "Administer to persons residing in a long term care facility",
                    "beginAge": "18 years",
                    "guidance": "Persons aged 18 years and older should receive a booster shot."
                },
                {
                    "observationCode": {
                        "text": "Cancer",
                        "code": "198"
                    },
                    "description": "Administer to persons with cancer",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Interstitial lung disease",
                        "code": "199"
                    },
                    "description": "Administer to persons with interstitial lung disease",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Cystic fibrosis",
                        "code": "200"
                    },
                    "description": "Administer to persons with cystic fibrosis",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Pulmonary hypertension",
                        "code": "201"
                    },
                    "description": "Administer to persons with pulmonary hypertension",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Dementia",
                        "code": "202"
                    },
                    "description": "Administer to persons with dementia",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Down syndrome",
                        "code": "203"
                    },
                    "description": "Administer to persons with down syndrome",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Obesity",
                        "code": "204"
                    },
                    "description": "Administer to persons with obesity",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks. Includes BMI calculations of overweight, obese, or severely obese"
                },
                {
                    "observationCode": {
                        "text": "Thalassemia",
                        "code": "205"
                    },
                    "description": "Administer to persons with thalassemia",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Cerebrovascular disease",
                        "code": "206"
                    },
                    "description": "Administer to persons with cerebrovascular disease such as having a stroke",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Substance use disorder",
                        "code": "207"
                    },
                    "description": "Administer to persons with substance use disorders (e.g., alcohol, opiod, cocaine)",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "21 days - 4 days",
                            "minInt": "21 days",
                            "earliestRecInt": "21 days",
                            "latestRecInt": "42 days"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "6 months - 4 days",
                            "minInt": "6 months",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Risk 2-dose Increased Risk Moderna series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccines and other vaccines may now be administered without regard to timing. This includes simultaneous administration of COVID-19 vaccines and other vaccines on the same day, as well as coadministration within 14 days. It is unknown whether reactogenicity of COVID-19 vaccine is increased with coadministration, including with other vaccines known to be more reactogenic, such as adjuvanted vaccines or live vaccines. When deciding whether to coadminister another vaccine(s) with COVID-19 vaccines, providers should consider whether the patient is behind or at risk of becoming behind on recommended vaccines, their risk of vaccine-preventable disease (e.g., during an outbreak or occupational exposures), and the reactogenicity profile of the vaccines.",
                "Vaccination should be deferred until recovery from acute illness (if person had symptoms) and criteria have been met to discontinue isolation.",
                "Current evidence suggests that the risk of SARS-CoV-2 reinfection is low in the months after initial infection but may increase with time due to waning immunity. Thus, people with a history of MIS-C or MIS-A should consider delaying vaccination until they have recovered from illness and for 90 days after the date of diagnosis of MIS-C or MIS-A, recognizing that the risk of reinfection and, therefore, the benefit from vaccination, might increase with time following initial infection.",
                "Currently no data on safety or efficacy of COVID-19 vaccination in persons who received monoclonal antibodies or convalescent plasma as part of COVID-19 treatment. Vaccination should be deferred for at least 90 days to avoid interference of the treatment with vaccine-induced immune responses.",
                "If age 12 through 17 years and Moderna vaccine inadvertently administered instead of Pfizer-BioNTech as the first dose, may administer Moderna vaccine as the second dose (as off-label use, because Moderna vaccine is not authorized in this age group)."
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "B",
                "seriesPreference": "6"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Pregnancy",
                        "code": "007"
                    },
                    "description": "Administer to persons who are pregnant.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Diabetes",
                        "code": "014"
                    },
                    "description": "Administer to persons who have diabetes.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Chronic liver disease",
                        "code": "015"
                    },
                    "description": "Administer to persons who have chronic liver disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Chronic heart disease",
                        "code": "016"
                    },
                    "description": "Administer to persons who have chronic heart disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks. Includes heart failure, coronary artery disease, etc."
                },
                {
                    "observationCode": {
                        "text": "Chronic lung disease",
                        "code": "017"
                    },
                    "description": "Administer to persons who have chronic lung disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks. Includes COPD"
                },
                {
                    "observationCode": {
                        "text": "Asthma",
                        "code": "027"
                    },
                    "description": "Administer to persons who have asthma.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years with moderate-to-severe asthma should receive a booster shot. Persons aged 18-49 years with moderate-to-severe asthma may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Smoke Cigarettes",
                        "code": "042"
                    },
                    "description": "Administer to persons who smoke cigarettes.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years who smoke cigarettes (current or former) should receive a booster shot. Persons aged 18-49 years smoke cigarettes (current or former) may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Less severe antibody deficiencies",
                        "code": "146"
                    },
                    "description": "Administer to persons who have less severe B-lymphocyte [humoral] - antibody deficiencies [e.g., selective IgA deficiency and IgG subclass deficiency].",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Persistent complement, properdin, or factor B deficiency",
                        "code": "151"
                    },
                    "description": "Administer to persons who have persistent complement component deficiencies, including inherited or chronic deficiencies in C3, C5-9, properdin, factor D, factor H, or who are taking eculizumab [Soliris].",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - not severely immunocompromised",
                        "code": "155"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are not severely immunocompromised [See the CDC general recommendations for a definition of severely immunocompromised].",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Anatomical or functional asplenia",
                        "code": "160"
                    },
                    "description": "Administer to persons with anatomic or functional asplenia, including sickle cell disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Chronic renal disease",
                        "code": "161"
                    },
                    "description": "Administer to persons who have chronic renal disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Occupations at increased risk for COVID-19 exposure and transmission",
                        "code": "195"
                    },
                    "description": "Administer to persons with occupations at increased risk for COVID-19 exposure and transmission.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Occupations at increased risk for COVID-19 exposure and transmission and may get a booster shot based on their individual benefits and risks. Occupatoins at increased risk can be found online at: https://www.cdc.gov/coronavirus/2019-ncov/vaccines/booster-shot.html#HighRisk"
                },
                {
                    "observationCode": {
                        "text": "Residing in an institutional setting at increased risk for COVID-19 exposure and transmission",
                        "code": "196"
                    },
                    "description": "Administer to persons residing in an institutional setting at increased risk for COVID-19 exposure and transmission",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Institutional settings such as health care, schools, correctional facilities, and homeless shelters at increased risk for COVID-19 exposure and transmission and may get a booster shot based on their individual benefits and risks including"
                },
                {
                    "observationCode": {
                        "text": "Resident of long term care facility",
                        "code": "197"
                    },
                    "description": "Administer to persons residing in a long term care facility",
                    "beginAge": "18 years",
                    "guidance": "Persons aged 18 years and older should receive a booster shot."
                },
                {
                    "observationCode": {
                        "text": "Cancer",
                        "code": "198"
                    },
                    "description": "Administer to persons with cancer",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Interstitial lung disease",
                        "code": "199"
                    },
                    "description": "Administer to persons with interstitial lung disease",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Cystic fibrosis",
                        "code": "200"
                    },
                    "description": "Administer to persons with cystic fibrosis",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Pulmonary hypertension",
                        "code": "201"
                    },
                    "description": "Administer to persons with pulmonary hypertension",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Dementia",
                        "code": "202"
                    },
                    "description": "Administer to persons with dementia",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Down syndrome",
                        "code": "203"
                    },
                    "description": "Administer to persons with down syndrome",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Obesity",
                        "code": "204"
                    },
                    "description": "Administer to persons with obesity",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks. Includes BMI calculations of overweight, obese, or severely obese"
                },
                {
                    "observationCode": {
                        "text": "Thalassemia",
                        "code": "205"
                    },
                    "description": "Administer to persons with thalassemia",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Cerebrovascular disease",
                        "code": "206"
                    },
                    "description": "Administer to persons with cerebrovascular disease such as having a stroke",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Substance use disorder",
                        "code": "207"
                    },
                    "description": "Administer to persons with substance use disorders (e.g., alcohol, opiod, cocaine)",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "208; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "208; 210; 211; 212; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Risk 1-dose Increased Risk Janssen series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccines and other vaccines may now be administered without regard to timing. This includes simultaneous administration of COVID-19 vaccines and other vaccines on the same day, as well as coadministration within 14 days. It is unknown whether reactogenicity of COVID-19 vaccine is increased with coadministration, including with other vaccines known to be more reactogenic, such as adjuvanted vaccines or live vaccines. When deciding whether to coadminister another vaccine(s) with COVID-19 vaccines, providers should consider whether the patient is behind or at risk of becoming behind on recommended vaccines, their risk of vaccine-preventable disease (e.g., during an outbreak or occupational exposures), and the reactogenicity profile of the vaccines.",
                "Vaccination should be deferred until recovery from acute illness (if person had symptoms) and criteria have been met to discontinue isolation.",
                "Current evidence suggests that the risk of SARS-CoV-2 reinfection is low in the months after initial infection but may increase with time due to waning immunity. Thus, people with a history of MIS-C or MIS-A should consider delaying vaccination until they have recovered from illness and for 90 days after the date of diagnosis of MIS-C or MIS-A, recognizing that the risk of reinfection and, therefore, the benefit from vaccination, might increase with time following initial infection.",
                "Currently no data on safety or efficacy of COVID-19 vaccination in persons who received monoclonal antibodies or convalescent plasma as part of COVID-19 treatment. Vaccination should be deferred for at least 90 days to avoid interference of the treatment with vaccine-induced immune responses."
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "B"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Pregnancy",
                        "code": "007"
                    },
                    "description": "Administer to persons who are pregnant.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Diabetes",
                        "code": "014"
                    },
                    "description": "Administer to persons who have diabetes.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Chronic liver disease",
                        "code": "015"
                    },
                    "description": "Administer to persons who have chronic liver disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Chronic heart disease",
                        "code": "016"
                    },
                    "description": "Administer to persons who have chronic heart disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks. Includes heart failure, coronary artery disease, etc."
                },
                {
                    "observationCode": {
                        "text": "Chronic lung disease",
                        "code": "017"
                    },
                    "description": "Administer to persons who have chronic lung disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks. Includes COPD"
                },
                {
                    "observationCode": {
                        "text": "Asthma",
                        "code": "027"
                    },
                    "description": "Administer to persons who have asthma.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years with moderate-to-severe asthma should receive a booster shot. Persons aged 18-49 years with moderate-to-severe asthma may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Smoke Cigarettes",
                        "code": "042"
                    },
                    "description": "Administer to persons who smoke cigarettes.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years who smoke cigarettes (current or former) should receive a booster shot. Persons aged 18-49 years smoke cigarettes (current or former) may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Less severe antibody deficiencies",
                        "code": "146"
                    },
                    "description": "Administer to persons who have less severe B-lymphocyte [humoral] - antibody deficiencies [e.g., selective IgA deficiency and IgG subclass deficiency].",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Persistent complement, properdin, or factor B deficiency",
                        "code": "151"
                    },
                    "description": "Administer to persons who have persistent complement component deficiencies, including inherited or chronic deficiencies in C3, C5-9, properdin, factor D, factor H, or who are taking eculizumab [Soliris].",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - not severely immunocompromised",
                        "code": "155"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are not severely immunocompromised [See the CDC general recommendations for a definition of severely immunocompromised].",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Anatomical or functional asplenia",
                        "code": "160"
                    },
                    "description": "Administer to persons with anatomic or functional asplenia, including sickle cell disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Chronic renal disease",
                        "code": "161"
                    },
                    "description": "Administer to persons who have chronic renal disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Occupations at increased risk for COVID-19 exposure and transmission",
                        "code": "195"
                    },
                    "description": "Administer to persons with occupations at increased risk for COVID-19 exposure and transmission.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Occupations at increased risk for COVID-19 exposure and transmission and may get a booster shot based on their individual benefits and risks. Occupatoins at increased risk can be found online at: https://www.cdc.gov/coronavirus/2019-ncov/vaccines/booster-shot.html#HighRisk"
                },
                {
                    "observationCode": {
                        "text": "Residing in an institutional setting at increased risk for COVID-19 exposure and transmission",
                        "code": "196"
                    },
                    "description": "Administer to persons residing in an institutional setting at increased risk for COVID-19 exposure and transmission",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Institutional settings such as health care, schools, correctional facilities, and homeless shelters at increased risk for COVID-19 exposure and transmission and may get a booster shot based on their individual benefits and risks including"
                },
                {
                    "observationCode": {
                        "text": "Resident of long term care facility",
                        "code": "197"
                    },
                    "description": "Administer to persons residing in a long term care facility",
                    "beginAge": "18 years",
                    "guidance": "Persons aged 18 years and older should receive a booster shot."
                },
                {
                    "observationCode": {
                        "text": "Cancer",
                        "code": "198"
                    },
                    "description": "Administer to persons with cancer",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Interstitial lung disease",
                        "code": "199"
                    },
                    "description": "Administer to persons with interstitial lung disease",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Cystic fibrosis",
                        "code": "200"
                    },
                    "description": "Administer to persons with cystic fibrosis",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Pulmonary hypertension",
                        "code": "201"
                    },
                    "description": "Administer to persons with pulmonary hypertension",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Dementia",
                        "code": "202"
                    },
                    "description": "Administer to persons with dementia",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Down syndrome",
                        "code": "203"
                    },
                    "description": "Administer to persons with down syndrome",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Obesity",
                        "code": "204"
                    },
                    "description": "Administer to persons with obesity",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks. Includes BMI calculations of overweight, obese, or severely obese"
                },
                {
                    "observationCode": {
                        "text": "Thalassemia",
                        "code": "205"
                    },
                    "description": "Administer to persons with thalassemia",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Cerebrovascular disease",
                        "code": "206"
                    },
                    "description": "Administer to persons with cerebrovascular disease such as having a stroke",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Substance use disorder",
                        "code": "207"
                    },
                    "description": "Administer to persons with substance use disorders (e.g., alcohol, opiod, cocaine)",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 208; 210; 211; 213",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Risk 3-dose Increased Risk mRNA series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccines and other vaccines may now be administered without regard to timing. This includes simultaneous administration of COVID-19 vaccines and other vaccines on the same day, as well as coadministration within 14 days. It is unknown whether reactogenicity of COVID-19 vaccine is increased with coadministration, including with other vaccines known to be more reactogenic, such as adjuvanted vaccines or live vaccines. When deciding whether to coadminister another vaccine(s) with COVID-19 vaccines, providers should consider whether the patient is behind or at risk of becoming behind on recommended vaccines, their risk of vaccine-preventable disease (e.g., during an outbreak or occupational exposures), and the reactogenicity profile of the vaccines.",
                "Vaccination should be deferred until recovery from acute illness (if person had symptoms) and criteria have been met to discontinue isolation.",
                "Current evidence suggests that the risk of SARS-CoV-2 reinfection is low in the months after initial infection but may increase with time due to waning immunity. Thus, people with a history of MIS-C or MIS-A should consider delaying vaccination until they have recovered from illness and for 90 days after the date of diagnosis of MIS-C or MIS-A, recognizing that the risk of reinfection and, therefore, the benefit from vaccination, might increase with time following initial infection.",
                "Currently no data on safety or efficacy of COVID-19 vaccination in persons who received monoclonal antibodies or convalescent plasma as part of COVID-19 treatment. Vaccination should be deferred for at least 90 days to avoid interference of the treatment with vaccine-induced immune responses."
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "B"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Pregnancy",
                        "code": "007"
                    },
                    "description": "Administer to persons who are pregnant.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Diabetes",
                        "code": "014"
                    },
                    "description": "Administer to persons who have diabetes.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Chronic liver disease",
                        "code": "015"
                    },
                    "description": "Administer to persons who have chronic liver disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Chronic heart disease",
                        "code": "016"
                    },
                    "description": "Administer to persons who have chronic heart disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks. Includes heart failure, coronary artery disease, etc."
                },
                {
                    "observationCode": {
                        "text": "Chronic lung disease",
                        "code": "017"
                    },
                    "description": "Administer to persons who have chronic lung disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks. Includes COPD"
                },
                {
                    "observationCode": {
                        "text": "Asthma",
                        "code": "027"
                    },
                    "description": "Administer to persons who have asthma.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years with moderate-to-severe asthma should receive a booster shot. Persons aged 18-49 years with moderate-to-severe asthma may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Smoke Cigarettes",
                        "code": "042"
                    },
                    "description": "Administer to persons who smoke cigarettes.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years who smoke cigarettes (current or former) should receive a booster shot. Persons aged 18-49 years smoke cigarettes (current or former) may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Less severe antibody deficiencies",
                        "code": "146"
                    },
                    "description": "Administer to persons who have less severe B-lymphocyte [humoral] - antibody deficiencies [e.g., selective IgA deficiency and IgG subclass deficiency].",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Persistent complement, properdin, or factor B deficiency",
                        "code": "151"
                    },
                    "description": "Administer to persons who have persistent complement component deficiencies, including inherited or chronic deficiencies in C3, C5-9, properdin, factor D, factor H, or who are taking eculizumab [Soliris].",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - not severely immunocompromised",
                        "code": "155"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are not severely immunocompromised [See the CDC general recommendations for a definition of severely immunocompromised].",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Anatomical or functional asplenia",
                        "code": "160"
                    },
                    "description": "Administer to persons with anatomic or functional asplenia, including sickle cell disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Chronic renal disease",
                        "code": "161"
                    },
                    "description": "Administer to persons who have chronic renal disease.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Occupations at increased risk for COVID-19 exposure and transmission",
                        "code": "195"
                    },
                    "description": "Administer to persons with occupations at increased risk for COVID-19 exposure and transmission.",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Occupations at increased risk for COVID-19 exposure and transmission and may get a booster shot based on their individual benefits and risks. Occupatoins at increased risk can be found online at: https://www.cdc.gov/coronavirus/2019-ncov/vaccines/booster-shot.html#HighRisk"
                },
                {
                    "observationCode": {
                        "text": "Residing in an institutional setting at increased risk for COVID-19 exposure and transmission",
                        "code": "196"
                    },
                    "description": "Administer to persons residing in an institutional setting at increased risk for COVID-19 exposure and transmission",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Institutional settings such as health care, schools, correctional facilities, and homeless shelters at increased risk for COVID-19 exposure and transmission and may get a booster shot based on their individual benefits and risks including"
                },
                {
                    "observationCode": {
                        "text": "Resident of long term care facility",
                        "code": "197"
                    },
                    "description": "Administer to persons residing in a long term care facility",
                    "beginAge": "18 years",
                    "guidance": "Persons aged 18 years and older should receive a booster shot."
                },
                {
                    "observationCode": {
                        "text": "Cancer",
                        "code": "198"
                    },
                    "description": "Administer to persons with cancer",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Interstitial lung disease",
                        "code": "199"
                    },
                    "description": "Administer to persons with interstitial lung disease",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Cystic fibrosis",
                        "code": "200"
                    },
                    "description": "Administer to persons with cystic fibrosis",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Pulmonary hypertension",
                        "code": "201"
                    },
                    "description": "Administer to persons with pulmonary hypertension",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Dementia",
                        "code": "202"
                    },
                    "description": "Administer to persons with dementia",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Down syndrome",
                        "code": "203"
                    },
                    "description": "Administer to persons with down syndrome",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Obesity",
                        "code": "204"
                    },
                    "description": "Administer to persons with obesity",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks. Includes BMI calculations of overweight, obese, or severely obese"
                },
                {
                    "observationCode": {
                        "text": "Thalassemia",
                        "code": "205"
                    },
                    "description": "Administer to persons with thalassemia",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Cerebrovascular disease",
                        "code": "206"
                    },
                    "description": "Administer to persons with cerebrovascular disease such as having a stroke",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                },
                {
                    "observationCode": {
                        "text": "Substance use disorder",
                        "code": "207"
                    },
                    "description": "Administer to persons with substance use disorders (e.g., alcohol, opiod, cocaine)",
                    "beginAge": "18 years",
                    "endAge": "65 years",
                    "guidance": "Persons aged 50-64 years should receive a booster shot. Persons aged 18-49 years may receive a booster shot based on their individual benefits and risks."
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "6 months - 4 days",
                            "minInt": "6 months",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not required if any non-Pfizer vaccine is administered",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count by Age",
                                            "doseCount": "0",
                                            "doseType": "Total",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "207; 213"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "2-dose AstraZeneca Series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroup": "3",
                "seriesPriority": "A",
                "seriesPreference": "1"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19 vaccine, vector-nr, rS-ChAdOx1, PF, 0.5 mL",
                            "cvx": "210",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks",
                            "latestRecInt": "12 weeks"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19 vaccine, vector-nr, rS-ChAdOx1, PF, 0.5 mL",
                            "cvx": "210",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "2-dose BIBP Sinopharm Series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroup": "3",
                "seriesPriority": "A",
                "seriesPreference": "2"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (BIBP, Sinopharm)",
                            "cvx": "510",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "3 weeks",
                            "earliestRecInt": "3 weeks",
                            "latestRecInt": "4 weeks"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (BIBP, Sinopharm)",
                            "cvx": "510",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "2-dose CoronaVac Sinovac Series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroup": "3",
                "seriesPriority": "A",
                "seriesPreference": "3"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (CoronaVac, Sinovac)",
                            "cvx": "511",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "2 weeks",
                            "earliestRecInt": "2 weeks",
                            "latestRecInt": "4 weeks"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "0 days"
                    },
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (CoronaVac, Sinovac)",
                            "cvx": "511",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "2-dose Novavax Series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroup": "3",
                "seriesPriority": "A",
                "seriesPreference": "4"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "18 years"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "21 days",
                            "earliestRecInt": "21 days",
                            "latestRecInt": "28 days"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "18 years"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        }
    ]
});