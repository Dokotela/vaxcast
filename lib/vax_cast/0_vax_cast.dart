import 'package:fhir/fhir_r4.dart';

import '../export.dart';

class VaxCast {
  VaxCast();

  Future<Map<String, dynamic>> forecastR4(Patient newPatient,
          List<Immunization> newImmunizations, String assessmentDate) =>
      _$forecastR4(newPatient, newImmunizations, assessmentDate);
}

Future<Map<String, dynamic>> _$forecastR4(Patient newPatient,
    List<Immunization> newImmunizations, String assessmentDate) async {
  await SupportingData.load();
  VaxPatient vaxPatient = VaxPatient.fromR4(
      newPatient, newImmunizations, null, null, assessmentDate);
  var forecast = await Forecast(patient: vaxPatient).cast();
  // return forecast;
  var fhirForecast = r4ForecastToFhir(forecast, vaxPatient.id, assessmentDate);
  return fhirForecast.toJson();
  // return r4error(errorMessage).toJson().toString();
}
