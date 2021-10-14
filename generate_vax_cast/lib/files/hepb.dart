import 'package:vax_cast/vax_cast.dart';

final hepb = AntigenSupportingData.fromJson({
    "immunity": {
        "clinicalHistory": [
            {
                "guidelineCode": "019",
                "guidelineTitle": "Laboratory Evidence of Immunity or confirmation of Hepatitis B disease"
            }
        ]
    },
    "contraindications": {
        "vaccineGroup": {
            "contraindication": [
                {
                    "observationCode": "097",
                    "observationTitle": "Severe allergic reaction after previous dose of Hepatitis B",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Hepatitis B vaccine."
                },
                {
                    "observationCode": "080",
                    "observationTitle": "Adverse reaction to vaccine component",
                    "contraindicationText": "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
                },
                {
                    "observationCode": "110",
                    "observationTitle": "Hypersensitivity to yeast",
                    "contraindicationText": "Do not vaccinate if the patient has a hypersensitivity to yeast."
                }
            ]
        },
        "vaccine": {
            "contraindication": [
                {
                    "observationCode": "007",
                    "observationTitle": "Pregnant",
                    "contraindicationText": "Do not vaccinate if the patient is pregnant.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189"
                        }
                    ]
                },
                {
                    "observationCode": "076",
                    "observationTitle": "Progressive neurologic disorder",
                    "contraindicationText": "Do not vaccinate if the patient has progressive neurologic disorder until a treatment regimen has been established and the condition has stabilized.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198"
                        }
                    ]
                },
                {
                    "observationCode": "079",
                    "observationTitle": "Encephalopathy not attributable to another identifiable cause within 7 days of administration of a previous dose of Tdap, DTP, or DTaP vaccine",
                    "contraindicationText": "Do not vaccinate if the patient has had encephalopathy not attributable to another identifiable cause within 7 days of administration of a previous dose of Tdap, DTP, or DTaP vaccine.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198"
                        }
                    ]
                },
                {
                    "observationCode": "107",
                    "observationTitle": "Severe allergic reaction to neomycin",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction to neomycin.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110"
                        }
                    ]
                },
                {
                    "observationCode": "109",
                    "observationTitle": "Severe allergic reaction to polymyxin B",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction to polymyxin B.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110"
                        }
                    ]
                }
            ]
        }
    },
    "series": [
        {
            "seriesName": "HepB 3-dose series",
            "targetDisease": "HepB",
            "vaccineGroup": "HepB",
            "seriesType": "Standard",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "Yes",
                "productPath": "No",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "1",
                "maxAgeToStart": "19 years"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "0 days",
                            "earliestRecAge": "0 days",
                            "latestRecAge": "4 weeks",
                            "maxAge": "19 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "20 years",
                            "volume": "1",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "6 weeks",
                            "endAge": "5 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "4 weeks - 4 days",
                            "minAge": "4 weeks",
                            "earliestRecAge": "1 month",
                            "latestRecAge": "3 months + 4 weeks"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "4 weeks",
                            "latestRecInt": "5 months + 4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "20 years",
                            "volume": "1",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "6 weeks",
                            "endAge": "5 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 3",
                    "age": [
                        {
                            "absMinAge": "24 weeks - 4 days",
                            "minAge": "24 weeks",
                            "earliestRecAge": "6 months",
                            "latestRecAge": "19 months + 4 weeks"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks",
                            "latestRecInt": "18 months + 4 weeks"
                        },
                        {
                            "fromPrevious": "N",
                            "fromTargetDose": "1",
                            "absMinInt": "16 weeks - 4 days",
                            "minInt": "16 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "20 years",
                            "volume": "1",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "6 weeks",
                            "endAge": "5 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "HepB 4-dose series",
            "targetDisease": "HepB",
            "vaccineGroup": "HepB",
            "seriesType": "Standard",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "2",
                "maxAgeToStart": "19 years"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "0 days",
                            "earliestRecAge": "0 days",
                            "latestRecAge": "4 weeks",
                            "maxAge": "19 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "6 weeks",
                            "endAge": "5 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "4 weeks - 4 days",
                            "minAge": "4 weeks",
                            "earliestRecAge": "2 months",
                            "latestRecAge": "3 months + 4 weeks"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "4 weeks",
                            "latestRecInt": "5 months + 4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "6 weeks",
                            "endAge": "5 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
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
                            "minInt": "0 days",
                            "earliestRecInt": "0 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "6 weeks",
                            "endAge": "5 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 4",
                    "age": [
                        {
                            "absMinAge": "24 weeks - 4 days",
                            "minAge": "24 weeks",
                            "earliestRecAge": "6 months",
                            "latestRecAge": "19 months + 4 weeks"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromTargetDose": "2",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks"
                        },
                        {
                            "fromPrevious": "N",
                            "fromTargetDose": "1",
                            "absMinInt": "16 weeks - 4 days",
                            "minInt": "16 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
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
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "6 weeks",
                            "endAge": "5 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "HepB adolescent 2-dose series",
            "targetDisease": "HepB",
            "vaccineGroup": "HepB",
            "seriesType": "Standard",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "3",
                "maxAgeToStart": "16 years - 4 months"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "11 years - 4 days",
                            "minAge": "11 years",
                            "earliestRecAge": "11 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "tradeName": "RECOMBIVAX ADULT",
                            "mvx": "MSD",
                            "volume": "1",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "maxAge": "16 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "4 months - 4 days",
                            "minInt": "4 months",
                            "earliestRecInt": "4 months",
                            "latestRecInt": "7 months + 4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "tradeName": "RECOMBIVAX ADULT",
                            "mvx": "MSD",
                            "volume": "1",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "HepB-CpG 2-dose series",
            "targetDisease": "HepB",
            "vaccineGroup": "HepB",
            "seriesType": "Standard",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "4",
                "minAgeToStart": "18 years",
                "maxAgeToStart": "19 years"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "18 years - 4 days",
                            "minAge": "18 years",
                            "earliestRecAge": "18 years",
                            "maxAge": "19 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "0 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
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
                    "allowableInterval": {
                        "fromPrevious": "N",
                        "fromTargetDose": "1",
                        "absMinInt": "4 weeks - 4 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "HepB-CpG 4-dose Mixed Use Series",
            "targetDisease": "HepB",
            "vaccineGroup": "HepB",
            "seriesType": "Standard",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "5",
                "maxAgeToStart": "19 years"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "0 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "6 weeks",
                            "endAge": "7 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
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
                            "earliestRecAge": "18 years",
                            "maxAge": "19 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "0 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
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
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "20 years",
                            "volume": "1",
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
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
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
                            "fromPrevious": "N",
                            "fromTargetDose": "2",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks"
                        },
                        {
                            "fromPrevious": "N",
                            "fromTargetDose": "1",
                            "absMinInt": "16 weeks - 4 days",
                            "minInt": "16 weeks"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "N",
                        "fromTargetDose": "2",
                        "absMinInt": "4 weeks - 4 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Dose can be skipped once two doses of Heplisav-B are administered.",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count by Age",
                                            "beginAge": "18 years - 4 days",
                                            "doseCount": "1",
                                            "doseType": "Total",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "189"
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
            "seriesName": "CpG-HepB 4-dose Mixed Use Series",
            "targetDisease": "HepB",
            "vaccineGroup": "HepB",
            "seriesType": "Standard",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "6",
                "maxAgeToStart": "19 years"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "18 years - 4 days",
                            "minAge": "18 years",
                            "earliestRecAge": "18 years",
                            "maxAge": "19 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "0 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
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
                            "minInt": "4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "6 weeks",
                            "endAge": "7 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
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
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "20 years",
                            "volume": "1",
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
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
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
                            "absMinInt": "0 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "4 weeks",
                            "latestRecInt": "8 weeks"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "N",
                        "fromTargetDose": "1",
                        "absMinInt": "4 weeks - 4 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Dose can be skipped once two doses of Heplisav-B are administered.",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count by Age",
                                            "beginAge": "18 years - 4 days",
                                            "doseCount": "1",
                                            "doseType": "Total",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "189"
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
            "seriesName": "HepB risk 3-dose series",
            "targetDisease": "HepB",
            "vaccineGroup": "HepB",
            "seriesType": "Risk",
            "equivalentSeriesGroups": "1",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "B",
                "seriesPreference": "1",
                "minAgeToStart": "19 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Patient seeks protection",
                        "code": "001"
                    },
                    "description": "Administer to persons seeking protection.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Diabetes",
                        "code": "014"
                    },
                    "description": "Administer to persons who have diabetes.",
                    "beginAge": "19 years",
                    "endAge": "60 years",
                    "guidance": "For patients 60 years and under, vaccinate as soon as feasible after diagnosis, patients over the age of 60 years may be vaccinated"
                },
                {
                    "observationCode": {
                        "text": "Chronic liver disease",
                        "code": "015"
                    },
                    "description": "Administer to persons who have chronic liver disease.",
                    "beginAge": "19 years",
                    "guidance": "Includes, but is not limited to persons with hepatitis C virus (HCV) infection, cirrhosis, fatty liver disease, alcoholic liver disease, autoimmune hepatitis, or an alanine aminotransferase (ALT) or aspartate aminotransferase (AST) level persistently greater than twice the upper limit of normal"
                },
                {
                    "observationCode": {
                        "text": "Men who have sex with men",
                        "code": "036"
                    },
                    "description": "Administer to men who have sex with men.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Not in a long-term, mutually monogamous relationship",
                        "code": "037"
                    },
                    "description": "Administer to persons not in a long-term, mutually monogamous relationship.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Sex partner of Hepatitis B surface antigen-positive persons",
                        "code": "038"
                    },
                    "description": "Administer to persons who are a sex partner of a Hepatitis B surface antigen-positive person.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Receives treatment for STD",
                        "code": "039"
                    },
                    "description": "Administer to persons who receive treatment for STD.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Illicit injection drug use",
                        "code": "041"
                    },
                    "description": "Administer to persons who use illicit injection drugs.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Health care personnel",
                        "code": "055"
                    },
                    "description": "Administer to healthcare personnel.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Public safety worker exposed to blood or infection body fluids",
                        "code": "057"
                    },
                    "description": "Administer to public safety workers exposed to blood or infection body fluids",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Staff of institution for persons with developmental disabilities",
                        "code": "058"
                    },
                    "description": "Administer to staff of institution for persons with developmental disabilities",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Client of institution for persons with developmental disabilities",
                        "code": "065"
                    },
                    "description": "Administer to persons who are a client of institution for persons with developmental disabilities.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "In correctional facility",
                        "code": "069"
                    },
                    "description": "Administer to persons who are in a correctional facility.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Household contact with hepatitis B surface antigen-positive persons",
                        "code": "071"
                    },
                    "description": "Administer to persons who have household contact with hepatitis B surface antigen-positive persons.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Travel to countries with high or intermediate prevalence of chronic HBV infection",
                        "code": "166"
                    },
                    "description": "Administered to persons who travel to countries with high or intermediate prevalence of chronic HBV infection.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Patient seeks Hepatitis B protection",
                        "code": "176"
                    },
                    "description": "Administer to persons seeking protection from Hepatitis B.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "HIV Infection",
                        "code": "186"
                    },
                    "description": "Administer to persons with HIV Infection",
                    "beginAge": "19 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "19 years",
                            "earliestRecAge": "19 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
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
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
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
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "4 months",
                            "latestRecInt": "7 months + 4 weeks"
                        },
                        {
                            "fromPrevious": "N",
                            "fromTargetDose": "1",
                            "absMinInt": "16 weeks - 4 days",
                            "minInt": "16 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, adjuvanted",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "HepB-CpG risk 2-dose series",
            "targetDisease": "HepB",
            "vaccineGroup": "HepB",
            "seriesType": "Risk",
            "equivalentSeriesGroups": "1",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "B",
                "seriesPreference": "2",
                "minAgeToStart": "19 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Patient seeks protection",
                        "code": "001"
                    },
                    "description": "Administer to persons seeking protection.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Diabetes",
                        "code": "014"
                    },
                    "description": "Administer to persons who have diabetes.",
                    "beginAge": "19 years",
                    "endAge": "60 years",
                    "guidance": "For patients 60 years and under, vaccinate as soon as feasible after diagnosis, patients over the age of 60 years may be vaccinated"
                },
                {
                    "observationCode": {
                        "text": "Chronic liver disease",
                        "code": "015"
                    },
                    "description": "Administer to persons who have chronic liver disease.",
                    "beginAge": "19 years",
                    "guidance": "Includes, but is not limited to persons with hepatitis C virus (HCV) infection, cirrhosis, fatty liver disease, alcoholic liver disease, autoimmune hepatitis, or an alanine aminotransferase (ALT) or aspartate aminotransferase (AST) level persistently greater than twice the upper limit of normal"
                },
                {
                    "observationCode": {
                        "text": "Men who have sex with men",
                        "code": "036"
                    },
                    "description": "Administer to men who have sex with men.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Not in a long-term, mutually monogamous relationship",
                        "code": "037"
                    },
                    "description": "Administer to persons not in a long-term, mutually monogamous relationship.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Sex partner of Hepatitis B surface antigen-positive persons",
                        "code": "038"
                    },
                    "description": "Administer to persons who are a sex partner of a Hepatitis B surface antigen-positive person.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Receives treatment for STD",
                        "code": "039"
                    },
                    "description": "Administer to persons who receive treatment for STD.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Illicit injection drug use",
                        "code": "041"
                    },
                    "description": "Administer to persons who use illicit injection drugs.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Health care personnel",
                        "code": "055"
                    },
                    "description": "Administer to healthcare personnel.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Public safety worker exposed to blood or infection body fluids",
                        "code": "057"
                    },
                    "description": "Administer to public safety workers exposed to blood or infection body fluids",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Staff of institution for persons with developmental disabilities",
                        "code": "058"
                    },
                    "description": "Administer to staff of institution for persons with developmental disabilities",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Client of institution for persons with developmental disabilities",
                        "code": "065"
                    },
                    "description": "Administer to persons who are a client of institution for persons with developmental disabilities.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "In correctional facility",
                        "code": "069"
                    },
                    "description": "Administer to persons who are in a correctional facility.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Household contact with hepatitis B surface antigen-positive persons",
                        "code": "071"
                    },
                    "description": "Administer to persons who have household contact with hepatitis B surface antigen-positive persons.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Travel to countries with high or intermediate prevalence of chronic HBV infection",
                        "code": "166"
                    },
                    "description": "Administered to persons who travel to countries with high or intermediate prevalence of chronic HBV infection.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Patient seeks Hepatitis B  protection",
                        "code": "176"
                    },
                    "description": "Administer to persons seeking protection from Hepatitis B.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "HIV Infection",
                        "code": "186"
                    },
                    "description": "Administer to persons with HIV Infection",
                    "beginAge": "19 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "18 years - 4 days",
                            "minAge": "19 years",
                            "earliestRecAge": "19 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
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
                    "allowableInterval": {
                        "fromPrevious": "N",
                        "fromTargetDose": "1",
                        "absMinInt": "4 weeks - 4 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Risk HepB-CpG 4-dose Mixed Use Series",
            "targetDisease": "HepB",
            "vaccineGroup": "HepB",
            "seriesType": "Risk",
            "equivalentSeriesGroups": "1",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "B",
                "seriesPreference": "3",
                "minAgeToStart": "19 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Patient seeks protection",
                        "code": "001"
                    },
                    "description": "Administer to persons seeking protection.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Diabetes",
                        "code": "014"
                    },
                    "description": "Administer to persons who have diabetes.",
                    "beginAge": "19 years",
                    "endAge": "60 years",
                    "guidance": "For patients 60 years and under, vaccinate as soon as feasible after diagnosis, patients over the age of 60 years may be vaccinated"
                },
                {
                    "observationCode": {
                        "text": "Chronic liver disease",
                        "code": "015"
                    },
                    "description": "Administer to persons who have chronic liver disease.",
                    "beginAge": "19 years",
                    "guidance": "Includes, but is not limited to persons with hepatitis C virus (HCV) infection, cirrhosis, fatty liver disease, alcoholic liver disease, autoimmune hepatitis, or an alanine aminotransferase (ALT) or aspartate aminotransferase (AST) level persistently greater than twice the upper limit of normal"
                },
                {
                    "observationCode": {
                        "text": "Men who have sex with men",
                        "code": "036"
                    },
                    "description": "Administer to men who have sex with men.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Not in a long-term, mutually monogamous relationship",
                        "code": "037"
                    },
                    "description": "Administer to persons not in a long-term, mutually monogamous relationship.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Sex partner of Hepatitis B surface antigen-positive persons",
                        "code": "038"
                    },
                    "description": "Administer to persons who are a sex partner of a Hepatitis B surface antigen-positive person.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Receives treatment for STD",
                        "code": "039"
                    },
                    "description": "Administer to persons who receive treatment for STD.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Illicit injection drug use",
                        "code": "041"
                    },
                    "description": "Administer to persons who use illicit injection drugs.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Health care personnel",
                        "code": "055"
                    },
                    "description": "Administer to healthcare personnel.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Public safety worker exposed to blood or infection body fluids",
                        "code": "057"
                    },
                    "description": "Administer to public safety workers exposed to blood or infection body fluids",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Staff of institution for persons with developmental disabilities",
                        "code": "058"
                    },
                    "description": "Administer to staff of institution for persons with developmental disabilities",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Client of institution for persons with developmental disabilities",
                        "code": "065"
                    },
                    "description": "Administer to persons who are a client of institution for persons with developmental disabilities.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "In correctional facility",
                        "code": "069"
                    },
                    "description": "Administer to persons who are in a correctional facility.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Household contact with hepatitis B surface antigen-positive persons",
                        "code": "071"
                    },
                    "description": "Administer to persons who have household contact with hepatitis B surface antigen-positive persons.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Travel to countries with high or intermediate prevalence of chronic HBV infection",
                        "code": "166"
                    },
                    "description": "Administered to persons who travel to countries with high or intermediate prevalence of chronic HBV infection.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Patient seeks Hepatitis B  protection",
                        "code": "176"
                    },
                    "description": "Administer to persons seeking protection from Hepatitis B.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "HIV Infection",
                        "code": "186"
                    },
                    "description": "Administer to persons with HIV Infection",
                    "beginAge": "19 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "19 years",
                            "earliestRecAge": "19 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "6 weeks",
                            "endAge": "7 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "18 years - 4 days",
                            "minAge": "19 years",
                            "earliestRecAge": "19 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "0 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
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
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "20 years",
                            "volume": "1",
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
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
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
                            "fromPrevious": "N",
                            "fromTargetDose": "2",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks"
                        },
                        {
                            "fromPrevious": "N",
                            "fromTargetDose": "1",
                            "absMinInt": "16 weeks - 4 days",
                            "minInt": "16 weeks"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "N",
                        "fromTargetDose": "2",
                        "absMinInt": "4 weeks - 4 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Dose can be skipped once two doses of Heplisav-B are administered.",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count by Age",
                                            "beginAge": "18 years - 4 days",
                                            "doseCount": "1",
                                            "doseType": "Total",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "189"
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
            "seriesName": "Risk CpG-HepB 4-dose Mixed Use Series",
            "targetDisease": "HepB",
            "vaccineGroup": "HepB",
            "seriesType": "Risk",
            "equivalentSeriesGroups": "1",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "B",
                "seriesPreference": "3",
                "minAgeToStart": "19 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Patient seeks protection",
                        "code": "001"
                    },
                    "description": "Administer to persons seeking protection.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Diabetes",
                        "code": "014"
                    },
                    "description": "Administer to persons who have diabetes.",
                    "beginAge": "19 years",
                    "endAge": "60 years",
                    "guidance": "For patients 60 years and under, vaccinate as soon as feasible after diagnosis, patients over the age of 60 years may be vaccinated"
                },
                {
                    "observationCode": {
                        "text": "Chronic liver disease",
                        "code": "015"
                    },
                    "description": "Administer to persons who have chronic liver disease.",
                    "beginAge": "19 years",
                    "guidance": "Includes, but is not limited to persons with hepatitis C virus (HCV) infection, cirrhosis, fatty liver disease, alcoholic liver disease, autoimmune hepatitis, or an alanine aminotransferase (ALT) or aspartate aminotransferase (AST) level persistently greater than twice the upper limit of normal"
                },
                {
                    "observationCode": {
                        "text": "Men who have sex with men",
                        "code": "036"
                    },
                    "description": "Administer to men who have sex with men.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Not in a long-term, mutually monogamous relationship",
                        "code": "037"
                    },
                    "description": "Administer to persons not in a long-term, mutually monogamous relationship.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Sex partner of Hepatitis B surface antigen-positive persons",
                        "code": "038"
                    },
                    "description": "Administer to persons who are a sex partner of a Hepatitis B surface antigen-positive person.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Receives treatment for STD",
                        "code": "039"
                    },
                    "description": "Administer to persons who receive treatment for STD.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Illicit injection drug use",
                        "code": "041"
                    },
                    "description": "Administer to persons who use illicit injection drugs.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Health care personnel",
                        "code": "055"
                    },
                    "description": "Administer to healthcare personnel.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Public safety worker exposed to blood or infection body fluids",
                        "code": "057"
                    },
                    "description": "Administer to public safety workers exposed to blood or infection body fluids",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Staff of institution for persons with developmental disabilities",
                        "code": "058"
                    },
                    "description": "Administer to staff of institution for persons with developmental disabilities",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Client of institution for persons with developmental disabilities",
                        "code": "065"
                    },
                    "description": "Administer to persons who are a client of institution for persons with developmental disabilities.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "In correctional facility",
                        "code": "069"
                    },
                    "description": "Administer to persons who are in a correctional facility.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Household contact with hepatitis B surface antigen-positive persons",
                        "code": "071"
                    },
                    "description": "Administer to persons who have household contact with hepatitis B surface antigen-positive persons.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Travel to countries with high or intermediate prevalence of chronic HBV infection",
                        "code": "166"
                    },
                    "description": "Administered to persons who travel to countries with high or intermediate prevalence of chronic HBV infection.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Patient seeks Hepatitis B  protection",
                        "code": "176"
                    },
                    "description": "Administer to persons seeking protection from Hepatitis B.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "HIV Infection",
                        "code": "186"
                    },
                    "description": "Administer to persons with HIV Infection",
                    "beginAge": "19 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "18 years - 4 days",
                            "minAge": "19 years",
                            "earliestRecAge": "19 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "0 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
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
                            "minInt": "4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "6 weeks",
                            "endAge": "7 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
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
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "20 years",
                            "volume": "1",
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
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adol/peds",
                            "cvx": "08",
                            "beginAge": "0 days",
                            "endAge": "20 years"
                        },
                        {
                            "vaccineType": "Hep B, Adol/high risk infant",
                            "cvx": "42",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hep B, Unspecified Formulation",
                            "cvx": "45",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Hib-HepB",
                            "cvx": "51",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTP-Hib-HepB",
                            "cvx": "102",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-HepB-IPV",
                            "cvx": "110",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB, historical",
                            "cvx": "132",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "DTaP-IPV-Hib-HepB",
                            "cvx": "146",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "DTP-hepB-Hib Pentavalent Non-US",
                            "cvx": "198",
                            "beginAge": "0 days"
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
                            "absMinInt": "0 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "4 weeks",
                            "latestRecInt": "8 weeks"
                        }
                    ],
                    "allowableInterval": {
                        "fromPrevious": "N",
                        "fromTargetDose": "1",
                        "absMinInt": "4 weeks - 4 days"
                    },
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "HepB-CpG",
                            "cvx": "189",
                            "beginAge": "18 years - 4 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Dose can be skipped once two doses of Heplisav-B are administered.",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count by Age",
                                            "beginAge": "18 years - 4 days",
                                            "doseCount": "1",
                                            "doseType": "Total",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "189"
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
            "seriesName": "HepB risk Twinrix 3 Dose Series",
            "targetDisease": "HepB",
            "vaccineGroup": "HepB",
            "seriesType": "Risk",
            "equivalentSeriesGroups": "1",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "B",
                "seriesPreference": "2",
                "minAgeToStart": "19 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Patient seeks protection",
                        "code": "001"
                    },
                    "description": "Administer to persons seeking protection.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Diabetes",
                        "code": "014"
                    },
                    "description": "Administer to persons  who have diabetes.",
                    "beginAge": "19 years",
                    "endAge": "60 years",
                    "guidance": "For patients 60 years and under, vaccinate as soon as feasible after diagnosis, patients over the age of 60 years may be vaccinated"
                },
                {
                    "observationCode": {
                        "text": "Chronic liver disease",
                        "code": "015"
                    },
                    "description": "Administer to persons who have chronic liver disease.",
                    "beginAge": "19 years",
                    "guidance": "Includes, but is not limited to persons with hepatitis C virus (HCV) infection, cirrhosis, fatty liver disease, alcoholic liver disease, autoimmune hepatitis, or an alanine aminotransferase (ALT) or aspartate aminotransferase (AST) level persistently greater than twice the upper limit of normal"
                },
                {
                    "observationCode": {
                        "text": "Men who have sex with men",
                        "code": "036"
                    },
                    "description": "Administer to men who have sex with men.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Not in a long-term, mutually monogamous relationship",
                        "code": "037"
                    },
                    "description": "Administer to persons not in a long-term, mutually monogamous relationship.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Sex partner of Hepatitis B surface antigen-positive persons",
                        "code": "038"
                    },
                    "description": "Administer to persons who are a sex partner of a Hepatitis B surface antigen-positive person.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Receives treatment for STD",
                        "code": "039"
                    },
                    "description": "Administer to persons who receive treatment for STD.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Illicit injection drug use",
                        "code": "041"
                    },
                    "description": "Administer to persons who use illicit injection drugs.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Health care personnel",
                        "code": "055"
                    },
                    "description": "Administer to  healthcare personnel.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Public safety worker exposed to blood or infection body fluids",
                        "code": "057"
                    },
                    "description": "Administer to public safety workers exposed to blood or infection body fluids",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Staff of institution for persons with developmental disabilities",
                        "code": "058"
                    },
                    "description": "Administer to staff of institution for persons with developmental disabilities",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Client of institution for persons with developmental disabilities",
                        "code": "065"
                    },
                    "description": "Administer to persons who are a client of institution for persons with developmental disabilities.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "In correctional facility",
                        "code": "069"
                    },
                    "description": "Administer to persons who are in a correctional facility.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Household contact with hepatitis B surface antigen-positive persons",
                        "code": "071"
                    },
                    "description": "Administer to persons who have household contact with hepatitis B surface antigen-positive persons.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Travel to countries with high or intermediate prevalence of chronic HBV infection",
                        "code": "166"
                    },
                    "description": "Administered to persons who travel to countries with high or intermediate prevalence of chronic HBV infection.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Patient seeks Hepatitis B  protection",
                        "code": "176"
                    },
                    "description": "Administer to persons seeking protection from Hepatitis B.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "HIV Infection",
                        "code": "186"
                    },
                    "description": "Administer to persons with HIV Infection",
                    "beginAge": "19 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "19 years - 4 days",
                            "minAge": "19 years",
                            "earliestRecAge": "19 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "18 years",
                            "volume": "1",
                            "forecastVaccineType": "Y"
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
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "18 years",
                            "volume": "1",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "18 years - 4 days"
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
                            "absMinInt": "5 months - 4 days",
                            "minInt": "5 months",
                            "earliestRecInt": "5 months"
                        },
                        {
                            "fromPrevious": "N",
                            "fromTargetDose": "1",
                            "absMinInt": "6 months",
                            "minInt": "6 months",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "18 years",
                            "volume": "1",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "18 years - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "HepB risk Twinrix 4-dose series",
            "targetDisease": "HepB",
            "vaccineGroup": "HepB",
            "seriesType": "Risk",
            "equivalentSeriesGroups": "1",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "B",
                "seriesPreference": "3",
                "minAgeToStart": "19 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Patient seeks protection",
                        "code": "001"
                    },
                    "description": "Administer to persons seeking protection.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Diabetes",
                        "code": "014"
                    },
                    "description": "Administer to persons  who have diabetes.",
                    "beginAge": "19 years",
                    "endAge": "60 years",
                    "guidance": "For patients 60 years and under, vaccinate as soon as feasible after diagnosis, patients over the age of 60 years may be vaccinated"
                },
                {
                    "observationCode": {
                        "text": "Chronic liver disease",
                        "code": "015"
                    },
                    "description": "Administer to persons who have chronic liver disease.",
                    "beginAge": "19 years",
                    "guidance": "Includes, but is not limited to persons with hepatitis C virus (HCV) infection, cirrhosis, fatty liver disease, alcoholic liver disease, autoimmune hepatitis, or an alanine aminotransferase (ALT) or aspartate aminotransferase (AST) level persistently greater than twice the upper limit of normal"
                },
                {
                    "observationCode": {
                        "text": "Men who have sex with men",
                        "code": "036"
                    },
                    "description": "Administer to men who have sex with men.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Not in a long-term, mutually monogamous relationship",
                        "code": "037"
                    },
                    "description": "Administer to persons not in a long-term, mutually monogamous relationship.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Sex partner of Hepatitis B surface antigen-positive persons",
                        "code": "038"
                    },
                    "description": "Administer to persons who are a sex partner of a Hepatitis B surface antigen-positive person.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Receives treatment for STD",
                        "code": "039"
                    },
                    "description": "Administer to persons who receive treatment for STD.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Illicit injection drug use",
                        "code": "041"
                    },
                    "description": "Administer to persons who use illicit injection drugs.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Health care personnel",
                        "code": "055"
                    },
                    "description": "Administer to  healthcare personnel.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Public safety worker exposed to blood or infection body fluids",
                        "code": "057"
                    },
                    "description": "Administer to public safety workers exposed to blood or infection body fluids",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Staff of institution for persons with developmental disabilities",
                        "code": "058"
                    },
                    "description": "Administer to staff of institution for persons with developmental disabilities",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Client of institution for persons with developmental disabilities",
                        "code": "065"
                    },
                    "description": "Administer to persons who are a client of institution for persons with developmental disabilities.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "In correctional facility",
                        "code": "069"
                    },
                    "description": "Administer to persons who are in a correctional facility.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Household contact with hepatitis B surface antigen-positive persons",
                        "code": "071"
                    },
                    "description": "Administer to persons who have household contact with hepatitis B surface antigen-positive persons.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Travel to countries with high or intermediate prevalence of chronic HBV infection",
                        "code": "166"
                    },
                    "description": "Administered to persons who travel to countries with high or intermediate prevalence of chronic HBV infection.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "Patient seeks Hepatitis B  protection",
                        "code": "176"
                    },
                    "description": "Administer to persons seeking protection from Hepatitis B.",
                    "beginAge": "19 years"
                },
                {
                    "observationCode": {
                        "text": "HIV Infection",
                        "code": "186"
                    },
                    "description": "Administer to persons with HIV Infection",
                    "beginAge": "19 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "19 years - 4 days",
                            "minAge": "19 years",
                            "earliestRecAge": "19 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "18 years",
                            "volume": "1",
                            "forecastVaccineType": "Y"
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
                            "absMinInt": "7 days",
                            "minInt": "7 days",
                            "earliestRecInt": "7 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "18 years",
                            "volume": "1",
                            "forecastVaccineType": "Y"
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
                            "absMinInt": "14 days",
                            "minInt": "14 days",
                            "earliestRecInt": "14 days",
                            "latestRecInt": "23 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "18 years",
                            "volume": "1",
                            "forecastVaccineType": "Y"
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
                            "fromPrevious": "N",
                            "fromTargetDose": "1",
                            "absMinInt": "12 months - 4 days",
                            "minInt": "12 months",
                            "earliestRecInt": "12 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "HepA-HepB",
                            "cvx": "104",
                            "beginAge": "18 years",
                            "volume": "1",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "HepB risk Recombivax 3-dose series",
            "targetDisease": "HepB",
            "vaccineGroup": "HepB",
            "seriesType": "Risk",
            "equivalentSeriesGroups": "1",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "minAgeToStart": "19 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Dialysis patient",
                        "code": "032"
                    },
                    "description": "Administer to hemodialysis patients and predialysis, peritoneal dialysis, and home dialysis patients",
                    "beginAge": "19 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "19 years - 4 days",
                            "minAge": "19 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "19 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "19 years - 4 days"
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
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
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
                            "absMinInt": "5 months - 4 days",
                            "minInt": "5 months",
                            "earliestRecInt": "5 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "20 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Dialysis",
                            "cvx": "44",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "HepB risk Engerix-B 4-dose series",
            "targetDisease": "HepB",
            "vaccineGroup": "HepB",
            "seriesType": "Risk",
            "equivalentSeriesGroups": "1",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "minAgeToStart": "19 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Dialysis patient",
                        "code": "032"
                    },
                    "description": "Administer to hemodialysis patients and predialysis, peritoneal dialysis, and home dialysis patients",
                    "beginAge": "19 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "19 years- 4 days",
                            "minAge": "19 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "19 years - 4 days",
                            "tradeName": "ENGERIX-B ADULT",
                            "mvx": "SKB",
                            "volume": "2",
                            "forecastVaccineType": "Y"
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
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "19 years",
                            "tradeName": "ENGERIX-B ADULT",
                            "mvx": "SKB",
                            "volume": "2",
                            "forecastVaccineType": "Y"
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
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "19 years",
                            "tradeName": "ENGERIX-B ADULT",
                            "mvx": "SKB",
                            "volume": "2",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "0 days"
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
                            "absMinInt": "4 months - 4 days",
                            "minInt": "4 months",
                            "earliestRecInt": "4 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Hep B, Adult",
                            "cvx": "43",
                            "beginAge": "19 years",
                            "tradeName": "ENGERIX-B ADULT",
                            "mvx": "SKB",
                            "volume": "2",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        }
    ]
});