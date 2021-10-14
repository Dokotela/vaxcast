import 'package:vax_cast/vax_cast.dart';

final rotavirus = AntigenSupportingData.fromJson({
    "targetDisease": "Rotavirus",
    "vaccineGroup": "Rotavirus",
    "contraindications": {
        "vaccineGroup": {
            "contraindication": [
                {
                    "observationTitle": "Severe Combined Immunodeficiency [SCID]",
                    "contraindicationText": "Do not vaccinate if the patient has Severe Combined Immunodeficiency [SCID]."
                },
                {
                    "observationTitle": "Intussusception",
                    "contraindicationText": "Do not vaccinate if the patient has intussusception."
                },
                {
                    "observationTitle": "Adverse reaction to vaccine component",
                    "contraindicationText": "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
                },
                {
                    "observationTitle": "Severe allergic reaction after previous dose of Rotavirus",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Rotavirus vaccine."
                }
            ]
        },
        "vaccine": {
            "contraindication": [
                {
                    "observationTitle": "Allergic reaction to latex",
                    "contraindicationText": "Do not vaccinate with Rotarix if the patient has an allergy to latex.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119"
                        }
                    ]
                }
            ]
        }
    },
    "series": [
        {
            "seriesName": "Rotavirus 3-dose series",
            "targetDisease": "Rotavirus",
            "vaccineGroup": "Rotavirus",
            "seriesAdminGuidance": [
                "For children with known or suspected altered immunocompetence, ACIP advises consultation with an immunologist or infectious diseases specialist before administration of rotavirus vaccine.  Children who are immunocompromised because of congenital immunodeficiency, or hematopoietic stem cell or solid organ transplantation sometimes experience severe, prolonged, and even fatal wild-type rotavirus gastroenteritis."
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
                            "maxAge": "15 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Rotavirus, pentavalent",
                            "cvx": "116",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "2",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rotavirus, tetravalent",
                            "cvx": "74",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, pentavalent",
                            "cvx": "116",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, unspecified formulation",
                            "cvx": "122",
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
                            "maxAge": "8 months + 1 day"
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
                            "vaccineType": "Rotavirus, pentavalent",
                            "cvx": "116",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "2",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rotavirus, tetravalent",
                            "cvx": "74",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, pentavalent",
                            "cvx": "116",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, unspecified formulation",
                            "cvx": "122",
                            "beginAge": "6 weeks - 4 days"
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
                            "maxAge": "8 months + 1 day"
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
                            "vaccineType": "Rotavirus, pentavalent",
                            "cvx": "116",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "2",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rotavirus, tetravalent",
                            "cvx": "74",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, pentavalent",
                            "cvx": "116",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, unspecified formulation",
                            "cvx": "122",
                            "beginAge": "6 weeks - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Rotavirus late start at 15 weeks 3-dose series",
            "targetDisease": "Rotavirus",
            "vaccineGroup": "Rotavirus",
            "seriesAdminGuidance": [
                "For children with known or suspected altered immunocompetence, ACIP advises consultation with an immunologist or infectious diseases specialist before administration of rotavirus vaccine.  Children who are immunocompromised because of congenital immunodeficiency, or hematopoietic stem cell or solid organ transplantation sometimes experience severe, prolonged, and even fatal wild-type rotavirus gastroenteritis.",
                "Vaccination should not be initiated for infants age 15 weeks 0 days or older because there are insufficient data on the safety of dose #1 in older infants. Infants for whom the first dose of rotavirus vaccine was inadvertently administered at age 15 weeks or older should receive the remaining doses of the series at the routinely recommended intervals."
            ],
            "seriesType": "Standard",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "3"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "15 weeks",
                            "minAge": "15 weeks",
                            "maxAge": "8 months + 1 day"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Rotavirus, pentavalent",
                            "cvx": "116",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "2",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rotavirus, tetravalent",
                            "cvx": "74",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, pentavalent",
                            "cvx": "116",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, unspecified formulation",
                            "cvx": "122",
                            "beginAge": "6 weeks - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "earliestRecAge": "4 months",
                            "latestRecAge": "5 months + 4 weeks",
                            "maxAge": "8 months + 1 day"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "4 weeks",
                            "latestRecInt": "13 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Rotavirus, pentavalent",
                            "cvx": "116",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "2",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rotavirus, tetravalent",
                            "cvx": "74",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, pentavalent",
                            "cvx": "116",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, unspecified formulation",
                            "cvx": "122",
                            "beginAge": "6 weeks - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 3",
                    "age": [
                        {
                            "earliestRecAge": "6 months",
                            "latestRecAge": "7 months + 4 weeks",
                            "maxAge": "8 months + 1 day"
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
                            "vaccineType": "Rotavirus, pentavalent",
                            "cvx": "116",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "2",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rotavirus, tetravalent",
                            "cvx": "74",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, pentavalent",
                            "cvx": "116",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks - 4 days"
                        },
                        {
                            "vaccineType": "Rotavirus, unspecified formulation",
                            "cvx": "122",
                            "beginAge": "6 weeks - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Rotavirus 2-dose series",
            "targetDisease": "Rotavirus",
            "vaccineGroup": "Rotavirus",
            "seriesAdminGuidance": [
                "For children with known or suspected altered immunocompetence, ACIP advises consultation with an immunologist or infectious diseases specialist before administration of rotavirus vaccine.  Children who are immunocompromised because of congenital immunodeficiency, or hematopoietic stem cell or solid organ transplantation sometimes experience severe, prolonged, and even fatal wild-type rotavirus gastroenteritis."
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
                    "age": [
                        {
                            "absMinAge": "6 weeks - 4 days",
                            "minAge": "6 weeks",
                            "earliestRecAge": "2 months",
                            "maxAge": "15 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "1",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
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
                            "maxAge": "8 months + 1 day"
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
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "1",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Rotavirus late start at 15 weeks 2-dose series",
            "targetDisease": "Rotavirus",
            "vaccineGroup": "Rotavirus",
            "seriesAdminGuidance": [
                "For children with known or suspected altered immunocompetence, ACIP advises consultation with an immunologist or infectious diseases specialist before administration of rotavirus vaccine.  Children who are immunocompromised because of congenital immunodeficiency, or hematopoietic stem cell or solid organ transplantation sometimes experience severe, prolonged, and even fatal wild-type rotavirus gastroenteritis.",
                "Vaccination should not be initiated for infants age 15 weeks 0 days or older because there are insufficient data on the safety of dose #1 in older infants. Infants for whom the first dose of rotavirus vaccine was inadvertently administered at age 15 weeks or older should receive the remaining doses of the series at the routinely recommended intervals."
            ],
            "seriesType": "Standard",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "4"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "15 weeks",
                            "minAge": "15 weeks",
                            "maxAge": "8 months + 1 day"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "1",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "earliestRecAge": "4 months",
                            "latestRecAge": "5 months + 4 weeks",
                            "maxAge": "8 months + 1 day"
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
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks",
                            "endAge": "8 months + 1 day",
                            "volume": "1",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rotavirus, monovalent",
                            "cvx": "119",
                            "beginAge": "6 weeks - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        }
    ]
});