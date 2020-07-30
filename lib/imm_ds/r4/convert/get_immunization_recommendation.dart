import 'package:fhir/fhir_r4.dart';

import '../../../export.dart';
import 'get_date_time.dart';
import 'r4_disease_coding.dart';
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
          targetDisease: [CodeableConcept(coding: r4DiseaseCoding[row[54]])],
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
          dateCriterion: (row[51] == '' || row[51] == null) &&
                  (row[52] == '' || row[52] == null) &&
                  (row[53] == '' || row[53] == null)
              ? null
              : [
                  //include the date criteria from the test cases
                  row[51] == '' || row[51] == null
                      ? null
                      : ImmunizationRecommendationDateCriterion(
                          code: CodeableConcept(coding: [
                            Coding(
                              system: FhirUri('http://loinc.org'),
                              code: Code('30981-5'),
                              display: 'Earliest date to give',
                            )
                          ]),
                          value: FhirDateTime(getDateTime(row[51]).toString())),
                  row[52] == '' || row[52] == null
                      ? null
                      : ImmunizationRecommendationDateCriterion(
                          code: CodeableConcept(coding: [
                            Coding(
                              system: FhirUri('http://loinc.org'),
                              code: Code('30980-7'),
                              display: 'Date vaccine due',
                            )
                          ]),
                          value: FhirDateTime(getDateTime(row[52]).toString())),
                  row[53] == '' || row[53] == null
                      ? null
                      : ImmunizationRecommendationDateCriterion(
                          code: CodeableConcept(coding: [
                            Coding(
                              system: FhirUri('http://loinc.org'),
                              code: Code('59778-1'),
                              display: 'Date when overdue for immunization',
                            )
                          ]),
                          value: FhirDateTime(getDateTime(row[53]).toString())),
                ],
          series: getDz(row[54]),
          description: 'Evaluation_Test_Type: ${row[56]}\n'
              'Forecast_Test_Type: Evaluation${row[59]}\n'
              'General_Description: ${row[62]}'),
    ],
  ));
}

String getDz(String short) => shortToDz[short].toString();

Map<String, VaccineGroupName> shortToDz = {
  'DTAP': VaccineGroupName.dtap_tdap_td,
  'FLU': VaccineGroupName.influenza,
  'HepA': VaccineGroupName.hepA,
  'HepB': VaccineGroupName.hepB,
  'HIB': VaccineGroupName.hib,
  'HPV': VaccineGroupName.hpv,
  'MCV': VaccineGroupName.meningococcal,
  'MMR': VaccineGroupName.mmr,
  'PCV': VaccineGroupName.pneumococcal,
  'POL': VaccineGroupName.polio,
  'ROTA': VaccineGroupName.rotavirus,
  'VAR': VaccineGroupName.varicella,
  'ZOSTER': VaccineGroupName.zoster,
};
