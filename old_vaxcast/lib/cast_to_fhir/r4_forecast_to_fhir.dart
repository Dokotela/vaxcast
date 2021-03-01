import 'package:fhir/fhir_r4.dart';

import '../export.dart';
import 'cvx_to_string.dart';
import 'r4_disease_coding.dart';

Parameters r4ForecastToFhir(
    List<GroupForecast> groupForecast, String id, String assessmentDate) {
  var immunizationRecommendation = ImmunizationRecommendation(
    resourceType: 'ImmunizationRecommendation',
    patient: Reference(reference: 'Patient/$id'),
    date: FhirDateTime(assessmentDate),
    recommendation: [],
  );

  for (var forecast in groupForecast) {
    immunizationRecommendation.recommendation.add(
      ImmunizationRecommendationRecommendation(
        targetDisease: [
          CodeableConcept(coding: getDiseaseListCoding(forecast.targetDisease)),
        ],
        forecastStatus: CodeableConcept(coding: [
          Coding(
            system: FhirUri(
                'http://hl7.org/fhir/us/ImmunizationFHIRDS/CodeSystem/ForecastStatus'),
            code: Code(statusToCode(forecast.groupStatus)),
            display: statusToDisplay(forecast.groupStatus),
          )
        ]),
        vaccineCode: forecast.groupRecVaccines.keys.length == 0
            ? null
            : [
                CodeableConcept(
                  coding: listCvx(forecast, id),
                ),
              ],
        dateCriterion: [
          forecast.groupEarliestDate == null
              ? null
              : earliest(forecast.groupEarliestDate),
          forecast.groupAdjRecDate == null
              ? null
              : recommended(forecast.groupAdjRecDate),
          forecast.groupAdjPastDueDate == null
              ? null
              : past(forecast.groupAdjPastDueDate),
        ],
        series: forecast.vaccineGroupName.toString(),
      ),
    );
  }
  return Parameters(
    resourceType: 'Parameters',
    parameter: [
      ParametersParameter(
        name: 'recommendation',
        resource: immunizationRecommendation,
      )
    ],
  );
}

List<Coding> listCvx(GroupForecast groupForecast, String id) {
  var diseases = groupForecast.targetDisease;
  List<Vaccine> vaccineList = groupForecast.groupRecVaccines.keys.toList();
  if (diseases.length == 1) {
    return [
      Coding(
        system: FhirUri('http://hl7.org/fhir/sid/cvx'),
        code: Code(cvxToString[vaccineList[0].cvx]),
        display: vaccineList[0].vaccineType,
      )
    ];
  } else {
    var firstVax = groupForecast.groupRecVaccines.keys.firstWhere(
        (key) => groupForecast.groupRecVaccines[key].length == 3,
        orElse: () => null);
    if (firstVax != null) {
      return [
        Coding(
          system: FhirUri('http://hl7.org/fhir/sid/cvx'),
          code: Code(cvxToString[firstVax.cvx]),
          display: firstVax.vaccineType,
        ),
      ];
    } else {
      print(id);
    }
  }
}

List<Coding> getDiseaseListCoding(List<TargetDisease> targets) {
  if (targets.length == 1) {
    return r4DiseaseCoding[targets[0]];
  } else {
    List<Coding> codingList = [];
    targets.forEach((target) => codingList.add(r4DiseaseCoding[target][0]));
    return codingList;
  }
}

String statusToCode(SeriesStatus status) {
  switch (status) {
    case SeriesStatus.complete:
      return 'complete';
    case SeriesStatus.notComplete:
      return 'notComplete';
    case SeriesStatus.notRecommended:
      return 'notRecommended';
    case SeriesStatus.immune:
      return 'immune';
    case SeriesStatus.contraindicated:
      return 'contraindicated';
    case SeriesStatus.agedOut:
      return 'agedOut';
    default:
      return 'conditional';
  }
}

String statusToDisplay(SeriesStatus status) {
  switch (status) {
    case SeriesStatus.complete:
      return 'Complete';
    case SeriesStatus.notComplete:
      return 'Not Complete';
    case SeriesStatus.notRecommended:
      return 'Not Recommended';
    case SeriesStatus.immune:
      return 'Immune';
    case SeriesStatus.contraindicated:
      return 'Contraindicated';
    case SeriesStatus.agedOut:
      return 'Aged Out';
    default:
      return 'Conditional';
  }
}

ImmunizationRecommendationDateCriterion earliest(VaxDate earliest) =>
    ImmunizationRecommendationDateCriterion(
      code: CodeableConcept(
        coding: [
          Coding(
            system: FhirUri("http://loinc.org"),
            code: Code("30981-5"),
            display: "Earliest date to give",
          ),
        ],
      ),
      value: FhirDateTime(earliest?.toString() ?? VaxDate.max().toString()),
    );

ImmunizationRecommendationDateCriterion recommended(VaxDate recommended) =>
    ImmunizationRecommendationDateCriterion(
      code: CodeableConcept(
        coding: [
          Coding(
            system: FhirUri("http://loinc.org"),
            code: Code("30980-7"),
            display: "Date vaccine due",
          ),
        ],
      ),
      value: FhirDateTime(recommended?.toString() ?? VaxDate.max().toString()),
    );

ImmunizationRecommendationDateCriterion past(VaxDate past) =>
    ImmunizationRecommendationDateCriterion(
      code: CodeableConcept(
        coding: [
          Coding(
            system: FhirUri("http://loinc.org"),
            code: Code("59778-1"),
            display: "Date when overdue for immunization",
          ),
        ],
      ),
      value: FhirDateTime(past?.toString() ?? VaxDate.max().toString()),
    );
