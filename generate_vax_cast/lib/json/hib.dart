import 'package:vax_cast/vax_cast.dart';

final hib = AntigenSupportingData.fromJson({
  "contraindications": {
    "vaccineGroup": {
      "contraindication": [
        {
          "observationCode": "080",
          "observationTitle": "Adverse reaction to vaccine component",
          "contraindicationText":
              "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
        },
        {
          "observationCode": "098",
          "observationTitle":
              "Severe allergic reaction after previous dose of Hib",
          "contraindicationText":
              "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Hib vaccine."
        },
        {
          "observationCode": "159",
          "observationTitle": "Radiation therapy",
          "contraindicationText":
              "Do not vaccinate if the patient is undergoing radiation therapy, including 14 days before the start of therapy and 3 months after the completion of therapy.",
          "beginAge": "6 weeks",
          "endAge": "5 years"
        },
        {
          "observationCode": "168",
          "observationTitle": "Chemotherapy",
          "contraindicationText":
              "Do not vaccinate if the patient is undergoing chemotherapy, including 14 days before the start of therapy and 3 months after the completion of therapy.",
          "beginAge": "6 weeks",
          "endAge": "5 years"
        }
      ]
    },
    "vaccine": {
      "contraindication": [
        {
          "observationCode": "076",
          "observationTitle": "Progressive neurologic disorder",
          "contraindicationText":
              "Do not vaccinate if the patient has progressive neurologic disorder until a treatment regimen has been established and the condition has stabilized.",
          "contraindicatedVaccine": [
            {"vaccineType": "DTaP-IPV-Hib-HepB "},
            {"vaccineType": "DTP-hepB-Hib Pentavalent Non-US "}
          ]
        },
        {
          "observationCode": "079",
          "observationTitle":
              "Encephalopathy not attributable to another identifiable cause within 7 days of administration of a previous dose of Tdap, DTP, or DTaP vaccine",
          "contraindicationText":
              "Do not vaccinate if the patient has had encephalopathy not attributable to another identifiable cause within 7 days of administration of a previous dose of Tdap, DTP, or DTaP vaccine.",
          "contraindicatedVaccine": [
            {"vaccineType": "DTaP-IPV-Hib-HepB "},
            {"vaccineType": "DTP-hepB-Hib Pentavalent Non-US "}
          ]
        },
        {
          "observationCode": "104",
          "observationTitle": "Allergic reaction to latex",
          "contraindicationText":
              "Do not vaccinate if the patient has an allergy to latex.",
          "contraindicatedVaccine": [
            {"vaccineType": "PRP-T "},
            {"vaccineType": "PRP-OMP "},
            {"vaccineType": "Hib-Hep B "}
          ]
        },
        {
          "observationCode": "110",
          "observationTitle": "Hypersensitivity to yeast",
          "contraindicationText":
              "Do not vaccinate if the patient has a hypersensitivity to yeast.",
          "contraindicatedVaccine": [
            {"vaccineType": "Hib-Hep B "}
          ]
        }
      ]
    }
  },
  "series": [
    {
      "seriesName": "Hib start at 2 months 4-dose series",
      "targetDisease": "Hib",
      "vaccineGroup": "Hib",
      "seriesType": "Standard",
      "equivalentSeriesGroups": "2",
      "selectSeries": {
        "defaultSeries": "Yes",
        "productPath": "No",
        "seriesGroupName": "Standard",
        "seriesGroup": "1",
        "seriesPriority": "A",
        "seriesPreference": "1",
        "maxAgeToStart": "7 months - 4 days"
      },
      "seriesDose": [
        {
          "doseNumber": "Dose 1",
          "age": [
            {
              "absMinAge": "6 weeks - 4 days",
              "minAge": "6 weeks",
              "earliestRecAge": "2 months",
              "latestRecAge": "3 months + 4 weeks",
              "maxAge": "5 years"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "HbOC",
              "cvx": "47",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-MenCY-TT",
              "cvx": "148",
              "beginAge": "6 weeks - 4 days",
              "endAge": "19 months"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 2",
          "age": [
            {
              "absMinAge": "10 weeks - 4 days",
              "minAge": "10 weeks",
              "earliestRecAge": "4 months",
              "latestRecAge": "5 months + 4 weeks",
              "maxAge": "5 years"
            }
          ],
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "4 weeks - 4 days",
              "minInt": "4 weeks",
              "earliestRecInt": "8 weeks",
              "latestRecInt": "16 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "HbOC",
              "cvx": "47",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-MenCY-TT",
              "cvx": "148",
              "beginAge": "6 weeks - 4 days",
              "endAge": "19 months"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "conditionalSkip": [
            {
              "context": "Evaluation",
              "setLogic": "n/a",
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Target Dose is not required if the current dose was administered on or after 15 months - 4 days of age.",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "15 months - 4 days"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "setLogic": "n/a",
              "set": [
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required for those 15 months or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "15 months"
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
            {
              "absMinAge": "14 weeks - 4 days",
              "minAge": "14 weeks",
              "earliestRecAge": "6 months",
              "latestRecAge": "7 months + 4 weeks",
              "maxAge": "5 years"
            }
          ],
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "4 weeks - 4 days",
              "minInt": "4 weeks",
              "earliestRecInt": "8 weeks",
              "latestRecInt": "16 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "HbOC",
              "cvx": "47",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP/Hib",
              "cvx": "50",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-MenCY-TT",
              "cvx": "148",
              "beginAge": "6 weeks - 4 days",
              "endAge": "19 months"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "conditionalSkip": [
            {
              "context": "Evaluation",
              "setLogic": "OR",
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Target Dose is not required if the current dose was administered on or after 12 months of age.",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "12 months"
                    }
                  ]
                },
                {
                  "setID": "2",
                  "setDescription":
                      "Target Dose is not required if the current dose was administered on or after 12 months - 4 days of age AND the previous dose was administered at least 8 weeks - 4 day from the current dose.",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "12 months - 4 days"
                    },
                    {
                      "conditionID": "2",
                      "conditionType": "Interval",
                      "interval": "8 weeks - 4 days"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "setLogic": "n/a",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required for those 12 months or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "12 months"
                    }
                  ]
                }
              ]
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 4",
          "age": [
            {
              "absMinAge": "12 months - 4 days",
              "minAge": "12 months",
              "earliestRecAge": "12 months",
              "latestRecAge": "16 months + 4 weeks",
              "maxAge": "5 years"
            }
          ],
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "8 weeks - 4 days",
              "minInt": "8 weeks",
              "earliestRecInt": "6 months",
              "latestRecInt": "10 months + 4 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "HbOC",
              "cvx": "47",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP/Hib",
              "cvx": "50",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-MenCY-TT",
              "cvx": "148",
              "beginAge": "6 weeks - 4 days",
              "endAge": "19 months"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "No"
        }
      ]
    },
    {
      "seriesName": "Hib start at 7 months 3-dose series",
      "targetDisease": "Hib",
      "vaccineGroup": "Hib",
      "seriesType": "Standard",
      "equivalentSeriesGroups": "2",
      "selectSeries": {
        "defaultSeries": "No",
        "productPath": "No",
        "seriesGroupName": "Standard",
        "seriesGroup": "1",
        "seriesPriority": "A",
        "seriesPreference": "3",
        "maxAgeToStart": "12 months - 4 days"
      },
      "seriesDose": [
        {
          "doseNumber": "Dose 1",
          "age": [
            {
              "absMinAge": "7 months - 4 days",
              "minAge": "7 months",
              "maxAge": "5 years"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "HbOC",
              "cvx": "47",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-MenCY-TT",
              "cvx": "148",
              "beginAge": "6 weeks - 4 days",
              "endAge": "19 months"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 2",
          "age": [
            {"maxAge": "5 years"}
          ],
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "4 weeks - 4 days",
              "minInt": "4 weeks",
              "earliestRecInt": "4 weeks",
              "latestRecInt": "4 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "HbOC",
              "cvx": "47",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP/Hib",
              "cvx": "50",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-MenCY-TT",
              "cvx": "148",
              "beginAge": "6 weeks - 4 days",
              "endAge": "19 months"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "conditionalSkip": [
            {
              "context": "Evaluation",
              "setLogic": "OR",
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Target Dose is not required if the current dose was administered on or after 15 months of age.",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "15 months"
                    }
                  ]
                },
                {
                  "setID": "2",
                  "setDescription":
                      "Target Dose is not required if the current dose was administered on or after 15 months - 4 days of age AND the previous dose was administered at least 8 weeks - 4 day from the current dose.",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "15 months - 4 days"
                    },
                    {
                      "conditionID": "2",
                      "conditionType": "Interval",
                      "interval": "8 weeks - 4 days"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "setLogic": "n/a",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required for those 15 months or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "15 months"
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
            {
              "absMinAge": "12 months - 4 days",
              "minAge": "12 months",
              "earliestRecAge": "12 months",
              "latestRecAge": "16 months + 4 weeks",
              "maxAge": "5 years"
            }
          ],
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "8 weeks - 4 days",
              "minInt": "8 weeks",
              "earliestRecInt": "8 weeks",
              "latestRecInt": "8 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "HbOC",
              "cvx": "47",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP/Hib",
              "cvx": "50",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-MenCY-TT",
              "cvx": "148",
              "beginAge": "6 weeks - 4 days",
              "endAge": "19 months"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "No"
        }
      ]
    },
    {
      "seriesName": "Hib start at 12 months 2-dose series",
      "targetDisease": "Hib",
      "vaccineGroup": "Hib",
      "seriesType": "Standard",
      "equivalentSeriesGroups": "2",
      "selectSeries": {
        "defaultSeries": "No",
        "productPath": "No",
        "seriesGroupName": "Standard",
        "seriesGroup": "1",
        "seriesPriority": "A",
        "seriesPreference": "4",
        "maxAgeToStart": "15 months - 4 days"
      },
      "seriesDose": [
        {
          "doseNumber": "Dose 1",
          "age": [
            {
              "absMinAge": "12 months - 4 days",
              "minAge": "12 months",
              "maxAge": "5 years"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "HbOC",
              "cvx": "47",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP/Hib",
              "cvx": "50",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-MenCY-TT",
              "cvx": "148",
              "beginAge": "6 weeks - 4 days",
              "endAge": "19 months"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 2",
          "age": [
            {"maxAge": "5 years"}
          ],
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "8 weeks - 4 days",
              "minInt": "8 weeks",
              "earliestRecInt": "8 weeks",
              "latestRecInt": "8 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "HbOC",
              "cvx": "47",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP/Hib",
              "cvx": "50",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-MenCY-TT",
              "cvx": "148",
              "beginAge": "6 weeks - 4 days",
              "endAge": "19 months"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "No"
        }
      ]
    },
    {
      "seriesName": "Hib start at 15 months 1-dose series",
      "targetDisease": "Hib",
      "vaccineGroup": "Hib",
      "seriesType": "Standard",
      "equivalentSeriesGroups": "2",
      "selectSeries": {
        "defaultSeries": "No",
        "productPath": "No",
        "seriesGroupName": "Standard",
        "seriesGroup": "1",
        "seriesPriority": "A",
        "seriesPreference": "5"
      },
      "seriesDose": [
        {
          "doseNumber": "Dose 1",
          "age": [
            {
              "absMinAge": "15 months - 4 days",
              "minAge": "15 months",
              "maxAge": "5 years"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "HbOC",
              "cvx": "47",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP/Hib",
              "cvx": "50",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-MenCY-TT",
              "cvx": "148",
              "beginAge": "6 weeks - 4 days",
              "endAge": "19 months"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "No"
        }
      ]
    },
    {
      "seriesName": "Hib PRP-OMP 3-dose series",
      "targetDisease": "Hib",
      "vaccineGroup": "Hib",
      "seriesType": "Standard",
      "equivalentSeriesGroups": "2",
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
          "age": [
            {
              "absMinAge": "6 weeks - 4 days",
              "minAge": "6 weeks",
              "earliestRecAge": "2 months",
              "latestRecAge": "3 months + 4 weeks",
              "maxAge": "5 years"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 2",
          "age": [
            {
              "absMinAge": "10 weeks - 4 days",
              "minAge": "10 weeks",
              "earliestRecAge": "4 months",
              "latestRecAge": "5 months + 4 weeks",
              "maxAge": "5 years"
            }
          ],
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "4 weeks - 4 days",
              "minInt": "4 weeks",
              "earliestRecInt": "8 weeks",
              "latestRecInt": "16 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 3",
          "age": [
            {
              "absMinAge": "12 months - 4 days",
              "minAge": "12 months",
              "earliestRecAge": "12 months",
              "latestRecAge": "16 months + 4 weeks",
              "maxAge": "5 years"
            }
          ],
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "8 weeks - 4 days",
              "minInt": "8 weeks",
              "earliestRecInt": "6 months",
              "latestRecInt": "10 months + 4 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "HbOC",
              "cvx": "47",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP/Hib",
              "cvx": "50",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-MenCY-TT",
              "cvx": "148",
              "beginAge": "6 weeks - 4 days",
              "endAge": "19 months"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "No"
        }
      ]
    },
    {
      "seriesName": "Hib risk child 2-dose series",
      "targetDisease": "Hib",
      "vaccineGroup": "Hib",
      "seriesType": "Risk",
      "selectSeries": {
        "defaultSeries": "No",
        "productPath": "No",
        "seriesGroupName": "Increased Risk",
        "seriesGroup": "2",
        "seriesPriority": "B",
        "seriesPreference": "1",
        "minAgeToStart": "12 months",
        "maxAgeToStart": "5 years"
      },
      "indication": [
        {
          "observationCode": {
            "text": "Persistent complement, properdin, or factor B deficiency",
            "code": "151"
          },
          "description":
              "Administer to persons who have early complement component deficiencies.",
          "beginAge": "12 months",
          "endAge": "5 years"
        },
        {
          "observationCode": {
            "text":
                "B-lymphocyte [humoral] - Less severe antibody deficiencies",
            "code": "146"
          },
          "description":
              "Administer to persons who have less severe B-lymphocyte [humoral] - antibody deficiencies [e.g., selective IgA deficiency and IgG subclass deficiency].",
          "beginAge": "12 months",
          "endAge": "5 years"
        },
        {
          "observationCode": {
            "text": "Anatomical or functional asplenia",
            "code": "160"
          },
          "description":
              "Administer to persons with anatomic or functional asplenia, including sickle cell disease.",
          "beginAge": "12 months",
          "endAge": "5 years"
        }
      ],
      "seriesDose": [
        {
          "doseNumber": "Dose 1",
          "age": [
            {"absMinAge": "12 months - 4 days", "minAge": "12 months"}
          ],
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "8 weeks - 4 days",
              "minInt": "8 weeks",
              "earliestRecInt": "8 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "HbOC",
              "cvx": "47",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP/Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
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
                      "Dose is not required if the patient has received 1 or more doses on or after the age of 12 months",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "12 months",
                      "doseCount": "0",
                      "doseType": "Total",
                      "doseCountLogic": "greater than"
                    }
                  ]
                }
              ]
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 2",
          "age": [{}],
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "8 weeks - 4 days",
              "minInt": "8 weeks",
              "earliestRecInt": "8 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks",
              "endAge": "5 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "HbOC",
              "cvx": "47",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP/Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
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
                      "Dose is not required if the patient has received 2 or more doses before the age of 12 months",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "6 weeks - 4 days",
                      "endAge": "12 months",
                      "doseCount": "1",
                      "doseType": "Total",
                      "doseCountLogic": "greater than"
                    }
                  ]
                },
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required if the patient has received 2 or more doses on or after the age of 12 months",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "12 months",
                      "doseCount": "1",
                      "doseType": "Total",
                      "doseCountLogic": "greater than"
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
      "seriesName": "Hib risk 1-dose series",
      "targetDisease": "Hib",
      "vaccineGroup": "Hib",
      "seriesType": "Risk",
      "equivalentSeriesGroups": "1",
      "selectSeries": {
        "defaultSeries": "No",
        "productPath": "No",
        "seriesGroupName": "Increased Risk",
        "seriesGroup": "2",
        "seriesPriority": "C",
        "seriesPreference": "1",
        "minAgeToStart": "15 months"
      },
      "indication": [
        {
          "observationCode": {
            "text": "Undergoing elective splenectomy",
            "code": "002"
          },
          "description":
              "Administered to persons who are undergoing elective splenectomy if they have not previously received Hib vaccine. Vaccination 14 or more days before splenectomy is suggested.",
          "beginAge": "15 months",
          "guidance":
              "Vaccination 14 or more days before splenectomy is suggested."
        },
        {
          "observationCode": {
            "text": "Anatomical or functional asplenia",
            "code": "160"
          },
          "description":
              "Administer to persons with anatomic or functional asplenia, including sickle cell disease.",
          "beginAge": "5 years"
        },
        {
          "observationCode": {"text": "HIV Infection", "code": "186"},
          "description": "Administer to persons with HIV Infection",
          "beginAge": "5 years",
          "endAge": "19 years"
        }
      ],
      "seriesDose": [
        {
          "doseNumber": "Dose 1",
          "age": [
            {
              "absMinAge": "15 months - 4 days",
              "minAge": "15 months",
              "earliestRecAge": "15 months"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "HbOC",
              "cvx": "47",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP/Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Hib-Hep B",
              "cvx": "51",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-Hep B",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "No"
        }
      ]
    },
    {
      "seriesName": "Hib risk 3-dose series",
      "targetDisease": "Hib",
      "vaccineGroup": "Hib",
      "seriesType": "Risk",
      "selectSeries": {
        "defaultSeries": "No",
        "productPath": "No",
        "seriesGroupName": "Increased Risk",
        "seriesGroup": "2",
        "seriesPriority": "A",
        "seriesPreference": "1",
        "minAgeToStart": "6 weeks"
      },
      "indication": [
        {
          "observationCode": {
            "text": "Recipient of a hematopoietic stem cell transplant",
            "code": "004"
          },
          "description":
              "Administer to recipients of a hematopoietic stem cell transplant (HSCT) 6 to 12 months after a successful transplant, regardless of vaccination history.",
          "beginAge": "6 weeks",
          "guidance":
              "At least 4 weeks should separate doses, 6 to 12 months after a successful transplant."
        }
      ],
      "seriesDose": [
        {
          "doseNumber": "Dose 1",
          "age": [
            {"absMinAge": "6 weeks - 4 days", "minAge": "6 weeks"}
          ],
          "interval": [
            {
              "fromPrevious": "N",
              "fromRelevantObs": {
                "text": "Date of hematopoietic stem cell transplant",
                "code": "171"
              },
              "earliestRecInt": "6 months",
              "latestRecInt": "12 months"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "No"
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
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 3",
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
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Hib, unspecified formulation",
              "cvx": "17",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-D",
              "cvx": "46",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-T",
              "cvx": "48",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "PRP-OMP",
              "cvx": "49",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "No"
        }
      ]
    }
  ]
});
