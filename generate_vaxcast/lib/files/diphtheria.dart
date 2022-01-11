import 'package:vaxcast/vaxcast.dart';

final diphtheria = AntigenSupportingData.fromJson({
  "targetDisease": "Diphtheria",
  "vaccineGroup": "DTaP/Tdap/Td",
  "contraindications": {
    "vaccineGroup": {
      "contraindication": [
        {
          "observationCode": "087",
          "observationTitle":
              "Severe allergic reaction after previous dose of Diphtheria",
          "contraindicationText":
              "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Diphtheria vaccine."
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
          "observationCode": "076",
          "observationTitle": "Progressive neurologic disorder",
          "contraindicationText":
              "Do not vaccinate if the patient has progressive neurologic disorder until a treatment regimen has been established and the condition has stabilized.",
          "contraindicatedVaccine": [
            {"vaccineType": "DTP", "cvx": "01"},
            {"vaccineType": "DTaP", "cvx": "20"},
            {"vaccineType": "DTP-Hib", "cvx": "22"},
            {"vaccineType": "DTaP-Hib", "cvx": "50"},
            {"vaccineType": "DTP-Hib-HepB", "cvx": "102"},
            {"vaccineType": "DTaP, 5 pertussis antigens", "cvx": "106"},
            {"vaccineType": "DTaP, Unspecified Formulation", "cvx": "107"},
            {"vaccineType": "DTaP-HepB-IPV", "cvx": "110"},
            {"vaccineType": "Tdap", "cvx": "115"},
            {"vaccineType": "DTaP-Hib-IPV", "cvx": "120"},
            {"vaccineType": "DTaP-IPV", "cvx": "130"},
            {"vaccineType": "DTaP-IPV-Hib-HepB,historical", "cvx": "132"},
            {"vaccineType": "DTaP-IPV-Hib-HepB", "cvx": "146"},
            {"vaccineType": "DTP-hepB-Hib Pentavalent Non-US", "cvx": "198"}
          ]
        },
        {
          "observationCode": "079",
          "observationTitle":
              "Encephalopathy not attributable to another identifiable cause within 7 days of administration of a previous dose of Tdap, DTP, or DTaP vaccine",
          "contraindicationText":
              "Do not vaccinate if the patient has had encephalopathy not attributable to another identifiable cause within 7 days of administration of a previous dose of Tdap, DTP, or DTaP vaccine.",
          "contraindicatedVaccine": [
            {"vaccineType": "DTP", "cvx": "01"},
            {"vaccineType": "DTaP", "cvx": "20"},
            {"vaccineType": "DTP-Hib", "cvx": "22"},
            {"vaccineType": "DTaP-Hib", "cvx": "50"},
            {"vaccineType": "DTP-Hib-HepB", "cvx": "102"},
            {"vaccineType": "DTaP, 5 pertussis antigens", "cvx": "106"},
            {"vaccineType": "DTaP, Unspecified Formulation", "cvx": "107"},
            {"vaccineType": "DTaP-HepB-IPV", "cvx": "110"},
            {"vaccineType": "Tdap", "cvx": "115"},
            {"vaccineType": "DTaP-Hib-IPV", "cvx": "120"},
            {"vaccineType": "DTaP-IPV", "cvx": "130"},
            {"vaccineType": "DTaP-IPV-Hib-HepB,historical", "cvx": "132"},
            {"vaccineType": "DTaP-IPV-Hib-HepB", "cvx": "146"},
            {"vaccineType": "DTP-hepB-Hib Pentavalent Non-US", "cvx": "198"}
          ]
        }
      ]
    }
  },
  "series": [
    {
      "seriesName": "Diphtheria standard series",
      "targetDisease": "Diphtheria",
      "vaccineGroup": "DTaP/Tdap/Td",
      "seriesType": "Standard",
      "selectSeries": {
        "defaultSeries": "Yes",
        "productPath": "No",
        "seriesGroupName": "Standard",
        "seriesGroup": "1",
        "seriesPriority": "A",
        "seriesPreference": "1",
        "maxAgeToStart": "12 months - 4 days"
      },
      "seriesDose": [
        {
          "doseNumber": "Dose 1",
          "preferableVaccine": [
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks",
              "endAge": "7 years",
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
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "inadvertentVaccine": [
            {"vaccineType": "Td - Adult Adsorbed", "cvx": "09"},
            {"vaccineType": "Td p-free", "cvx": "113"},
            {"vaccineType": "Tdap", "cvx": "115"},
            {"vaccineType": "Td - Adult", "cvx": "138"},
            {"vaccineType": "Td - Adult Unspecified Formulation", "cvx": "139"},
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196"
            }
          ],
          "conditionalSkip": [
            {
              "context": "Evaluation",
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required for those 7 years or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required for those 7 years or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has received 6 or more total doses to date",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "6 weeks - 4 days",
                      "doseCount": "5",
                      "doseType": "Total",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "01;09;20;22;28;50;102;106;107;110;113;115;120;130;132;138;139;146;170; 195; 196"
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
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "4 weeks - 4 days",
              "minInt": "4 weeks",
              "earliestRecInt": "8 weeks",
              "latestRecInt": "13 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks",
              "endAge": "7 years",
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
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "inadvertentVaccine": [
            {"vaccineType": "Td - Adult Adsorbed", "cvx": "09"},
            {"vaccineType": "Td p-free", "cvx": "113"},
            {"vaccineType": "Tdap", "cvx": "115"},
            {"vaccineType": "Td - Adult", "cvx": "138"},
            {"vaccineType": "Td - Adult Unspecified Formulation", "cvx": "139"},
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196"
            }
          ],
          "conditionalSkip": [
            {
              "context": "Evaluation",
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required for those 7 years or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required for those 7 years or older at the earliest forecasted date for next dose.",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has received 6 or more total doses to date",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "6 weeks - 4 days",
                      "doseCount": "5",
                      "doseType": "Total",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "01;09;20;22;28;50;102;106;107;110;113;115;120;130;132;138;139;146;170; 195; 196"
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
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "4 weeks - 4 days",
              "minInt": "4 weeks",
              "earliestRecInt": "8 weeks",
              "latestRecInt": "13 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks",
              "endAge": "7 years",
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
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "inadvertentVaccine": [
            {"vaccineType": "Td - Adult Adsorbed", "cvx": "09"},
            {"vaccineType": "Td p-free", "cvx": "113"},
            {"vaccineType": "Tdap", "cvx": "115"},
            {"vaccineType": "Td - Adult", "cvx": "138"},
            {"vaccineType": "Td - Adult Unspecified Formulation", "cvx": "139"},
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196"
            }
          ],
          "conditionalSkip": [
            {
              "context": "Evaluation",
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required for those 7 years or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required for those 7 years or older at the earliest forecasted date for next dose.",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has received 6 or more total doses to date",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "6 weeks - 4 days",
                      "doseCount": "5",
                      "doseType": "Total",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "01;09;20;22;28;50;102;106;107;110;113;115;120;130;132;138;139;146;170; 195; 196"
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
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "6 months - 4 days",
              "minInt": "6 months",
              "earliestRecInt": "6 months",
              "latestRecInt": "13 months + 4 weeks"
            }
          ],
          "allowableInterval": {
            "fromPrevious": "Y",
            "absMinInt": "4 months - 4 days"
          },
          "preferableVaccine": [
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks",
              "endAge": "7 years",
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
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td - Adult",
              "cvx": "138",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Td - Adult Unspecified Formulation",
              "cvx": "139",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196",
              "beginAge": "12 months - 4 days"
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
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required for those 4 years or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "4 years - 4 days"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required for those 4 years or older at the earliest forecasted date for next dose.",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "4 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has received 6 or more total doses to date",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "6 weeks - 4 days",
                      "doseCount": "5",
                      "doseType": "Total",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "01;09;20;22;28;50;102;106;107;110;113;115;120;130;132;138;139;146;170; 195; 196"
                    }
                  ]
                }
              ]
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 5",
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "6 months - 4 days",
              "minInt": "6 months",
              "earliestRecInt": "3 years",
              "latestRecInt": "4 years + 4 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "4 years",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td - Adult",
              "cvx": "138",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Td - Adult Unspecified Formulation",
              "cvx": "139",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196",
              "beginAge": "12 months - 4 days"
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
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required for those 7 years or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required for those 7 years or older at the earliest forecasted date for next dose.",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has received 6 or more total doses to date",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "6 weeks - 4 days",
                      "doseCount": "5",
                      "doseType": "Total",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "01;09;20;22;28;50;102;106;107;110;113;115;120;130;132;138;139;146;170; 195; 196"
                    }
                  ]
                }
              ]
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 6",
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "0 days",
              "minInt": "0 days",
              "earliestRecInt": "0 days",
              "intervalPriority": "override"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td - Adult",
              "cvx": "138",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Td - Adult Unspecified Formulation",
              "cvx": "139",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196",
              "beginAge": "12 months - 4 days"
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
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required if the patient has received 2 doses",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "doseCount": "2",
                      "doseType": "Valid",
                      "doseCountLogic": "equal to"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Both",
              "set": [
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required if the patient has received 3 doses",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "doseCount": "3",
                      "doseType": "Valid",
                      "doseCountLogic": "equal to"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Both",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has received 4 doses with 1 pertussis- containing vaccine on or after 4 years",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "doseCount": "4",
                      "doseType": "Valid",
                      "doseCountLogic": "equal to"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Both",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has received 4 doses with 1 pertussis- containing vaccine on or after 4 years",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "2",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "4 years - 4 days",
                      "doseCount": "0",
                      "doseType": "Valid",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "01;20;22;50;102;106;107;110;115;120;130;132;146;170"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Both",
              "set": [
                {
                  "setID": "4",
                  "setDescription":
                      "Dose is not required if the patient has received more than 4 doses",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "doseCount": "4",
                      "doseType": "Valid",
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
          "doseNumber": "Dose 7",
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "4 weeks - 4 days",
              "minInt": "4 weeks",
              "earliestRecInt": "4 weeks",
              "latestRecInt": "4 weeks",
              "intervalPriority": "override"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td - Adult",
              "cvx": "138",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Td - Adult Unspecified Formulation",
              "cvx": "139",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196",
              "beginAge": "12 months - 4 days"
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
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required if the patient has received more than 2 doses.",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "doseCount": "2",
                      "doseType": "Valid",
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
          "doseNumber": "Dose 8",
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "6 months - 4 days",
              "minInt": "6 months",
              "earliestRecInt": "6 months",
              "latestRecInt": "6 months",
              "intervalPriority": "override"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td - Adult",
              "cvx": "138",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Td - Adult Unspecified Formulation",
              "cvx": "139",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196",
              "beginAge": "12 months - 4 days"
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
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required if the patient has received more than 3 doses",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "doseCount": "3",
                      "doseType": "Valid",
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
          "doseNumber": "Dose 9",
          "preferableVaccine": [
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td - Adult",
              "cvx": "138",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Td - Adult Unspecified Formulation",
              "cvx": "139",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196",
              "beginAge": "12 months - 4 days"
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
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required if the patient has received 1 or more doses after the age of 10 years",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "10 years",
                      "doseCount": "0",
                      "doseType": "Valid",
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
          "doseNumber": "Dose 10",
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "0 days",
              "minInt": "5 years",
              "earliestRecInt": "10 years",
              "latestRecInt": "10 years + 4 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td - Adult",
              "cvx": "138",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Td - Adult Unspecified Formulation",
              "cvx": "139",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorbed",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "Yes"
        }
      ]
    },
    {
      "seriesName": "Diphtheria start at 12 months series",
      "targetDisease": "Diphtheria",
      "vaccineGroup": "DTaP/Tdap/Td",
      "seriesType": "Standard",
      "selectSeries": {
        "defaultSeries": "No",
        "productPath": "No",
        "seriesGroupName": "Standard",
        "seriesGroup": "1",
        "seriesPriority": "A",
        "seriesPreference": "2"
      },
      "seriesDose": [
        {
          "doseNumber": "Dose 1",
          "preferableVaccine": [
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks",
              "endAge": "7 years",
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
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "inadvertentVaccine": [
            {"vaccineType": "Td - Adult Adsorbed", "cvx": "09"},
            {"vaccineType": "Td p-free", "cvx": "113"},
            {"vaccineType": "Tdap", "cvx": "115"},
            {"vaccineType": "Td - Adult", "cvx": "138"},
            {"vaccineType": "Td - Adult Unspecified Formulation", "cvx": "139"},
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196"
            }
          ],
          "conditionalSkip": [
            {
              "context": "Evaluation",
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required for those 7 years or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required for those 7 years or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has received 6 or more total doses to date",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "6 weeks - 4 days",
                      "doseCount": "5",
                      "doseType": "Total",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "01;09;20;22;28;50;102;106;107;110;113;115;120;130;132;138;139;146;170; 195; 196"
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
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks",
              "endAge": "7 years",
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
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "inadvertentVaccine": [
            {"vaccineType": "Td - Adult Adsorbed", "cvx": "09"},
            {"vaccineType": "Td p-free", "cvx": "113"},
            {"vaccineType": "Tdap", "cvx": "115"},
            {"vaccineType": "Td - Adult", "cvx": "138"},
            {"vaccineType": "Td - Adult Unspecified Formulation", "cvx": "139"},
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196"
            }
          ],
          "conditionalSkip": [
            {
              "context": "Evaluation",
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required for those 7 years or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required for those 7 years or older at the earliest forecasted date for next dose.",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has received 6 or more total doses to date",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "6 weeks - 4 days",
                      "doseCount": "5",
                      "doseType": "Total",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "01;09;20;22;28;50;102;106;107;110;113;115;120;130;132;138;139;146;170; 195; 196"
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
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks",
              "endAge": "7 years",
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
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "inadvertentVaccine": [
            {"vaccineType": "Td - Adult Adsorbed", "cvx": "09"},
            {"vaccineType": "Td p-free", "cvx": "113"},
            {"vaccineType": "Tdap", "cvx": "115"},
            {"vaccineType": "Td - Adult", "cvx": "138"},
            {"vaccineType": "Td - Adult Unspecified Formulation", "cvx": "139"},
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196"
            }
          ],
          "conditionalSkip": [
            {
              "context": "Evaluation",
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required for those 7 years or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required for those 7 years or older at the earliest forecasted date for next dose.",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has received 6 or more total doses to date",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "6 weeks - 4 days",
                      "doseCount": "5",
                      "doseType": "Total",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "01;09;20;22;28;50;102;106;107;110;113;115;120;130;132;138;139;146;170; 195; 196"
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
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "6 months - 4 days",
              "minInt": "6 months",
              "earliestRecInt": "6 months",
              "latestRecInt": "13 months + 4 weeks"
            }
          ],
          "allowableInterval": {
            "fromPrevious": "Y",
            "absMinInt": "4 months - 4 days"
          },
          "preferableVaccine": [
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks",
              "endAge": "7 years",
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
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td - Adult",
              "cvx": "138",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Td - Adult Unspecified Formulation",
              "cvx": "139",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196",
              "beginAge": "12 months - 4 days"
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
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required for those 4 years or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "4 years - 4 days"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required for those 4 years or older at the earliest forecasted date for next dose.",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "4 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has received 6 or more total doses to date",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "6 weeks - 4 days",
                      "doseCount": "5",
                      "doseType": "Total",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "01;09;20;22;28;50;102;106;107;110;113;115;120;130;132;138;139;146;170; 195; 196"
                    }
                  ]
                }
              ]
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 5",
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "6 months - 4 days",
              "minInt": "6 months",
              "earliestRecInt": "3 years",
              "latestRecInt": "4 years + 4 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "4 years",
              "endAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td - Adult",
              "cvx": "138",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Td - Adult Unspecified Formulation",
              "cvx": "139",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196",
              "beginAge": "12 months - 4 days"
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
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required for those 7 years or older",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required for those 7 years or older at the earliest forecasted date for next dose.",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Age",
                      "beginAge": "7 years"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Forecast",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has received 6 or more total doses to date",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "6 weeks - 4 days",
                      "doseCount": "5",
                      "doseType": "Total",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "01;09;20;22;28;50;102;106;107;110;113;115;120;130;132;138;139;146;170; 195; 196"
                    }
                  ]
                }
              ]
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 6",
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "0 days",
              "minInt": "0 days",
              "earliestRecInt": "0 days",
              "intervalPriority": "override"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td - Adult",
              "cvx": "138",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Td - Adult Unspecified Formulation",
              "cvx": "139",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196",
              "beginAge": "12 months - 4 days"
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
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required if the patient has received 1 dose and no doses prior to 12 months",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "doseCount": "1",
                      "doseType": "Valid",
                      "doseCountLogic": "equal to"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Both",
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required if the patient has received 1 dose and no doses prior to 12 months",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "2",
                      "conditionType": "Vaccine Count by Age",
                      "endAge": "12 months - 4 days",
                      "doseCount": "0",
                      "doseType": "Total",
                      "doseCountLogic": "equal to"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Both",
              "set": [
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required if the patient has received 2 doses and no doses prior to 12 months",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "doseCount": "2",
                      "doseType": "Valid",
                      "doseCountLogic": "equal to"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Both",
              "set": [
                {
                  "setID": "2",
                  "setDescription":
                      "Dose is not required if the patient has received 2 doses and no doses prior to 12 months",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "2",
                      "conditionType": "Vaccine Count by Age",
                      "endAge": "12 months - 4 days",
                      "doseCount": "0",
                      "doseType": "Total",
                      "doseCountLogic": "equal to"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Both",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has recevied 3 doses with 1 dose of Tdap on or after 7 years and no doses prior to 12 months",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "doseCount": "3",
                      "doseType": "Valid",
                      "doseCountLogic": "equal to"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Both",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has recevied 3 doses with 1 dose of Tdap on or after 7 years and no doses prior to 12 months",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "2",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "7 years",
                      "doseCount": "0",
                      "doseType": "Valid",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "01;20;22;50;102;106;107;110;115;120;130;132;146;170"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Both",
              "set": [
                {
                  "setID": "3",
                  "setDescription":
                      "Dose is not required if the patient has recevied 3 doses with 1 dose of Tdap on or after 7 years and no doses prior to 12 months",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "3",
                      "conditionType": "Vaccine Count by Age",
                      "endAge": "12 months - 4 days",
                      "doseCount": "0",
                      "doseType": "Total",
                      "doseCountLogic": "equal to"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Both",
              "set": [
                {
                  "setID": "4",
                  "setDescription":
                      "Dose is not required if the patient has received 4 doses with 1 pertussis- containing vaccine on or after 4 years and no doses prior to 12 months",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "doseCount": "4",
                      "doseType": "Valid",
                      "doseCountLogic": "equal to"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Both",
              "set": [
                {
                  "setID": "4",
                  "setDescription":
                      "Dose is not required if the patient has received 4 doses with 1 pertussis- containing vaccine on or after 4 years and no doses prior to 12 months",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "2",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "4 years - 4 days",
                      "doseCount": "0",
                      "doseType": "Valid",
                      "doseCountLogic": "greater than",
                      "vaccineTypes":
                          "01;20;22;50;102;106;107;110;115;120;130;132;146;170"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Both",
              "set": [
                {
                  "setID": "4",
                  "setDescription":
                      "Dose is not required if the patient has received 4 doses with 1 pertussis- containing vaccine on or after 4 years and no doses prior to 12 months",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "3",
                      "conditionType": "Vaccine Count by Age",
                      "endAge": "12 months - 4 days",
                      "doseCount": "0",
                      "doseType": "Total",
                      "doseCountLogic": "equal to"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Both",
              "set": [
                {
                  "setID": "5",
                  "setDescription":
                      "Dose is not required if the patient has received more than 4 doses and no doses prior to 12 months",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "doseCount": "4",
                      "doseType": "Valid",
                      "doseCountLogic": "greater than"
                    }
                  ]
                }
              ]
            },
            {
              "context": "Both",
              "set": [
                {
                  "setID": "5",
                  "setDescription":
                      "Dose is not required if the patient has received more than 4 doses and no doses prior to 12 months",
                  "conditionLogic": "AND",
                  "condition": [
                    {
                      "conditionID": "2",
                      "conditionType": "Vaccine Count by Age",
                      "endAge": "12 months - 4 days",
                      "doseCount": "0",
                      "doseType": "Total",
                      "doseCountLogic": "equal to"
                    }
                  ]
                }
              ]
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 7",
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "4 weeks - 4 days",
              "minInt": "4 weeks",
              "earliestRecInt": "4 weeks",
              "latestRecInt": "4 weeks",
              "intervalPriority": "override"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td - Adult",
              "cvx": "138",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Td - Adult Unspecified Formulation",
              "cvx": "139",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196",
              "beginAge": "12 months - 4 days"
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
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required if the patient has received more than 1 dose.",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "doseCount": "1",
                      "doseType": "Valid",
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
          "doseNumber": "Dose 8",
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "6 months - 4 days",
              "minInt": "6 months",
              "earliestRecInt": "6 months",
              "latestRecInt": "6 months",
              "intervalPriority": "override"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td - Adult",
              "cvx": "138",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Td - Adult Unspecified Formulation",
              "cvx": "139",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196",
              "beginAge": "12 months - 4 days"
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
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required if the patient has received more than 2 doses.",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "doseCount": "2",
                      "doseType": "Valid",
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
          "doseNumber": "Dose 9",
          "preferableVaccine": [
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td - Adult",
              "cvx": "138",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Td - Adult Unspecified Formulation",
              "cvx": "139",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorved",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196",
              "beginAge": "12 months - 4 days"
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
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required if the patient has received 1 or more doses after the age of 10 years",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Vaccine Count by Age",
                      "beginAge": "10 years",
                      "doseCount": "0",
                      "doseType": "Valid",
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
          "doseNumber": "Dose 10",
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "0 days",
              "minInt": "5 years",
              "earliestRecInt": "10 years",
              "latestRecInt": "10 years + 4 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "7 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {"vaccineType": "DTP", "cvx": "01", "beginAge": "6 weeks - 4 days"},
            {
              "vaccineType": "Td - Adult Adsorbed",
              "cvx": "09",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP",
              "cvx": "20",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib",
              "cvx": "22",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT - Pediatric",
              "cvx": "28",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib",
              "cvx": "50",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTP-Hib-HepB",
              "cvx": "102",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, 5 pertussis antigens",
              "cvx": "106",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP, Unspecified Formulation",
              "cvx": "107",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-HepB-IPV",
              "cvx": "110",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td p-free",
              "cvx": "113",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Tdap",
              "cvx": "115",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-Hib-IPV",
              "cvx": "120",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV",
              "cvx": "130",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB,historical",
              "cvx": "132",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "Td - Adult",
              "cvx": "138",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "Td - Adult Unspecified Formulation",
              "cvx": "139",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib-HepB",
              "cvx": "146",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DTaP-IPV-Hib",
              "cvx": "170",
              "beginAge": "6 weeks - 4 days"
            },
            {
              "vaccineType": "DT, IPV adsorbed",
              "cvx": "195",
              "beginAge": "6 years - 4 days"
            },
            {
              "vaccineType": "Td, adsorbed, p-free, Lf unspecified",
              "cvx": "196",
              "beginAge": "12 months - 4 days"
            },
            {
              "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
              "cvx": "198",
              "beginAge": "6 weeks - 4 days"
            }
          ],
          "recurringDose": "Yes"
        }
      ]
    }
  ]
});
