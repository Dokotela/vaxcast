import 'package:vax_cast/vax_cast.dart';

final influenza = AntigenSupportingData.fromJson({
  "contraindications": {
    "vaccineGroup": {
      "contraindication": [
        {
          "observationCode": "085",
          "observationTitle":
              "Severe allergic reaction after previous dose of Influenza",
          "contraindicationText":
              "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Influenza vaccine.",
          "contraindicationGuidance":
              "ACIP recommends an allergist consultation if the specific type of influenza vaccine is unknown."
        },
        {
          "observationCode": "080",
          "observationTitle": "Adverse reaction to vaccine component",
          "contraindicationText":
              "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
        }
      ]
    },
    "vaccine": {
      "contraindication": [
        {
          "observationCode": "003",
          "observationTitle": "Immunocompromised",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient is immunocompromised.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "007",
          "observationTitle": "Pregnant",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient is pregnant.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "010",
          "observationTitle": "Cerebrospinal fluid leaks",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has cerebrospinal fluid leaks.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "011",
          "observationTitle": "Cochlear Implants",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has cochlear implants.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "027",
          "observationTitle": "Asthma",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient is between 2 and 4 years and has asthma.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149",
              "beginAge": "2 years",
              "endAge": "4 years"
            }
          ]
        },
        {
          "observationCode": "033",
          "observationTitle":
              "Taken influenza antiviral medications within the previous 48 hours",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has taken influenza antiviral medications  within the previous 48 hours.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "034",
          "observationTitle": "Receiving long-term aspirin therapy",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient is between 2 and 17 years and is receiving long-term aspirin therapy.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149",
              "beginAge": "2 years",
              "endAge": "17 years"
            }
          ]
        },
        {
          "observationCode": "102",
          "observationTitle": "Severe allergic reaction to gelatin",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has had a severe allergic reaction to gelatin.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "103",
          "observationTitle": "Severe allergic reaction to arginine",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has had a severe allergic reaction to arginine.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "106",
          "observationTitle": "Severe allergic reaction to gentamicin",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has had a severe allergic reaction to gentamicin.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "145",
          "observationTitle":
              "B-lymphocyte [humoral] - Severe antibody deficiencies",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency).",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "147",
          "observationTitle":
              "T-lymphocyte [cell-mediated and humoral] - Complete defects",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome).",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "148",
          "observationTitle":
              "T-lymphocyte [cell-mediated and humoral] - Partial defects",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia).",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "150",
          "observationTitle":
              "T-lymphocyte [cell-mediated and humoral] - interferon-gamma or interferon-alpha",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has cell-mediated or humoral T-lymphocyte defects related to interferon-gamma or interferon-alpha",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "153",
          "observationTitle":
              "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency).",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "154",
          "observationTitle": "HIV/AIDS - severely immunocompromised",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has HIV/AIDS and is severely immunocompromised (See the CDC general recommendations for a definition of severely immunocompromised).",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "155",
          "observationTitle": "HIV/AIDS - not severely immunocompromised",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has HIV/AIDS even if not severely immunocompromised (See the CDC general recommendations for a definition of severely immunocompromised).",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "156",
          "observationTitle": "Generalized malignant neoplasm",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has generalized malignant neoplasm.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "157",
          "observationTitle": "Transplantation",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient received a transplant.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "158",
          "observationTitle": "Immunosuppressive therapy",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient is undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "159",
          "observationTitle": "Radiation therapy",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient is undergoing radiation therapy.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "160",
          "observationTitle": "Anatomical or Functional Asplenia",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has anatomical or functional asplenia",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationCode": "161",
          "observationTitle": "Chronic renal disease",
          "contraindicationText":
              "Do not vaccinate with live attenuated influenza virus (LAIV) if the patient has chronic renal disease.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            }
          ]
        },
        {
          "observationTitle":
              "Severe allergic reaction after previous dose of any egg-based IIV or LAIV influenza vaccine",
          "contraindicationText":
              "Do not vaccinate with any egg-based IIV or LAIV influenza vaccine if the patient has had a severe allergic reaction after a previous dose of an egg-based IIV or LAIV influenza vaccine.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free",
              "cvx": "150"
            },
            {
              "vaccineType": "Influenza, injectable, quadrivalent",
              "cvx": "158"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free, peds",
              "cvx": "161"
            },
            {"vaccineType": "Influenza, high dose, quadrivalent", "cvx": "197"},
            {
              "vaccineType":
                  "influenza, seasonal vaccine, quadrivalent, adjuvanted",
              "cvx": "205"
            }
          ]
        },
        {
          "observationTitle":
              "Severe allergic reaction after previous dose of any ccIIV influenza vaccine",
          "contraindicationText":
              "Do not vaccinate with any ccIIV or egg-based IIV or LAIV influenza vaccine if the patient has had a severe allergic reaction after a previous dose of a ccIIV influenza vaccine.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free",
              "cvx": "150"
            },
            {
              "vaccineType": "Influenza, injectable, quadrivalent",
              "cvx": "158"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free, peds",
              "cvx": "161"
            },
            {
              "vaccineType":
                  "Influenza, injectable, MDCK, preservative free, quadrivalent",
              "cvx": "171"
            },
            {
              "vaccineType":
                  "Influenza, injectable, MDCK, preservative, quadrivalent",
              "cvx": "186"
            },
            {"vaccineType": "Influenza, high dose, quadrivalent", "cvx": "197"},
            {
              "vaccineType":
                  "influenza, seasonal vaccine, quadrivalent, adjuvanted",
              "cvx": "205"
            }
          ]
        },
        {
          "observationTitle":
              "Severe allergic reaction after previous dose of any RIV influenza vaccine",
          "contraindicationText":
              "Do not vaccinate with any RIV or egg-based IIV or LAIV influenza vaccine if the patient has had a severe allergic reaction after a previous dose of an RIV influenza vaccine.",
          "contraindicatedVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free",
              "cvx": "150"
            },
            {
              "vaccineType": "Influenza, injectable, quadrivalent",
              "cvx": "158"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free, peds",
              "cvx": "161"
            },
            {
              "vaccineType":
                  "influenza, recombinant, quadriIvalent,injectable, preservative free",
              "cvx": "185"
            },
            {"vaccineType": "Influenza, high dose, quadrivalent", "cvx": "197"},
            {
              "vaccineType":
                  "influenza, seasonal vaccine, quadrivalent, adjuvanted",
              "cvx": "205"
            }
          ]
        }
      ]
    }
  },
  "series": [
    {
      "seriesName": "Influenza standard series",
      "targetDisease": "Influenza",
      "vaccineGroup": "Influenza",
      "seriesAdminGuidance": [
        "Persons with a history of egg allergy may receive any licensed, recommended influenza vaccine that is otherwise appropriate for their age and health status.",
        "Persons who report having had reactions to egg involving symptoms other than urticaria (e.g., angioedema or swelling, respiratory distress, lightheadedness, or recurrent emesis) or who required epinephrine or another emergency medical intervention should be vaccinated in an inpatient or outpatient medical setting (including, but not necessarily limited to, hospitals, clinics, health departments, and physician offices). Vaccine administration should be supervised by a health care provider who is able to recognize and manage severe allergic reactions."
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
          "age": [
            {
              "absMinAge": "6 months - 4 days",
              "minAge": "6 months",
              "earliestRecAge": "6 months"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149",
              "beginAge": "2 years",
              "endAge": "50 years",
              "volume": "0.2",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free",
              "cvx": "150",
              "beginAge": "3 years",
              "tradeName": "AFLURIA - QUADRIVALENT",
              "mvx": "SEQ",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free",
              "cvx": "150",
              "beginAge": "6 months",
              "tradeName": "FLUARIX - QUADRIVALENT",
              "mvx": "SKB",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free",
              "cvx": "150",
              "beginAge": "6 months",
              "tradeName": "FLUZONE - QUADRIVALENT",
              "mvx": "PMC",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free",
              "cvx": "150",
              "beginAge": "6 months",
              "tradeName": "FLULAVAL - QUADRIVALENT",
              "mvx": "IDB",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Influenza, injectable, quadrivalent",
              "cvx": "158",
              "beginAge": "6 months",
              "endAge": "3 years",
              "tradeName": "FLUZONE - QUADRIVALENT",
              "mvx": "PMC",
              "volume": "0.25",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Influenza, injectable, quadrivalent",
              "cvx": "158",
              "beginAge": "6 months",
              "tradeName": "FLUZONE - QUADRIVALENT",
              "mvx": "PMC",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Influenza, injectable, quadrivalent",
              "cvx": "158",
              "beginAge": "6 months",
              "endAge": "3 years",
              "tradeName": "AFLURIA - QUADRIVALENT",
              "mvx": "SEQ",
              "volume": "0.25",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Influenza, injectable, quadrivalent",
              "cvx": "158",
              "beginAge": "3 years",
              "tradeName": "AFLURIA - QUADRIVALENT",
              "mvx": "SEQ",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free, peds",
              "cvx": "161",
              "beginAge": "6 months",
              "endAge": "3 years",
              "volume": "0.25",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "Influenza, injectable, MDCK, preservative free, quadrivalent",
              "cvx": "171",
              "beginAge": "2 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "Influenza, injectable, MDCK, preservative, quadrivalent",
              "cvx": "186",
              "beginAge": "2 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Influenza, split incl. purified surface antigen",
              "cvx": "15",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, whole",
              "cvx": "16",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, Unspecified",
              "cvx": "88",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, live, intranasal",
              "cvx": "111",
              "beginAge": "6 months - 4 days",
              "endAge": "50 years"
            },
            {
              "vaccineType": "Influenza, high dose seasonal",
              "cvx": "135",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, injectable preservative free",
              "cvx": "140",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, injectable",
              "cvx": "141",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149",
              "beginAge": "6 months - 4 days",
              "endAge": "50 years"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free",
              "cvx": "150",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "influenza nasal, unspecified formulation",
              "cvx": "151",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, injectable, MDCK, preservative free",
              "cvx": "153",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType":
                  "Influenza, recombinant, injectable, preservative free",
              "cvx": "155",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, injectable, quadrivalent",
              "cvx": "158",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free, peds",
              "cvx": "161",
              "beginAge": "6 months - 4 days",
              "endAge": "3 years"
            },
            {
              "vaccineType": "influenza, trivalent, adjuvanted",
              "cvx": "168",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType":
                  "Influenza, injectable, MDCK, preservative free, quadrivalent",
              "cvx": "171",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType":
                  "influenza, recombinant, quadrIvalent,injectable, preservative free",
              "cvx": "185",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType":
                  "Influenza, injectable, MDCK, preservative, quadrivalent",
              "cvx": "186",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, high dose, quadrivalent",
              "cvx": "197",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType":
                  "influenza, seasonal vaccine, quadrivalent, adjuvanted",
              "cvx": "205",
              "beginAge": "6 months - 4 days"
            }
          ],
          "conditionalSkip": [
            {
              "context": "Both",
              "setLogic": "n/a",
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required for those 9 years or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "9 years"
                    }
                  ]
                }
              ]
            }
          ],
          "recurringDose": "No",
          "seasonalRecommendation": {"startDate": "44378", "endDate": "44742"}
        },
        {
          "doseNumber": "Dose 2",
          "age": [{}],
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
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149",
              "beginAge": "2 years",
              "endAge": "50 years",
              "volume": "0.2",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free",
              "cvx": "150",
              "beginAge": "3 years",
              "tradeName": "AFLURIA - QUADRIVALENT",
              "mvx": "SEQ",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free",
              "cvx": "150",
              "beginAge": "6 months",
              "tradeName": "FLUARIX - QUADRIVALENT",
              "mvx": "SKB",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free",
              "cvx": "150",
              "beginAge": "6 months",
              "tradeName": "FLUZONE - QUADRIVALENT",
              "mvx": "PMC",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free",
              "cvx": "150",
              "beginAge": "6 months",
              "tradeName": "FLULAVAL - QUADRIVALENT",
              "mvx": "IDB",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Influenza, injectable, quadrivalent",
              "cvx": "158",
              "beginAge": "6 months",
              "endAge": "3 years",
              "tradeName": "FLUZONE - QUADRIVALENT",
              "mvx": "PMC",
              "volume": "0.25",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Influenza, injectable, quadrivalent",
              "cvx": "158",
              "beginAge": "6 months",
              "tradeName": "FLUZONE - QUADRIVALENT",
              "mvx": "PMC",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Influenza, injectable, quadrivalent",
              "cvx": "158",
              "beginAge": "6 months",
              "endAge": "3 years",
              "tradeName": "AFLURIA - QUADRIVALENT",
              "mvx": "SEQ",
              "volume": "0.25",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Influenza, injectable, quadrivalent",
              "cvx": "158",
              "beginAge": "3 years",
              "tradeName": "AFLURIA - QUADRIVALENT",
              "mvx": "SEQ",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free, peds",
              "cvx": "161",
              "beginAge": "6 months",
              "endAge": "3 years",
              "volume": "0.25",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "Influenza, injectable, MDCK, preservative free, quadrivalent",
              "cvx": "171",
              "beginAge": "2 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "influenza, recombinant, quadrIvalent,injectable, preservative free",
              "cvx": "185",
              "beginAge": "18 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "Influenza, injectable, MDCK, preservative, quadrivalent",
              "cvx": "186",
              "beginAge": "2 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Influenza, high dose, quadrivalent",
              "cvx": "197",
              "beginAge": "65 years",
              "volume": "0.7",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "influenza, seasonal vaccine, quadrivalent, adjuvanted",
              "cvx": "205",
              "beginAge": "65 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Influenza, split incl. purified surface antigen",
              "cvx": "15",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, whole",
              "cvx": "16",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, Unspecified",
              "cvx": "88",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, live, intranasal",
              "cvx": "111",
              "beginAge": "6 months - 4 days",
              "endAge": "50 years"
            },
            {
              "vaccineType": "Influenza, high dose seasonal",
              "cvx": "135",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, injectable preservative free",
              "cvx": "140",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, injectable",
              "cvx": "141",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, intradermal, preservative free",
              "cvx": "144",
              "beginAge": "12 years - 4 days",
              "endAge": "65 years"
            },
            {
              "vaccineType": "Influenza, live, intranasal, quadrivalent",
              "cvx": "149",
              "beginAge": "6 months - 4 days",
              "endAge": "50 years"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free",
              "cvx": "150",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "influenza nasal, unspecified formulation",
              "cvx": "151",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, injectable, MDCK, preservative free",
              "cvx": "153",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType":
                  "Influenza, recombinant, injectable, preservative free",
              "cvx": "155",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, injectable, quadrivalent",
              "cvx": "158",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType":
                  "Influenza, injectable, quadrivalent, preservative free, peds",
              "cvx": "161",
              "beginAge": "6 months - 4 days",
              "endAge": "3 years"
            },
            {
              "vaccineType":
                  "Influenza, intradermal, quadrivalent, preservative free",
              "cvx": "166",
              "beginAge": "12 years - 4 days",
              "endAge": "65 years"
            },
            {
              "vaccineType": "influenza, trivalent, adjuvanted",
              "cvx": "168",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType":
                  "Influenza, injectable, MDCK, preservative free, quadrivalent",
              "cvx": "171",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType":
                  "influenza, recombinant, quadrIvalent,injectable, preservative free",
              "cvx": "185",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType":
                  "Influenza, injectable, MDCK, preservative, quadrivalent",
              "cvx": "186",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType": "Influenza, high dose, quadrivalent",
              "cvx": "197",
              "beginAge": "6 months - 4 days"
            },
            {
              "vaccineType":
                  "influenza, seasonal vaccine, quadrivalent, adjuvanted",
              "cvx": "205",
              "beginAge": "6 months - 4 days"
            }
          ],
          "conditionalSkip": [
            {
              "context": "Both",
              "setLogic": "OR",
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required if the patient has received 2 or more doses during the current season.",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Date",
                      "startDate": "44378",
                      "endDate": "44742",
                      "doseCount": "1",
                      "doseType": "Valid",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "15; 16; 88; 111; 135; 140; 141; 144; 149; 150; 151; 153; 155; 158; 161; 166; 168; 171; 185; 186; 197; 205"
                    }
                  ]
                },
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required if the patient has received 1 or more doses during the current season AND patient was 9 years or older when the first dose was received.",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Date",
                      "startDate": "44378",
                      "endDate": "44742",
                      "doseCount": "0",
                      "doseType": "Valid",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "15; 16; 88; 111; 135; 140; 141; 144; 149; 150; 151; 153; 155; 158; 161; 166; 168; 171; 185; 186; 197; 205"
                    },
                    {
                      "conditionID": "2",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "9 years",
                      "doseCount": "0",
                      "doseType": "Total",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "15; 16; 88; 111; 135; 140; 141; 144; 149; 150; 151; 153; 155; 158; 161; 166; 168; 171; 185; 186; 197; 205"
                    }
                  ]
                },
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has received 1 or more doses during the current season AND patient has received 2 or more doses before July 1, 2021.",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Date",
                      "startDate": "44378",
                      "endDate": "44742",
                      "doseCount": "0",
                      "doseType": "Valid",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "15; 16; 88; 111; 135; 140; 141; 144; 149; 150; 151; 153; 155; 158; 161; 166; 168; 171; 185; 186; 197; 205"
                    },
                    {
                      "conditionID": "2",
                      "conditionType": "Vaccine Count by Date",
                      "endDate": "44378",
                      "doseCount": "1",
                      "doseType": "Valid",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "15; 16; 88; 111; 135; 140; 141; 144; 149; 150; 151; 153; 155; 158; 161; 166; 168; 171; 185; 186; 197; 205"
                    }
                  ]
                }
              ]
            }
          ],
          "recurringDose": "Yes",
          "seasonalRecommendation": {"startDate": "44378", "endDate": "44742"}
        }
      ]
    }
  ]
});
