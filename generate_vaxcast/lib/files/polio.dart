import 'package:vaxcast/vaxcast.dart';

final polio = AntigenSupportingData.fromJson({
    "targetDisease": "Polio",
    "vaccineGroup": "Polio",
    "contraindications": {
        "vaccineGroup": {
            "contraindication": [
                {
                    "observationTitle": "Severe allergic reaction after previous dose of Polio",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Polio vaccine."
                },
                {
                    "observationTitle": "Adverse reaction to vaccine component",
                    "contraindicationText": "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
                },
                {
                    "observationTitle": "Severe allergic reaction to neomycin",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction to neomycin."
                },
                {
                    "observationTitle": "Severe allergic reaction to streptomycin",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction to streptomycin."
                },
                {
                    "observationTitle": "Severe allergic reaction to polymyxin B",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction to polymyxin B."
                },
                {
                    "observationTitle": "Hypersensitivity to the preservative 2-phenoxyethanol",
                    "contraindicationText": "Do not vaccinate if the patient has a hypersensitivity to the preservative 2-phenoxyethanol."
                }
            ]
        },
        "vaccine": {
            "contraindication": [
                {
                    "observationTitle": "Progressive neurologic disorder",
                    "contraindicationText": "Do not vaccinate if the patient has progressive neurologic disorder until a treatment regimen has been established and the condition has stabilized.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146"
                        }
                    ]
                },
                {
                    "observationTitle": "Encephalopathy not attributable to another identifiable cause within 7 days of administration of a previous dose of Tdap, DTP, or DTaP vaccine",
                    "contraindicationText": "Do not vaccinate if the patient has had encephalopathy not attributable to another identifiable cause within 7 days of administration of a previous dose of Tdap, DTP, or DTaP vaccine.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146"
                        }
                    ]
                }
            ]
        }
    },
    "series": [
        {
            "seriesName": "Polio 4-dose series",
            "targetDisease": "Polio",
            "vaccineGroup": "Polio",
            "seriesAdminGuidance": [
                "When evaluating doses of oral polio vaccine (OPV), only documentation specifying receipt of trivalent vaccine (tOPV) constitutes proof of vaccination according to the U.S. polio vaccination recommendations. As of April 2016, tOPV is no longer available or in use."
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
                            "absMinAge": "6 weeks - 4 days",
                            "minAge": "6 weeks",
                            "earliestRecAge": "2 months",
                            "latestRecAge": "3 months + 4 weeks",
                            "maxAge": "18 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks",
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
                        {
                            "vaccineType": "OPV trivalent",
                            "cvx": "02",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Polio, Unspecified Formulation",
                            "cvx": "89",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB, Historical",
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
                            "vaccineType": "DT, IPV adsorbed",
                            "cvx": "195",
                            "beginAge": "6 years - 4 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "OPV bivalent",
                            "cvx": "178"
                        },
                        {
                            "vaccineType": "OPV, monovalent, unspecified",
                            "cvx": "179"
                        },
                        {
                            "vaccineType": "OPV, Unspecified",
                            "cvx": "182"
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
                            "maxAge": "18 years"
                        }
                    ],
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
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks",
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
                        {
                            "vaccineType": "OPV trivalent",
                            "cvx": "02",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Polio, Unspecified Formulation",
                            "cvx": "89",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB, Historical",
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
                            "vaccineType": "DT, IPV adsorbed",
                            "cvx": "195",
                            "beginAge": "6 years - 4 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "OPV bivalent",
                            "cvx": "178"
                        },
                        {
                            "vaccineType": "OPV, monovalent, unspecified",
                            "cvx": "179"
                        },
                        {
                            "vaccineType": "OPV, Unspecified",
                            "cvx": "182"
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
                            "latestRecAge": "19 months + 4 weeks",
                            "maxAge": "18 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "8 weeks",
                            "latestRecInt": "15 months + 4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks",
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
                        {
                            "vaccineType": "OPV trivalent",
                            "cvx": "02",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Polio, Unspecified Formulation",
                            "cvx": "89",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB, Historical",
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
                            "vaccineType": "DT, IPV adsorbed",
                            "cvx": "195",
                            "beginAge": "6 years - 4 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "OPV bivalent",
                            "cvx": "178"
                        },
                        {
                            "vaccineType": "OPV, monovalent, unspecified",
                            "cvx": "179"
                        },
                        {
                            "vaccineType": "OPV, Unspecified",
                            "cvx": "182"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Evaluation",
                            "setLogic": "OR",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not required if current dose was administered on or after 4 years of age",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "beginAge": "4 years"
                                        }
                                    ]
                                },
                                {
                                    "setID": "2",
                                    "setDescription": "Target Dose is not required if the current dose was administered on or after 4 years - 4 days of age AND at least 6 months - 4 days from the previous dose.",
                                    "conditionLogic": "AND",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "beginAge": "4 years - 4 days"
                                        },
                                        {
                                            "conditionID": "2",
                                            "conditionType": "Interval",
                                            "interval": "6 months - 4 days"
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
                                    "setDescription": "Target Dose is not required for those who are 4 years of age or older.",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "beginAge": "4 years"
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
                            "absMinAge": "18 weeks - 4 days",
                            "minAge": "18 weeks",
                            "earliestRecAge": "4 years",
                            "latestRecAge": "7 years + 4 weeks",
                            "maxAge": "18 years",
                            "cessationDate": "40031"
                        },
                        {
                            "absMinAge": "4 years - 4 days",
                            "minAge": "4 years",
                            "earliestRecAge": "4 years",
                            "latestRecAge": "7 years + 4 weeks",
                            "maxAge": "18 years",
                            "effectiveDate": "40032"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "3 years",
                            "latestRecInt": "6 years + 4 weeks",
                            "cessationDate": "40031"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "6 months - 4 days",
                            "minInt": "6 months",
                            "earliestRecInt": "3 years",
                            "latestRecInt": "6 years + 4 weeks",
                            "effectiveDate": "40032"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks",
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
                            "vaccineType": "DTaP-IPV",
                            "cvx": "130",
                            "beginAge": "4 years",
                            "endAge": "7 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "OPV trivalent",
                            "cvx": "02",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Polio, Unspecified Formulation",
                            "cvx": "89",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB, Historical",
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
                            "vaccineType": "DT, IPV adsorbed",
                            "cvx": "195",
                            "beginAge": "6 years - 4 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "OPV bivalent",
                            "cvx": "178"
                        },
                        {
                            "vaccineType": "OPV, monovalent, unspecified",
                            "cvx": "179"
                        },
                        {
                            "vaccineType": "OPV, Unspecified",
                            "cvx": "182"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Polio 5-dose series",
            "targetDisease": "Polio",
            "vaccineGroup": "Polio",
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
                    "age": [
                        {
                            "absMinAge": "6 weeks - 4 days",
                            "minAge": "6 weeks",
                            "earliestRecAge": "2 months",
                            "latestRecAge": "3 months + 4 weeks",
                            "maxAge": "18 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks",
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
                        {
                            "vaccineType": "OPV trivalent",
                            "cvx": "02",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Polio, Unspecified Formulation",
                            "cvx": "89",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB, Historical",
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
                            "vaccineType": "DT, IPV adsorbed",
                            "cvx": "195",
                            "beginAge": "6 years - 4 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "OPV bivalent",
                            "cvx": "178"
                        },
                        {
                            "vaccineType": "OPV, monovalent, unspecified",
                            "cvx": "179"
                        },
                        {
                            "vaccineType": "OPV, Unspecified",
                            "cvx": "182"
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
                            "maxAge": "18 years"
                        }
                    ],
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
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks",
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
                        {
                            "vaccineType": "OPV trivalent",
                            "cvx": "02",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Polio, Unspecified Formulation",
                            "cvx": "89",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB, Historical",
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
                            "vaccineType": "DT, IPV adsorbed",
                            "cvx": "195",
                            "beginAge": "6 years - 4 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "OPV bivalent",
                            "cvx": "178"
                        },
                        {
                            "vaccineType": "OPV, monovalent, unspecified",
                            "cvx": "179"
                        },
                        {
                            "vaccineType": "OPV, Unspecified",
                            "cvx": "182"
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
                            "latestRecAge": "19 months + 4 weeks",
                            "maxAge": "18 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "8 weeks",
                            "latestRecInt": "15 months + 4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks",
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
                        {
                            "vaccineType": "OPV trivalent",
                            "cvx": "02",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Polio, Unspecified Formulation",
                            "cvx": "89",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB, Historical",
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
                            "vaccineType": "DT, IPV adsorbed",
                            "cvx": "195",
                            "beginAge": "6 years - 4 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "OPV trivalent",
                            "cvx": "02"
                        },
                        {
                            "vaccineType": "OPV bivalent",
                            "cvx": "178"
                        },
                        {
                            "vaccineType": "OPV, monovalent, unspecified",
                            "cvx": "179"
                        },
                        {
                            "vaccineType": "OPV, Unspecified",
                            "cvx": "182"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Evaluation",
                            "setLogic": "OR",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not required if current dose was administered on or after 4 years of age",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "beginAge": "4 years"
                                        }
                                    ]
                                },
                                {
                                    "setID": "2",
                                    "setDescription": "Target Dose is not required if the current dose was administered on or after 4 years - 4 days of age AND at least 6 months - 4 days from the previous dose.",
                                    "conditionLogic": "AND",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "beginAge": "4 years - 4 days"
                                        },
                                        {
                                            "conditionID": "2",
                                            "conditionType": "Interval",
                                            "interval": "6 months - 4 days"
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
                                    "setDescription": "Target Dose is not required for those who are 4 years of age or older.",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "beginAge": "4 years"
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
                            "maxAge": "18 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "0 days",
                            "earliestRecInt": "0 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks",
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
                            "vaccineType": "DTaP-IPV",
                            "cvx": "130",
                            "beginAge": "4 years",
                            "endAge": "7 years",
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
                            "vaccineType": "OPV trivalent",
                            "cvx": "02",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Polio, Unspecified Formulation",
                            "cvx": "89",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB, Historical",
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
                            "vaccineType": "DT, IPV adsorbed",
                            "cvx": "195",
                            "beginAge": "6 years - 4 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "OPV bivalent",
                            "cvx": "178"
                        },
                        {
                            "vaccineType": "OPV, monovalent, unspecified",
                            "cvx": "179"
                        },
                        {
                            "vaccineType": "OPV, Unspecified",
                            "cvx": "182"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 5",
                    "age": [
                        {
                            "absMinAge": "4 years - 4 days",
                            "minAge": "4 years",
                            "earliestRecAge": "4 years",
                            "latestRecAge": "7 years + 4 weeks",
                            "maxAge": "18 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "6 months - 4 days",
                            "minInt": "6 months",
                            "earliestRecInt": "3 years",
                            "latestRecInt": "6 years + 4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks",
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
                            "vaccineType": "DTaP-IPV",
                            "cvx": "130",
                            "beginAge": "4 years",
                            "endAge": "7 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB, Historical",
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
                            "vaccineType": "DT, IPV adsorbed",
                            "cvx": "195",
                            "beginAge": "6 years - 4 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "OPV trivalent",
                            "cvx": "02"
                        },
                        {
                            "vaccineType": "OPV bivalent",
                            "cvx": "178"
                        },
                        {
                            "vaccineType": "OPV, monovalent, unspecified",
                            "cvx": "179"
                        },
                        {
                            "vaccineType": "OPV, Unspecified",
                            "cvx": "182"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Polio risk adult series",
            "targetDisease": "Polio",
            "vaccineGroup": "Polio",
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "1",
                "minAgeToStart": "18 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Laboratory workers who handle specimens that might contain polioviruses"
                    },
                    "description": "Administer to laboratory workers who handle specimens that might contain polioviruses.",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Health-care workers who have close contact with patients who might be excreting wild polioviruses"
                    },
                    "description": "Administer to health-care workers who have close contact with patients who might be excreting wild polioviruses.",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Travel to areas or countries where polio is epidemic or endemic"
                    },
                    "description": "Administer to travelers to areas or countries where polio is epidemic or endemic.",
                    "beginAge": "18 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "18 years - 4 days",
                            "minAge": "18 years",
                            "earliestRecAge": "18 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB, Historical",
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
                            "vaccineType": "DT, IPV adsorbed",
                            "cvx": "195",
                            "beginAge": "6 yrs - 4 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "OPV bivalent",
                            "cvx": "178"
                        },
                        {
                            "vaccineType": "OPV, monovalent, unspecified",
                            "cvx": "179"
                        },
                        {
                            "vaccineType": "OPV, Unspecified",
                            "cvx": "182"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Dose is not required if the patient has received a complete standard series of vaccinations",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Completed Series",
                                            "seriesGroups": "1"
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
                    "age": [
                        {
                            "absMinAge": "18 years - 4 days",
                            "minAge": "18 years",
                            "earliestRecAge": "18 years"
                        }
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
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB, Historical",
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
                            "vaccineType": "DT, IPV adsorbed",
                            "cvx": "195",
                            "beginAge": "6 yrs - 4 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "OPV bivalent",
                            "cvx": "178"
                        },
                        {
                            "vaccineType": "OPV, monovalent, unspecified",
                            "cvx": "179"
                        },
                        {
                            "vaccineType": "OPV, Unspecified",
                            "cvx": "182"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Dose is not required if the patient has received a complete standard series of vaccinations",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Completed Series",
                                            "seriesGroups": "1"
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
                            "absMinAge": "18 years - 4 days",
                            "minAge": "18 years",
                            "earliestRecAge": "18 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "6 months - 4 days",
                            "minInt": "6 months",
                            "earliestRecInt": "6 months",
                            "latestRecInt": "12 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
                            "beginAge": "6 weeks",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "IPV",
                            "cvx": "10",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB, Historical",
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
                            "vaccineType": "DT, IPV adsorbed",
                            "cvx": "195",
                            "beginAge": "6 yrs - 4 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "OPV bivalent",
                            "cvx": "178"
                        },
                        {
                            "vaccineType": "OPV, monovalent, unspecified",
                            "cvx": "179"
                        },
                        {
                            "vaccineType": "OPV, Unspecified",
                            "cvx": "182"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setDescription": "n/a",
                                    "condition": [
                                        {}
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        }
    ]
});