import 'package:fhir/r4.dart';
import 'package:vax_cast/cast/vax_cast.dart';

import 'get_server_data.dart';

void main() async {
  var totalWrong = 0;
  var total = 0;
  var listOfWrongs = <String>[];
  // var patientIdList = await getPatientList();
  var patientIdList = testList;

  for (final patientId in patientIdList) {
    var newBundles = await GetFullCase(patientId);

    ImmunizationRecommendation vaccineForecast = await Forecast()
        .castFhir(FHIR_V.r4, newBundles.entry[0].resource as Parameters);
    total += 1;
    Parameters response = newBundles.entry[1].resource as Parameters;
    ImmunizationRecommendation rec =
        response.parameter.last.resource as ImmunizationRecommendation;
    vaccineForecast.recommendation.removeWhere(
        (element) => element.series != rec.recommendation[0].series);
    print(vaccineForecast.toJson().toString());
    print(patientId);
    if (vaccineForecast.recommendation.isNotEmpty) {
      if ('${vaccineForecast?.recommendation[0]?.dateCriterion[0]?.value}' !=
          '${rec.recommendation[0].dateCriterion[0].value}') {
        totalWrong += 1;
        listOfWrongs.add(patientId);
        print('${vaccineForecast?.recommendation[0]?.dateCriterion[0]?.value}:'
            '${rec.recommendation[0].dateCriterion[0].value}');
      }
      if ('${vaccineForecast.recommendation[0].dateCriterion[1].value}' !=
          '${rec.recommendation[0].dateCriterion[1].value}') {
        totalWrong += 1;
        listOfWrongs.add(patientId);
        print('${vaccineForecast.recommendation[0].dateCriterion[1].value}:'
            '${rec.recommendation[0].dateCriterion[1].value}');
      }
      if ('${vaccineForecast.recommendation[0].dateCriterion[2].value}' !=
          '${rec.recommendation[0].dateCriterion[2].value}') {
        totalWrong += 1;
        listOfWrongs.add(patientId);
        print('${vaccineForecast.recommendation[0].dateCriterion[2].value}:'
            '${rec.recommendation[0].dateCriterion[2].value}');
      }
    } else {
      print("I'm Empty! ${rec.recommendation[0].series}");
      totalWrong += 1;
      listOfWrongs.add(patientId);
    }
  }
  print('total: $total');
  print('totalWrong: $totalWrong');
  print(listOfWrongs);
}

var testList = [
  '2018-0022',
  '2013-0346',
  '2013-0348',
  '2013-0524',
  '2013-0535',
  '2013-0538',
  '2013-0544',
  '2013-0546',
  '2013-0551',
  '2013-0552',
  '2013-0555',
  '2013-0557',
  '2013-0565',
  '2013-0571',
  '2013-0572',
  '2013-0574',
  '2015-0024',
  '2019-0018',
  '2019-0020',
  '2019-0022',
  '2013-0584',
  '2015-0022',
  '2019-0008',
];
