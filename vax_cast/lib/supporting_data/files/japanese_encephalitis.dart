import 'package:vax_cast/vax_cast.dart';

final japanese_encephalitis = AntigenSupportingData.fromJson({
    "targetDisease": "Japanese Encephalitis",
    "vaccineGroup": "Japanese Encephalitis",
    "contraindications": {
        "vaccineGroup": {
            "contraindication": [
                {
                    "observationTitle": "Adverse reaction to vaccine component",
                    "contraindicationText": "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
                },
                {
                    "observationTitle": "Severe allergic reaction after previous dose of Japanese Encephalitis",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Japanese Encephalitis vaccine."
                },
                {
                    "observationTitle": "Severe allergic reaction to protamine sulfate",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction to protamine sulfate."
                }
            ]
        }
    },
    "series": [
        {
            "seriesName": "Japanese Encephalitis risk 2-dose series",
            "targetDisease": "Japanese Encephalitis",
            "vaccineGroup": "Japanese Encephalitis",
            "seriesAdminGuidance": [
                "For adults and children, a booster dose (i.e., third dose) should be given on or after 1 year after completion of the primary JE-VC series if ongoing exposure or reexposure to JE virus is expected",
                "JE vaccination should be considered for shorter-term (e.g., less than 1 month) travel with an increased risk for JE on the basis of planned travel duration, season, location, activities, and accommodations. See JE recommendation box 2 for more detailed information. (https://www.cdc.gov/mmwr/volumes/68/rr/rr6802a1.htm#B2_down)",
                "JE vaccination should be considered for travel to a JE-endemic area but uncertain of specific duration of travel, destination, or activities.",
                "Endemic Area and transmission season is determined by country.  Refer to the yellow book for a definition of the transmission season: http://wwwnc.cdc.gov/travel/yellowbook/2014/chapter-3-infectious-diseases-related-to-travel/japanese-encephalitis"
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "1",
                "minAgeToStart": "2 months"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Longer-term (e.g., 1 month or more) travel to a JE-endemic area"
                    },
                    "description": "Administer to persons who plan for longer-term (e.g., ≥ 1 month) travel to JE-endemic areas.",
                    "beginAge": "2 months"
                },
                {
                    "observationCode": {
                        "text": "Moving to JE-endemic country to take up residence"
                    },
                    "description": "Administer to persons who plan to move to JE-endemic countries to take up residence.",
                    "beginAge": "2 months"
                },
                {
                    "observationCode": {
                        "text": "Frequent travel to JE-endemic areas"
                    },
                    "description": "Administer to persons who frequently travel to JE-endemic areas.",
                    "beginAge": "2 months"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "2 months - 4 days",
                            "minAge": "2 months",
                            "earliestRecAge": "2 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "2 months",
                            "endAge": "3 years",
                            "volume": "0.25",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "3 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "2 months - 4 days"
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
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "2 months",
                            "endAge": "3 years",
                            "volume": "0.25",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "3 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "2 months - 4 days"
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
                            "absMinInt": "12 months - 4 days",
                            "minInt": "12 months",
                            "earliestRecInt": "12 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "2 months",
                            "endAge": "3 years",
                            "volume": "0.25",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "3 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "2 months - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Japanese Encephalitis risk 2-dose series 18-64 years",
            "targetDisease": "Japanese Encephalitis",
            "vaccineGroup": "Japanese Encephalitis",
            "seriesAdminGuidance": [
                "For adults and children, a booster dose (i.e., third dose) should be given on or after 1 year after completion of the primary JE-VC series if ongoing exposure or reexposure to JE virus is expected",
                "JE vaccination should be considered for shorter-term (e.g., less than 1 month) travel with an increased risk for JE on the basis of planned travel duration, season, location, activities, and accommodations. See JE recommendation box 2 for more detailed information. (https://www.cdc.gov/mmwr/volumes/68/rr/rr6802a1.htm#B2_down)",
                "JE vaccination should be considered for travel to a JE-endemic area but uncertain of specific duration of travel, destination, or activities.",
                "Endemic Area and transmission season is determined by country.  Refer to the yellow book for a definition of the transmission season: http://wwwnc.cdc.gov/travel/yellowbook/2014/chapter-3-infectious-diseases-related-to-travel/japanese-encephalitis"
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "1",
                "minAgeToStart": "18 years",
                "maxAgeToStart": "65 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Longer-term (e.g., 1 month or more) travel to a JE-endemic area"
                    },
                    "description": "Administer to persons who plan for longer-term (e.g., ≥ 1 month) travel to JE-endemic areas.",
                    "beginAge": "18 years",
                    "endAge": "65 years"
                },
                {
                    "observationCode": {
                        "text": "Moving to JE-endemic country to take up residence"
                    },
                    "description": "Administer to persons who plan to move to JE-endemic countries to take up residence.",
                    "beginAge": "18 years",
                    "endAge": "65 years"
                },
                {
                    "observationCode": {
                        "text": "Frequent travel to JE-endemic areas"
                    },
                    "description": "Administer to persons who frequently travel to JE-endemic areas.",
                    "beginAge": "18 years",
                    "endAge": "65 years"
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
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "3 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "2 months - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "maxAge": "65 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "7 days",
                            "minInt": "7 days",
                            "earliestRecInt": "7 days",
                            "latestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "3 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "2 months - 4 days"
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
                            "absMinInt": "12 months - 4 days",
                            "minInt": "12 months",
                            "earliestRecInt": "12 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "2 months",
                            "endAge": "3 years",
                            "volume": "0.25",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "3 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Japanese Encephalitis, VC",
                            "cvx": "134",
                            "beginAge": "2 months - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        }
    ]
});