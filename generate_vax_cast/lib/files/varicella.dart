import 'package:vax_cast/vax_cast.dart';

final varicella = AntigenSupportingData.fromJson({
    "targetDisease": "Varicella",
    "vaccineGroup": "Varicella",
    "immunity": {
        "clinicalHistory": [
            {
                "guidelineTitle": "Laboratory Evidence of Immunity or confirmation of Varicella disease"
            },
            {
                "guidelineTitle": "Healthcare provider verified history of or diagnosis of Varicella"
            },
            {
                "guidelineTitle": "Healthcare provider verified history or diagnosis of Herpes Zoster"
            }
        ],
        "dateOfBirth": {
            "immunityBirthDate": "01/01/1980",
            "birthCountry": "U.S.",
            "exclusion": [
                {
                    "exclusionTitle": "Health care personnel"
                },
                {
                    "exclusionTitle": "Pregnant"
                },
                {
                    "exclusionTitle": "Immunocompromised"
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
                    "observationTitle": "Severe allergic reaction after previous dose of Varicella",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Varicella vaccine."
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
            "seriesName": "Varicella childhood 2-dose series",
            "targetDisease": "Varicella",
            "vaccineGroup": "Varicella",
            "seriesType": "Standard",
            "selectSeries": {
                "defaultSeries": "Yes",
                "productPath": "No",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "1",
                "maxAgeToStart": "13 years"
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
                            "vaccineType": "Varicella",
                            "cvx": "21",
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
                            "vaccineType": "Varicella",
                            "cvx": "21",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "MMRV",
                            "cvx": "94",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Zoster Live",
                            "cvx": "121",
                            "beginAge": "12 months - 4 days",
                            "endAge": "50 years"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "13 months",
                            "minAge": "15 months",
                            "earliestRecAge": "4 years",
                            "latestRecAge": "7 years + 4 weeks"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "12 weeks - 4 days",
                            "minInt": "12 weeks",
                            "earliestRecInt": "3 years",
                            "latestRecInt": "6 years + 4 weeks"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "Y",
                        "absMinInt": "4 weeks"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "Varicella",
                            "cvx": "21",
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
                            "vaccineType": "Varicella",
                            "cvx": "21",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "MMRV",
                            "cvx": "94",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Zoster Live",
                            "cvx": "121",
                            "beginAge": "12 months - 4 days",
                            "endAge": "50 years"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Varicella 13+ 2-dose series",
            "targetDisease": "Varicella",
            "vaccineGroup": "Varicella",
            "seriesAdminGuidance": [
                "Vaccination should be emphasized for those who have close contact with persons at high risk for severe disease or are at high risk for exposure or transmission. Pregnant women should be assessed for evidence of varicella immunity. Women who do not have evidence of immunity should receive the first dose of varicella vaccine upon completion or termination of pregnancy and before discharge from the health care facility."
            ],
            "seriesType": "Standard",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "2",
                "maxAgeToStart": "50 years"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "13 years",
                            "minAge": "13 years",
                            "earliestRecAge": "13 years",
                            "latestRecAge": "13 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Varicella",
                            "cvx": "21",
                            "beginAge": "12 months",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Varicella",
                            "cvx": "21",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "MMRV",
                            "cvx": "94",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Zoster Live",
                            "cvx": "121",
                            "beginAge": "12 months - 4 days",
                            "endAge": "50 years"
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
                            "earliestRecInt": "4 weeks",
                            "latestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Varicella",
                            "cvx": "21",
                            "beginAge": "12 months",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Varicella",
                            "cvx": "21",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "MMRV",
                            "cvx": "94",
                            "beginAge": "12 months - 4 days"
                        },
                        {
                            "vaccineType": "Zoster Live",
                            "cvx": "121",
                            "beginAge": "12 months - 4 days",
                            "endAge": "50 years"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        }
    ]
});