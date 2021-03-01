import 'package:fhir/dstu2.dart' as dstu2;
import 'package:fhir/stu3.dart' as stu3;
import 'package:fhir/r4.dart' as r4;
import 'package:fhir/r5.dart' as r5;

import '../../vax_cast.dart';
import 'disease_coding/disease_coding.dart';
import 'date_criterion/date_criterion.dart';

part 'b_prepare_antigens.dart';
part 'c_is_relevant.dart';
part 'd_to_recommendation.dart';

class Forecast {
  Map<String, Antigen> antigens;
  List<GroupForecast> groupForecast;
  VaxPatient patient;

  Forecast() {
    antigens = <String, Antigen>{};
  }

  Future<dynamic> castFhir(FHIR_V version, parameters) {
    String assessmentDate = parameters.parameter[0].valueDate.toString();
    var fhirPatient = parameters.parameter[1].resource;
    List<dynamic> vaxList = <dynamic>[];
    for (var i = 2; i < parameters.parameter.length; i++) {
      vaxList.add(parameters.parameter[i].resource);
    }
    return castRaw(version, fhirPatient, vaxList, null, null, assessmentDate);
  }

  Future<dynamic> castRaw(FHIR_V version, patient, immunizations, conditions,
      allergyIntolerance, String assessmentDate) async {
    await SupportingData.load();
    // this.patient = VaxPatient.fromFhir(
    //   version,
    //   patient,
    //   immunizations,
    //   conditions,
    //   allergyIntolerance,
    //   assessmentDate,
    // );
    return castIt(version);
  }

  Future<dynamic> castIt(FHIR_V version) async {
    antigens = prepareAntigens(patient);
    getForecast();
    return version == FHIR_V.r4
        ? r4Recommendation(groupForecast, patient)
        : version == FHIR_V.stu3
            ? stu3Recommendation(groupForecast, patient)
            : version == FHIR_V.dstu2
                ? dstu2Recommendation(groupForecast, patient)
                : r5Recommendation(groupForecast, patient);
  }

  void getForecast() {
//remove after testing ******************************************************//
    // antigens.removeWhere(
    //     (ag, antigen) => antigen.seriesVaccineGroup != patient.seriesGroup);
// ***************************************************************************//
    antigens.forEach((ag, antigen) => antigen.getForecast());
    groupForecast = <GroupForecast>[];
    antigens.forEach((ag, antigen) => identifyAndEvaluateVaccineGroup(antigen));
    groupForecast.forEach((forecast) => forecast.convertNull());
  }

  void identifyAndEvaluateVaccineGroup(Antigen antigen) {
    antigen.groups.forEach((seriesGroup) {
      if (antigen.isSingleAgVaxGroup()) {
        addSingleVaxGroup(seriesGroup);
      } else {
        if (!alreadyIncluded(false, antigen)) addMultiVaxGroup(antigen);
      }
    });
  }

  void addMultiVaxGroup(Antigen antigen) {
    var newGroupForecast = GroupForecast();
    var incomplete = false;
    var immune = true;
    var contraindication = false;
    for (final ag in antigens.keys) {
      if (antigens[ag].seriesVaccineGroup == antigen.seriesVaccineGroup) {
        for (final series in antigens[ag].groups) {
          var curSeries = series.vaxSeries[0];
          incomplete |= curSeries.seriesStatus == 'not complete';
          immune = immune && curSeries.seriesStatus == 'immune';
          contraindication |= curSeries.seriesStatus == 'contraindicated';
          newGroupForecast.applyMultiAgLogic(curSeries);
        }
      }
    }
    newGroupForecast.finalDates();
    newGroupForecast.groupStatus = immune
        ? 'immune'
        : contraindication
            ? 'contraindicated'
            : incomplete
                ? 'not complete'
                : 'complete';

    newGroupForecast.seriesVaccineGroup = antigen.seriesVaccineGroup;
    groupForecast.add(newGroupForecast);
  }

  bool alreadyIncluded(bool alreadyIncluded, Antigen antigen) {
    groupForecast.forEach((forecast) => alreadyIncluded |=
        forecast.seriesVaccineGroup == antigen.seriesVaccineGroup);
    return alreadyIncluded;
  }

  void addSingleVaxGroup(seriesGroup) =>
      groupForecast.add(GroupForecast.singleAg(seriesGroup.vaxSeries[0]));
}
