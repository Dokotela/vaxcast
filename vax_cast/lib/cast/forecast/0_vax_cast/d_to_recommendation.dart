part of 'a_vax_cast.dart';

r4.ImmunizationRecommendation r4Recommendation(
    List<GroupForecast> groupForecast, VaxPatient patient) {
  var recs = r4.ImmunizationRecommendation(
    resourceType: 'ImmunizationRecommendation',
    patient: r4.Reference(reference: 'Patient/${patient.id}'),
    date: r4.FhirDateTime(patient.assessmentDate.toString()),
    recommendation: <r4.ImmunizationRecommendationRecommendation>[],
  );
  for (var group in groupForecast) {
    for (var disease in group.targetDisease) {
      recs.recommendation.add(
        r4.ImmunizationRecommendationRecommendation(
          targetDisease: r4DiseaseCoding[disease],
          forecastStatus: r4.CodeableConcept(text: group.groupStatus),
          dateCriterion: getR4DateCriterion(
            group.groupEarliestDate,
            group.groupAdjRecDate,
            group.groupAdjPastDueDate,
          ),
          series: group.seriesVaccineGroup,
        ),
      );
    }
  }
  return recs;
}

stu3.ImmunizationRecommendation stu3Recommendation(
    List<GroupForecast> groupForecast, VaxPatient patient) {
  var recs = stu3.ImmunizationRecommendation(
    resourceType: 'ImmunizationRecommendation',
    patient: stu3.Reference(reference: 'Patient/${patient.id}'),
    recommendation: <stu3.ImmunizationRecommendationRecommendation>[],
  );
  for (var group in groupForecast) {
    for (var disease in group.targetDisease) {
      recs.recommendation.add(
        stu3.ImmunizationRecommendationRecommendation(
          targetDisease: stu3DiseaseCoding[disease],
          forecastStatus: stu3.CodeableConcept(text: group.groupStatus),
          dateCriterion: getStu3DateCriterion(
            group.groupEarliestDate,
            group.groupAdjRecDate,
            group.groupAdjPastDueDate,
          ),
          protocol: stu3.ImmunizationRecommendationProtocol(
            series: group.seriesVaccineGroup,
          ),
        ),
      );
    }
  }
  return recs;
}

dstu2.ImmunizationRecommendation dstu2Recommendation(
    List<GroupForecast> groupForecast, VaxPatient patient) {
  var recs = dstu2.ImmunizationRecommendation(
    resourceType: 'ImmunizationRecommendation',
    patient: dstu2.Reference(reference: 'Patient/${patient.id}'),
    recommendation: <dstu2.ImmunizationRecommendationRecommendation>[],
  );
  for (var group in groupForecast) {
    for (var disease in group.targetDisease) {
      recs.recommendation.add(
        dstu2.ImmunizationRecommendationRecommendation(
          date: dstu2.FhirDateTime(patient.assessmentDate.toString()),
          vaccineCode: dstu2.CodeableConcept(text: 'vaccine'),
          protocol: dstu2.ImmunizationRecommendationRecommendationProtocol(
            description: dstu2DiseaseCoding[disease].toString(),
            series: group.seriesVaccineGroup,
          ),
          forecastStatus: dstu2.CodeableConcept(text: group.groupStatus),
          dateCriterion: getDstu2DateCriterion(
            group.groupEarliestDate,
            group.groupAdjRecDate,
            group.groupAdjPastDueDate,
          ),
        ),
      );
    }
  }
  return recs;
}

r5.ImmunizationRecommendation r5Recommendation(
    List<GroupForecast> groupForecast, VaxPatient patient) {
  var recs = r5.ImmunizationRecommendation(
    resourceType: 'ImmunizationRecommendation',
    patient: r5.Reference(reference: 'Patient/${patient.id}'),
    date: r5.FhirDateTime(patient.assessmentDate.toString()),
    recommendation: <r5.ImmunizationRecommendationRecommendation>[],
  );
  for (var group in groupForecast) {
    for (var disease in group.targetDisease) {
      recs.recommendation.add(
        r5.ImmunizationRecommendationRecommendation(
          targetDisease: [r5DiseaseCoding[disease]],
          forecastStatus: r5.CodeableConcept(text: group.groupStatus),
          dateCriterion: getR5DateCriterion(
            group.groupEarliestDate,
            group.groupAdjRecDate,
            group.groupAdjPastDueDate,
          ),
          series: group.seriesVaccineGroup,
        ),
      );
    }
  }
  return recs;
}
