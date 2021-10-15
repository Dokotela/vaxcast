import 'package:vaxcast/vaxcast.dart';

final ebola = AntigenSupportingData.fromJson({
  "targetDisease": "Ebola",
  "vaccineGroup": "Ebola",
  "contraindications": {
    "vaccineGroup": {
      "contraindication": [
        {
          "observationTitle": "Adverse reaction to vaccine component",
          "contraindicationText":
              "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
        },
        {
          "observationTitle":
              "Severe allergic reaction after previous dose of ebola",
          "contraindicationText":
              "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of ebola vaccine."
        },
        {
          "observationTitle": "Severe allergic reaction to rice protein",
          "contraindicationText":
              "Do not vaccinate if the patient has had a severe allergic reaction to rice protein."
        }
      ]
    }
  },
  "series": [
    {
      "seriesName": "Ebola Risk 1-dose series",
      "targetDisease": "Ebola",
      "vaccineGroup": "Ebola",
      "seriesType": "Risk",
      "selectSeries": {
        "defaultSeries": "No",
        "productPath": "No",
        "seriesGroupName": "Increased Risk",
        "seriesGroup": "1",
        "seriesPriority": "A",
        "seriesPreference": "1",
        "minAgeToStart": "18 years"
      },
      "indication": [
        {
          "observationCode": {"text": "Ebola virus outbreak response"},
          "description":
              "Administer to persons responding to an outbreak of Ebola Virus Disease.",
          "beginAge": "18 years"
        },
        {
          "observationCode": {
            "text":
                "Health care personnel at federally designated Ebola treatement center in U.S."
          },
          "description":
              "Administer to persons working as health care personnel at federally designated Ebola treatement centers in the Unied States",
          "beginAge": "18 years"
        },
        {
          "observationCode": {
            "text":
                "Laboratorians or other staff at biosafety level 4 facilities in U.S."
          },
          "description":
              "Administer to persons working as Laboratorians or other staff at biosafety level 4 facilities in U.S.",
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
              "vaccineType": "Ebola Zaire vaccine, live",
              "cvx": "204",
              "beginAge": "18 years",
              "volume": "1",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Ebola Zaire vaccine, live",
              "cvx": "204",
              "beginAge": "18 years - 4 days"
            }
          ],
          "recurringDose": "No"
        }
      ]
    }
  ]
});
