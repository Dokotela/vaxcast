import 'package:vax_cast/vax_cast.dart';

final measles = AntigenSupportingData.fromJson({
    "immunity": {
        "clinicalHistory": [
            {
                "guidelineCode": "020",
                "guidelineTitle": "Laboratory Evidence of Immunity for Measles"
            }
        ],
        "dateOfBirth": {
            "immunityBirthDate": "01/01/1957",
            "exclusion": [
                {
                    "exclusionCode": "055",
                    "exclusionTitle": "Health care personnel"
                }
            ]
        }
    },
    "contraindications": {
        "vaccineGroup": {
            "contraindication": [
                {
                    "observationCode": "003",
                    "observationTitle": "Immunocompromised",
                    "contraindicationText": "Do not vaccinate if the patient is immunocompromised."
                },
                {
                    "observationCode": "007",
                    "observationTitle": "Pregnant",
                    "contraindicationText": "Do not vaccinate if the patient is pregnant."
                },
                {
                    "observationCode": "012",
                    "observationTitle": "Family history of altered immunocompetence",
                    "contraindicationText": "Do not vaccinate if the patient has a family history of altered immunocompetence"
                },
                {
                    "observationCode": "031",
                    "observationTitle": "Tuberculosis",
                    "contraindicationText": "Do not vaccinate if the patient has active untreated tuberculosis."
                },
                {
                    "observationCode": "080",
                    "observationTitle": "Adverse reaction to vaccine component",
                    "contraindicationText": "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
                },
                {
                    "observationCode": "091",
                    "observationTitle": "Severe allergic reaction after previous dose of Measles",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Measles vaccine."
                },
                {
                    "observationCode": "102",
                    "observationTitle": "Severe allergic reaction to gelatin",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction to gelatin."
                },
                {
                    "observationCode": "107",
                    "observationTitle": "Severe allergic reaction to neomycin",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction to neomycin."
                },
                {
                    "observationCode": "125",
                    "observationTitle": "Tetanus IG administration",
                    "contraindicationText": "Do not vaccinate if the patient has had Tetanus IG administered in the previous 3 months."
                },
                {
                    "observationCode": "126",
                    "observationTitle": "Hep A IG administration",
                    "contraindicationText": "Do not vaccinate if the patient has had Hepatitis A IG administered in the previous 3 months."
                },
                {
                    "observationCode": "127",
                    "observationTitle": "Hep B IG administration",
                    "contraindicationText": "Do not vaccinate if the patient has had Hepatitis B IG administered in the previous 3 months."
                },
                {
                    "observationCode": "128",
                    "observationTitle": "Rabies IG administration",
                    "contraindicationText": "Do not vaccinate if the patient has had Rabies IG administered in the previous 4 months."
                },
                {
                    "observationCode": "129",
                    "observationTitle": "Varicella IG administration",
                    "contraindicationText": "Do not vaccinate if the patient has had Varicella IG administered in the previous 5 months."
                },
                {
                    "observationCode": "130",
                    "observationTitle": "Measles prophylaxis IG administration - Standard",
                    "contraindicationText": "Do not vaccinate if the patient has had Measles IG at a standard dose (0.25 mL/kg) administered in the previous 5 months."
                },
                {
                    "observationCode": "131",
                    "observationTitle": "Measles prophylaxis IG administration - Immunocompromised Contact",
                    "contraindicationText": "Do not vaccinate if the patient has had Measles IG at an immunocompromised dose (0.5 mL/kg) administered in the previous 6 months."
                },
                {
                    "observationCode": "132",
                    "observationTitle": "RBC [adenine-saline added] blood transfusion",
                    "contraindicationText": "Do not vaccinate if the patient has received a blood transfusion of adenine-saline added RBCs in the previous 3 months."
                },
                {
                    "observationCode": "133",
                    "observationTitle": "Packed RBC blood transfusion",
                    "contraindicationText": "Do not vaccinate if the patient has received a blood transfusion of packed RBCs in the previous 6 months."
                },
                {
                    "observationCode": "134",
                    "observationTitle": "Whole blood transfusion",
                    "contraindicationText": "Do not vaccinate if the patient has received a whole blood transfusion in the previous 6 months."
                },
                {
                    "observationCode": "135",
                    "observationTitle": "Plasma/platelet products blood transfusion",
                    "contraindicationText": "Do not vaccinate if the patient has received a blood transfusion of plasma or platelet product in the previous 7 months."
                },
                {
                    "observationCode": "136",
                    "observationTitle": "Cytomegalovirus IGIV",
                    "contraindicationText": "Do not vaccinate if the patient has received Cytomegalovirus IGIV in the previous 6 months."
                },
                {
                    "observationCode": "137",
                    "observationTitle": "IGIV - Replacement therapy for immune deficiencies",
                    "contraindicationText": "Do not vaccinate if the patient has received IGIV (Replacement therapy for immune deficiencies) in the previous 8 months."
                },
                {
                    "observationCode": "138",
                    "observationTitle": "IGIV - Immune thrombocytopenic purpura treatment",
                    "contraindicationText": "Do not vaccinate if the patient has received IGIV (Immune thrombocytopenic purpura treatment (400 mg/kg IV)) in the previous 8 months."
                },
                {
                    "observationCode": "139",
                    "observationTitle": "IGIV - Postexposure varicella prophylaxis",
                    "contraindicationText": "Do not vaccinate if the patient has received IGIV (Postexposure varicella prophylaxis) in the previous 8 months."
                },
                {
                    "observationCode": "140",
                    "observationTitle": "IGIV - Immune thrombocytopenic purpura treatment",
                    "contraindicationText": "Do not vaccinate if the patient has received IGIV (Immune thrombocytopenic purpura treatment (1000 mg/kg IV)) in the previous 10 months."
                },
                {
                    "observationCode": "141",
                    "observationTitle": "IGIV - Kawasaki disease",
                    "contraindicationText": "Do not vaccinate if the patient has received IGIV (Kawasaki disease) in the previous 11 months."
                },
                {
                    "observationCode": "147",
                    "observationTitle": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                    "contraindicationText": "Do not vaccinate if the patient has complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome)."
                },
                {
                    "observationCode": "148",
                    "observationTitle": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                    "contraindicationText": "Do not vaccinate if the patient has partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia)."
                },
                {
                    "observationCode": "150",
                    "observationTitle": "T-lymphocyte [cell-mediated and humoral] - interferon-gamma or interferon-alpha",
                    "contraindicationText": "Do not vaccinate if the patient has cell-mediated or humoral T-lymphocyte defects related to interferon-gamma or interferon-alpha."
                },
                {
                    "observationCode": "153",
                    "observationTitle": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                    "contraindicationText": "Do not vaccinate if the patient has a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency)."
                },
                {
                    "observationCode": "154",
                    "observationTitle": "HIV/AIDS - severely immunocompromised",
                    "contraindicationText": "Do not vaccinate if the patient has HIV/AIDS and is severely immunocompromised (See the CDC general recommendations for a definition of severely immunocompromised)."
                },
                {
                    "observationCode": "156",
                    "observationTitle": "Generalized malignant neoplasm",
                    "contraindicationText": "Do not vaccinate if the patient has generalized malignant neoplasm."
                },
                {
                    "observationCode": "157",
                    "observationTitle": "Transplantation",
                    "contraindicationText": "Do not vaccinate if the patient received a transplant."
                },
                {
                    "observationCode": "158",
                    "observationTitle": "Immunosuppressive therapy",
                    "contraindicationText": "Do not vaccinate if the patient is undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies. "
                },
                {
                    "observationCode": "159",
                    "observationTitle": "Radiation therapy",
                    "contraindicationText": "Do not vaccinate if the patient is undergoing radiation therapy."
                },
                {
                    "observationCode": "168",
                    "observationTitle": "Chemotherapy",
                    "contraindicationText": "Do not vaccinate if the patient is undergoing chemotherapy, including 14 days before the start of therapy and 3 months after the completion of therapy."
                }
            ]
        }
    },
    "series": [
        {
            "seriesName": "Measles 2-dose series",
            "targetDisease": "Measles",
            "vaccineGroup": "MMR",
            "seriesType": "Standard",
            "selectSeries": {
                "defaultSeries": "Yes",
                "productPath": "No",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "1"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "12 months - 4 days",
                            "minAge": "12 months",
                            "earliestRecAge": "12 months",
                            "latestRecAge": "16 months + 4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "MMR",
                            "cvx": "03",
                            "beginAge": "12 months",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "MMRV",
                            "cvx": "94",
                            "beginAge": "12 months",
                            "endAge": "13 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "MMR",
                            "cvx": "03",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Measles/Rubella",
                            "cvx": "04",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Measles",
                            "cvx": "05",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "MMRV",
                            "cvx": "94",
                            "beginAge": "12 months - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "13 months - 4 days",
                            "minAge": "13 months",
                            "earliestRecAge": "4 years",
                            "latestRecAge": "7 years + 4 weeks"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "3 years",
                            "latestRecInt": "6 years + 4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "MMR",
                            "cvx": "03",
                            "beginAge": "12 months",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "MMRV",
                            "cvx": "94",
                            "beginAge": "12 months",
                            "endAge": "13 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "MMR",
                            "cvx": "03",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Measles/Rubella",
                            "cvx": "04",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Measles",
                            "cvx": "05",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "MMRV",
                            "cvx": "94",
                            "beginAge": "12 months - 4 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Dose is not required for those 19 years or older",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "beginAge": "19 years - 4 days"
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
            "seriesName": "Measles risk 1-dose series",
            "targetDisease": "Measles",
            "vaccineGroup": "MMR",
            "seriesAdminGuidance": [
                "Children who received MMR vaccine before age 12 months should be considered potentially susceptible to all three diseases and should be revaccinated with 2 doses of MMR vaccine, the first dose administered when the child is aged 12 through 15 months (12 months if the child remains in an area where disease risk is high) and the second dose at least 28 days later."
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk Infant",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "1",
                "minAgeToStart": "6 months",
                "maxAgeToStart": "12 months"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Travelling Internationally",
                        "code": "048"
                    },
                    "description": "Administer to persons who will be travelling internationally.",
                    "beginAge": "6 months",
                    "endAge": "12 months"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "6 months - 4 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "latestRecAge": "12 months",
                            "maxAge": "12 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "MMR",
                            "cvx": "03",
                            "beginAge": "6 months",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "MMR",
                            "cvx": "03",
                            "beginAge": "6 months - 4 days"
                        },
                        {
                            "vaccineType": "Measles/Rubella",
                            "cvx": "04",
                            "beginAge": "6 months - 4 days"
                        },
                        {
                            "vaccineType": "Measles",
                            "cvx": "05",
                            "beginAge": "6 months - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Measles risk 2-dose series",
            "targetDisease": "Measles",
            "vaccineGroup": "MMR",
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "3",
                "seriesPriority": "A",
                "seriesPreference": "1",
                "minAgeToStart": "18 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Travelling Internationally",
                        "code": "048"
                    },
                    "description": "Administer to persons who will be travelling internationally.",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Health care personnel",
                        "code": "055"
                    },
                    "description": "Administer to healthcare personnel without evidence of immunity.",
                    "beginAge": "18 years",
                    "guidance": "Includes those born before 1957 who would normally be considered to have immunity."
                },
                {
                    "observationCode": {
                        "text": "Post secondary student",
                        "code": "063"
                    },
                    "description": "Administer to persons who are students in a postsecondary educational institution.",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Household and close contacts of immunocompromised persons",
                        "code": "073"
                    },
                    "description": "Administer to persons who are household and close contacts of immunocompromised persons.",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Received inactivated or unknown measles vaccine between 1963-1967",
                        "code": "077"
                    },
                    "description": "Administer to persons who received inactivated or unknown measles vaccine between 1963-1967.",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - not severely immunocompromised",
                        "code": "155"
                    },
                    "description": "Administer to persons who have HIV/AIDS but are not severely immunocompromised (See the CDC general recommendations for a definition of severely immunocompromised).",
                    "beginAge": "18 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "12 months - 4 days",
                            "minAge": "18 years",
                            "earliestRecAge": "18 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "MMR",
                            "cvx": "03",
                            "beginAge": "12 months",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "MMR",
                            "cvx": "03",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Measles/Rubella",
                            "cvx": "04",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Measles",
                            "cvx": "05",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "MMRV",
                            "cvx": "94",
                            "beginAge": "12 months - 4 days"
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
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "MMR",
                            "cvx": "03",
                            "beginAge": "12 months",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "MMR",
                            "cvx": "03",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Measles/Rubella",
                            "cvx": "04",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Measles",
                            "cvx": "05",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "MMRV",
                            "cvx": "94",
                            "beginAge": "12 months - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Measles risk 2-dose ART series",
            "targetDisease": "Measles",
            "vaccineGroup": "MMR",
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "3",
                "seriesPriority": "A",
                "seriesPreference": "1"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Persons with perinatal HIV infection who do not have evidence of severe immunosuppression and who were vaccinated with MMR before establishment of antiviral therapy [ART]",
                        "code": "026"
                    },
                    "description": "Administer to persons with perinatal HIV infection who do not have evidence of severe immunosuppression and who were vaccinated with MMR before establishment of antiviral therapy [ART]."
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "12 months - 4 days",
                            "minAge": "12 months",
                            "earliestRecAge": "12 months"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromRelevantObs": {
                                "text": "Begin Date of antiviral therapy [ART]",
                                "code": "120"
                            },
                            "minInt": "6 months",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "MMR",
                            "cvx": "03",
                            "beginAge": "12 months",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "MMR",
                            "cvx": "03",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Measles/Rubella",
                            "cvx": "04",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Measles",
                            "cvx": "05",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "MMRV",
                            "cvx": "94",
                            "beginAge": "12 months - 4 days"
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
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "MMR",
                            "cvx": "03",
                            "beginAge": "12 months",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "MMR",
                            "cvx": "03",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Measles/Rubella",
                            "cvx": "04",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Measles",
                            "cvx": "05",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "MMRV",
                            "cvx": "94",
                            "beginAge": "12 months - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        }
    ]
});