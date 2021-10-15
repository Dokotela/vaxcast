import 'package:vaxcast/vaxcast.dart';

final rabies = AntigenSupportingData.fromJson({
    "targetDisease": "Rabies",
    "vaccineGroup": "Rabies",
    "contraindications": {
        "vaccineGroup": {
            "contraindication": [
                {
                    "observationTitle": "Adverse reaction to vaccine component",
                    "contraindicationText": "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
                },
                {
                    "observationTitle": "Severe allergic reaction after previous dose of Rabies",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Rabies vaccine."
                }
            ]
        }
    },
    "series": [
        {
            "seriesName": "Rabies risk 3-dose continuous series",
            "targetDisease": "Rabies",
            "vaccineGroup": "Rabies",
            "seriesAdminGuidance": [
                "The 6 month booster should only be given after a serum sample has been tested for rabies virus neutralizing antibody. The booster should be administered if the serum titer fails to maintain a value of at least complete neutralization of a 1:5 serum dilution by rapid fluorescent focus inhibition test."
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "1",
                "minAgeToStart": "0 days"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Rabies researchers"
                    },
                    "description": "Administer to Rabies researchers.",
                    "beginAge": "0 days"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "0 days",
                            "earliestRecAge": "0 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rabies, intramuscular injection",
                            "cvx": "18",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies, unspecified formulation",
                            "cvx": "90",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
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
                            "absMinInt": "7 days",
                            "minInt": "7 days",
                            "earliestRecInt": "7 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rabies, intramuscular injection",
                            "cvx": "18",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies, unspecified formulation",
                            "cvx": "90",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
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
                            "absMinInt": "14 days",
                            "minInt": "14 days",
                            "earliestRecInt": "14 days",
                            "latestRecInt": "21 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rabies, intramuscular injection",
                            "cvx": "18",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies, unspecified formulation",
                            "cvx": "90",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
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
                            "absMinInt": "6 months",
                            "minInt": "6 months",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rabies, intramuscular injection",
                            "cvx": "18",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies, unspecified formulation",
                            "cvx": "90",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "Yes"
                }
            ]
        },
        {
            "seriesName": "Rabies risk 3-dose frequent series",
            "targetDisease": "Rabies",
            "vaccineGroup": "Rabies",
            "seriesAdminGuidance": [
                "The 2 year booster should only be given after a serum sample has been tested for rabies virus neutralizing antibody. The booster should be administered if the serum titer fails to maintain a value of at least complete neutralization of a 1:5 serum dilution by rapid fluorescent focus inhibition test."
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "1",
                "seriesPriority": "B",
                "seriesPreference": "1",
                "minAgeToStart": "0 days"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Veterinarians and their staff"
                    },
                    "description": "Administer to veterinarians and their staff.",
                    "beginAge": "0 days"
                },
                {
                    "observationCode": {
                        "text": "Animal handlers"
                    },
                    "description": "Administer to animal handlers.",
                    "beginAge": "0 days"
                },
                {
                    "observationCode": {
                        "text": "Persons whose activities bring them into frequent contact with rabies virus or potentially rabid animals"
                    },
                    "description": "Administer to persons whose activities bring them into frequent contact with rabies virus or potentially rabid animals.",
                    "beginAge": "0 days"
                },
                {
                    "observationCode": {
                        "text": "International travel with possible contact with animals in areas where rabies is enzootic and immediate access to appropriate medical care might be limited"
                    },
                    "description": "Administer to persons with plans for international travel with possible contact with animals in areas where rabies is enzootic and immediate access to appropriate medical care might be limited.",
                    "beginAge": "0 days"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "0 days",
                            "earliestRecAge": "0 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rabies, intramuscular injection",
                            "cvx": "18",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies, unspecified formulation",
                            "cvx": "90",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
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
                            "absMinInt": "7 days",
                            "minInt": "7 days",
                            "earliestRecInt": "7 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rabies, intramuscular injection",
                            "cvx": "18",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies, unspecified formulation",
                            "cvx": "90",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
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
                            "absMinInt": "14 days",
                            "minInt": "14 days",
                            "earliestRecInt": "14 days",
                            "latestRecInt": "21 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rabies, intramuscular injection",
                            "cvx": "18",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies, unspecified formulation",
                            "cvx": "90",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
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
                            "absMinInt": "2 years",
                            "minInt": "2 years",
                            "earliestRecInt": "2 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
                            "beginAge": "0 days",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Rabies, intramuscular injection",
                            "cvx": "18",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies, unspecified formulation",
                            "cvx": "90",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM Diploid cell culture",
                            "cvx": "175",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Rabies - IM fibroblast culture",
                            "cvx": "176",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "Yes"
                }
            ]
        }
    ]
});