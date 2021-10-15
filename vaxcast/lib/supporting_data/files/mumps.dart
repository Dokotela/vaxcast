import 'package:vaxcast/vaxcast.dart';

final mumps = AntigenSupportingData.fromJson({
    "targetDisease": "Mumps",
    "vaccineGroup": "MMR",
    "immunity": {
        "clinicalHistory": [
            {
                "guidelineTitle": "Laboratory Evidence of Immunity for Mumps"
            }
        ],
        "dateOfBirth": {
            "immunityBirthDate": "01/01/1957",
            "exclusion": [
                {
                    "exclusionTitle": "Health care personnel"
                }
            ]
        }
    },
    "contraindications": {
        "vaccineGroup": {
            "contraindication": [
                {
                    "observationTitle": "Immunocompromised",
                    "contraindicationText": "Do not vaccinate if the patient is immunocompromised."
                },
                {
                    "observationTitle": "Pregnant",
                    "contraindicationText": "Do not vaccinate if the patient is pregnant."
                },
                {
                    "observationTitle": "Family history of altered immunocompetence",
                    "contraindicationText": "Do not vaccinate if the patient has a family history of altered immunocompetence"
                },
                {
                    "observationTitle": "Tuberculosis",
                    "contraindicationText": "Do not vaccinate if the patient has active untreated tuberculosis."
                },
                {
                    "observationTitle": "Adverse reaction to vaccine component",
                    "contraindicationText": "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
                },
                {
                    "observationTitle": "Severe allergic reaction after previous dose of Mumps",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Mumps vaccine."
                },
                {
                    "observationTitle": "Severe allergic reaction to gelatin",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction to gelatin."
                },
                {
                    "observationTitle": "Severe allergic reaction to neomycin",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction to neomycin."
                },
                {
                    "observationTitle": "Tetanus IG administration",
                    "contraindicationText": "Do not vaccinate if the patient has had Tetanus IG administered in the previous 3 months."
                },
                {
                    "observationTitle": "Hep A IG administration",
                    "contraindicationText": "Do not vaccinate if the patient has had Hepatitis A IG administered in the previous 3 months."
                },
                {
                    "observationTitle": "Hep B IG administration",
                    "contraindicationText": "Do not vaccinate if the patient has had Hepatitis B IG administered in the previous 3 months."
                },
                {
                    "observationTitle": "Rabies IG administration",
                    "contraindicationText": "Do not vaccinate if the patient has had Rabies IG administered in the previous 4 months."
                },
                {
                    "observationTitle": "Varicella IG administration",
                    "contraindicationText": "Do not vaccinate if the patient has had Varicella IG administered in the previous 5 months."
                },
                {
                    "observationTitle": "Measles prophylaxis IG administration - Standard",
                    "contraindicationText": "Do not vaccinate if the patient has had Measles IG at a standard dose (0.25 mL/kg) administered in the previous 5 months."
                },
                {
                    "observationTitle": "Measles prophylaxis IG administration - Immunocompromised Contact",
                    "contraindicationText": "Do not vaccinate if the patient has had Measles IG at an immunocompromised dose (0.5 mL/kg) administered in the previous 6 months."
                },
                {
                    "observationTitle": "RBC [adenine-saline added] blood transfusion",
                    "contraindicationText": "Do not vaccinate if the patient has received a blood transfusion of adenine-saline added RBCs in the previous 3 months."
                },
                {
                    "observationTitle": "Packed RBC blood transfusion",
                    "contraindicationText": "Do not vaccinate if the patient has received a blood transfusion of packed RBCs in the previous 6 months."
                },
                {
                    "observationTitle": "Whole blood transfusion",
                    "contraindicationText": "Do not vaccinate if the patient has received a whole blood transfusion in the previous 6 months."
                },
                {
                    "observationTitle": "Plasma/platelet products blood transfusion",
                    "contraindicationText": "Do not vaccinate if the patient has received a blood transfusion of plasma or platelet product in the previous 7 months."
                },
                {
                    "observationTitle": "Cytomegalovirus IGIV",
                    "contraindicationText": "Do not vaccinate if the patient has received Cytomegalovirus IGIV in the previous 6 months."
                },
                {
                    "observationTitle": "IGIV - Replacement therapy for immune deficiencies",
                    "contraindicationText": "Do not vaccinate if the patient has received IGIV (Replacement therapy for immune deficiencies) in the previous 8 months."
                },
                {
                    "observationTitle": "IGIV - Immune thrombocytopenic purpura treatment",
                    "contraindicationText": "Do not vaccinate if the patient has received IGIV (Immune thrombocytopenic purpura treatment (400 mg/kg IV)) in the previous 8 months."
                },
                {
                    "observationTitle": "IGIV - Postexposure varicella prophylaxis",
                    "contraindicationText": "Do not vaccinate if the patient has received IGIV (Postexposure varicella prophylaxis) in the previous 8 months."
                },
                {
                    "observationTitle": "IGIV - Immune thrombocytopenic purpura treatment",
                    "contraindicationText": "Do not vaccinate if the patient has received IGIV (Immune thrombocytopenic purpura treatment (1000 mg/kg IV)) in the previous 10 months."
                },
                {
                    "observationTitle": "IGIV - Kawasaki disease",
                    "contraindicationText": "Do not vaccinate if the patient has received IGIV (Kawasaki disease) in the previous 11 months."
                },
                {
                    "observationTitle": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                    "contraindicationText": "Do not vaccinate if the patient has complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome)."
                },
                {
                    "observationTitle": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                    "contraindicationText": "Do not vaccinate if the patient has partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia)."
                },
                {
                    "observationTitle": "T-lymphocyte [cell-mediated and humoral] - interferon-gamma or interferon-alpha",
                    "contraindicationText": "Do not vaccinate if the patient has cell-mediated or humoral T-lymphocyte defects related to interferon-gamma or interferon-alpha."
                },
                {
                    "observationTitle": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                    "contraindicationText": "Do not vaccinate if the patient has a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency)."
                },
                {
                    "observationTitle": "HIV/AIDS - severely immunocompromised",
                    "contraindicationText": "Do not vaccinate if the patient has HIV/AIDS and is severely immunocompromised (See the CDC general recommendations for a definition of severely immunocompromised)."
                },
                {
                    "observationTitle": "Generalized malignant neoplasm",
                    "contraindicationText": "Do not vaccinate if the patient has generalized malignant neoplasm."
                },
                {
                    "observationTitle": "Transplantation",
                    "contraindicationText": "Do not vaccinate if the patient received a transplant."
                },
                {
                    "observationTitle": "Immunosuppressive therapy",
                    "contraindicationText": "Do not vaccinate if the patient is undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies. "
                },
                {
                    "observationTitle": "Radiation therapy",
                    "contraindicationText": "Do not vaccinate if the patient is undergoing radiation therapy."
                },
                {
                    "observationTitle": "Chemotherapy",
                    "contraindicationText": "Do not vaccinate if the patient is undergoing chemotherapy, including 14 days before the start of therapy and 3 months after the completion of therapy."
                }
            ]
        }
    },
    "series": [
        {
            "seriesName": "Mumps 2-dose series",
            "targetDisease": "Mumps",
            "vaccineGroup": "MMR",
            "seriesAdminGuidance": [
                "Persons identified as being at increased risk who have received less than or equal to 2 doses of mumps virus-containing vaccine should receive 1 dose."
            ],
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
                            "vaccineType": "Mumps",
                            "cvx": "07",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Rubella/Mumps",
                            "cvx": "38",
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
                            "vaccineType": "Mumps",
                            "cvx": "07",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Rubella/Mumps",
                            "cvx": "38",
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
            "seriesName": "Mumps risk 1-dose series",
            "targetDisease": "Mumps",
            "vaccineGroup": "MMR",
            "seriesAdminGuidance": [
                "Children who received MMR vaccine before age 12 months should be considered potentially susceptible to all three diseases and should be revaccinated with 2 doses of MMR vaccine, the first dose administered when the child is aged 12 through 15 months (12 months if the child remains in an area where disease risk is high) and the second dose at least 28 days later.",
                "Persons identified as being at increased risk who have received less than or equal to 2 doses of mumps virus-containing vaccine should receive 1 dose."
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
                        "text": "Travelling Internationally"
                    },
                    "description": "Administer to persons who will be travelling internationally.",
                    "beginAge": "6 months",
                    "endAge": "12 months"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
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
                            "vaccineType": "Mumps",
                            "cvx": "07",
                            "beginAge": "6 months - 4 days"
                        },
                        {
                            "vaccineType": "Rubella/Mumps",
                            "cvx": "38",
                            "beginAge": "6 months - 4 days"
                        },
                        {
                            "vaccineType": "MMRV",
                            "cvx": "94",
                            "beginAge": "6 months - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Mumps risk 2-dose series",
            "targetDisease": "Mumps",
            "vaccineGroup": "MMR",
            "seriesAdminGuidance": [
                "Persons identified as being at increased risk who have received less than or equal to 2 doses of mumps virus-containing vaccine should receive 1 dose."
            ],
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
                        "text": "Travelling Internationally"
                    },
                    "description": "Administer to persons who will be travelling internationally.",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Health care personnel"
                    },
                    "description": "Administer to healthcare personnel without evidence of immunity.",
                    "beginAge": "18 years",
                    "guidance": "Includes those born before 1957 who would normally be considered immunity."
                },
                {
                    "observationCode": {
                        "text": "Post secondary student"
                    },
                    "description": "Administer to persons who are students in a postsecondary educational institution.",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Received killed or unknown Mumps vaccine before 1979"
                    },
                    "description": "Administer to persons who received killed or unknown Mumps vaccine before 1979.",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - not severely immunocompromised"
                    },
                    "description": "Administer to persons who have HIV/AIDS but are not severely immunocompromised (See the CDC general recommendations for a definition of severely immunocompromised).",
                    "beginAge": "18 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
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
                            "vaccineType": "Mumps",
                            "cvx": "07",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Rubella/Mumps",
                            "cvx": "38",
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
                            "vaccineType": "Mumps",
                            "cvx": "07",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Rubella/Mumps",
                            "cvx": "38",
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
            "seriesName": "Mumps risk 2-dose ART series",
            "targetDisease": "Mumps",
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
                        "text": "Persons with perinatal HIV infection who do not have evidence of severe immunosuppression and who were vaccinated with MMR before establishment of antiviral therapy [ART]"
                    },
                    "description": "Administer to persons with perinatal HIV infection who do not have evidence of severe immunosuppression and who were vaccinated with MMR before establishment of antiviral therapy [ART]."
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromRelevantObs": {
                                "text": "Begin Date of antiviral therapy [ART]"
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
                            "vaccineType": "Mumps",
                            "cvx": "07",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Rubella/Mumps",
                            "cvx": "38",
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
                            "vaccineType": "Mumps",
                            "cvx": "07",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Rubella/Mumps",
                            "cvx": "38",
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