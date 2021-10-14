import 'package:vax_cast/vax_cast.dart';

final cholera = AntigenSupportingData.fromJson({
    "targetDisease": "Cholera",
    "vaccineGroup": "Cholera",
    "contraindications": {
        "vaccineGroup": {
            "contraindication": [
                {
                    "observationTitle": "Adverse reaction to vaccine component",
                    "contraindicationText": "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
                },
                {
                    "observationTitle": "Severe allergic reaction after previous dose of cholera",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of cholera vaccine."
                }
            ]
        }
    },
    "series": [
        {
            "seriesName": "Cholera 1-dose series",
            "targetDisease": "Cholera",
            "vaccineGroup": "Cholera",
            "seriesAdminGuidance": [
                "The Vaxchora package insert states that CVD 103-HgR should not be given to patients who have received oral or parenteral antibiotics in the preceding 14 days, because antibiotics might have activity against the vaccine strain.",
                "Non-U.S. vaccines (WC-rBS and BivWC) would count as valid only if there is documentation that a complete series with the appropriate dosing has been given.",
                "No data exist on use of the currently available lyophilized CVD 103-HgR formulation in immunocompromised populations."
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
                        "text": "Travel to an area of active cholera transmission"
                    },
                    "description": "Administer to adult travelers (aged 18-64 years) from the United States traveling to an area of active cholera transmission.",
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
                            "vaccineType": "cholera, live attenuated",
                            "cvx": "174",
                            "beginAge": "18 years",
                            "endAge": "65 years",
                            "volume": "100",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "cholera, live attenuated",
                            "cvx": "174",
                            "beginAge": "18 years - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        }
    ]
});