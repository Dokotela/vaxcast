import 'package:fhir/r4.dart' as r4;
import 'package:vaxcast/vaxcast.dart';

Future<void> castR4(
  r4.Patient patient,
  List<r4.Immunization> immunizations,
  List<r4.Condition> conditions,
  List<r4.AllergyIntolerance> allergies,
  String assessmentDate,
) async {
  /// Create VaxPatient from passed in arguments
  final vaxPatient = VaxPatient.fromR4(
      patient, immunizations, conditions, allergies, assessmentDate);
  final antigenMap = <TargetDisease, Antigen>{};

  /// For each immunization the patient has received in the past
  for (var immunization in vaxPatient.pastImmunizations ?? <Dose>[]) {
    /// Evaluate each Antigen covered by that Immunization
    for (var ag in immunization.antigens ?? []) {
      if (!antigenMap.containsKey(ag)) {
        antigenMap[ag] = Antigen(targetDisease: ag);
      }

      /// Add the Immunization to each of the Antigens that it covers
      antigenMap[ag]!.doses.add(immunization);
    }
  }
}
