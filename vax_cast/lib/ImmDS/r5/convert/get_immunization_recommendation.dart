import 'package:fhir/r5.dart';
import 'package:vax_cast/cast/vax_cast.dart';

import 'get_date_time.dart';
import 'status.dart';

ImmunizationRecommendation getImmunizationRecommendation(List<String> row) {
  return (ImmunizationRecommendation(
    resourceType: 'ImmunizationRecommendation',
    //reference the patient
    patient: Reference(reference: 'Patient/${row[0]}'),
    //the date of the recommendation
    date: FhirDateTime(getDateTime(row[55]).toString()),
    recommendation: [
      ImmunizationRecommendationRecommendation(
          forecastStatus: CodeableConcept(
            coding: [
              Coding(
                system: FhirUri(
                    "http://hl7.org/fhir/us/ImmunizationFHIRDS/CodeSystem/ForecastStatus"),
                code: Code(seriesStatusCode(row[7])),
                display: seriesStatusDisplay(row[7]),
              ),
            ],
          ),
          //fill in dose number of the recommendation
          doseNumberPositiveInt: row[50] != '-' && row[50] != ''
              ? PositiveInt(int.parse(row[50]))
              : null,
          dateCriterion: [
            //include the date criteria from the test cases
            ImmunizationRecommendationDateCriterion(
                code: CodeableConcept(coding: [
                  Coding(
                    system: FhirUri('http://loinc.org'),
                    code: Code('30981-5'),
                    display: 'Earliest date to give',
                  )
                ]),
                value: row[51] == '' || row[51] == null
                    ? FhirDateTime(VaxDate.max().toString())
                    : FhirDateTime(getDateTime(row[51]).toString())),
            ImmunizationRecommendationDateCriterion(
                code: CodeableConcept(coding: [
                  Coding(
                    system: FhirUri('http://loinc.org'),
                    code: Code('30980-7'),
                    display: 'Date vaccine due',
                  )
                ]),
                value: row[52] == '' || row[52] == null
                    ? FhirDateTime(VaxDate.max().toString())
                    : FhirDateTime(getDateTime(row[52]).toString())),
            ImmunizationRecommendationDateCriterion(
                code: CodeableConcept(coding: [
                  Coding(
                    system: FhirUri('http://loinc.org'),
                    code: Code('59778-1'),
                    display: 'Date when overdue for immunization',
                  )
                ]),
                value: row[53] == '' || row[53] == null
                    ? FhirDateTime(VaxDate.max().toString())
                    : FhirDateTime(getDateTime(row[53]).toString())),
          ],
          series: row[54],
          description: 'Evaluation_Test_Type: ${row[56]}\n'
              'Forecast_Test_Type: Evaluation${row[59]}\n'
              'General_Description: ${row[62]}'),
    ],
  ));
}
