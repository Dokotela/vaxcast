import 'package:vaxcast/vaxcast.dart';

final zoster = AntigenSupportingData.fromJson({
  "targetDisease": "Zoster",
  "vaccineGroup": "Zoster",
  "contraindications": {
    "vaccineGroup": {
      "contraindication": [
        {
          "observationTitle": "Adverse reaction to vaccine component",
          "contraindicationText":
              "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
        }
      ]
    },
    "vaccine": {
      "contraindication": [
        {
          "observationTitle":
              "Severe allergic reaction after previous dose of recombinant zoster",
          "contraindicationText":
              "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of recombinant zoster vaccine.",
          "contraindicatedVaccine": [
            {"vaccineType": "Zoster recombinant", "cvx": "187"}
          ]
        }
      ]
    }
  },
  "series": [
    {
      "seriesName": "Zoster 2-dose series",
      "targetDisease": "Zoster",
      "vaccineGroup": "Zoster",
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
              "absMinAge": "18 years",
              "minAge": "50 years",
              "earliestRecAge": "50 years"
            }
          ],
          "interval": [
            {
              "fromPrevious": "N",
              "fromMostRecent": "21; 94; 121",
              "absMinInt": "0 days",
              "minInt": "8 weeks",
              "earliestRecInt": "8 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Zoster recombinant",
              "cvx": "187",
              "beginAge": "50 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Zoster recombinant",
              "cvx": "187",
              "beginAge": "18 years"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 2",
          "age": [
            {
              "absMinAge": "50 years - 4 days",
              "minAge": "50 years",
              "earliestRecAge": "50 years"
            }
          ],
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "4 weeks - 4 days",
              "minInt": "8 weeks",
              "earliestRecInt": "8 weeks",
              "latestRecInt": "7 months + 4 weeks"
            },
            {
              "fromPrevious": "N",
              "fromMostRecent": "21; 94; 121",
              "absMinInt": "0 days",
              "minInt": "8 weeks",
              "earliestRecInt": "8 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Zoster recombinant",
              "cvx": "187",
              "beginAge": "50 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Zoster recombinant",
              "cvx": "187",
              "beginAge": "18 years"
            },
            {
              "vaccineType": "Zoster, unspecified formulation",
              "cvx": "188",
              "beginAge": "18 years"
            }
          ],
          "recurringDose": "No"
        }
      ]
    },
    {
      "seriesName": "Zoster 3-dose series",
      "targetDisease": "Zoster",
      "vaccineGroup": "Zoster",
      "seriesType": "Standard",
      "selectSeries": {
        "defaultSeries": "No",
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
              "absMinAge": "50 years",
              "minAge": "60 years",
              "earliestRecAge": "60 years"
            }
          ],
          "allowableVaccine": [
            {"vaccineType": "Zoster live", "cvx": "121", "beginAge": "50 years"}
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 2",
          "age": [{}],
          "interval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "0 days",
              "minInt": "8 weeks",
              "earliestRecInt": "8 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Zoster recombinant",
              "cvx": "187",
              "beginAge": "50 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Zoster recombinant",
              "cvx": "187",
              "beginAge": "18 years"
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
              "minInt": "8 weeks",
              "earliestRecInt": "8 weeks",
              "latestRecInt": "7 months + 4 weeks"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Zoster recombinant",
              "cvx": "187",
              "beginAge": "50 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Zoster recombinant",
              "cvx": "187",
              "beginAge": "18 years"
            },
            {
              "vaccineType": "Zoster, unspecified formulation",
              "cvx": "188",
              "beginAge": "18 years"
            }
          ],
          "recurringDose": "No"
        }
      ]
    }
  ]
});