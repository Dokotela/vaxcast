import 'package:freezed_annotation/freezed_annotation.dart';

enum SeriesGroupName {
  @JsonValue('Standard')
  standard,
  @JsonValue('Standard 65+')
  standard65,
  @JsonValue('Increased Risk')
  increasedRisk,
  @JsonValue('Increased Risk Infant')
  increasedRiskInfant,
  @JsonValue('Patient Seeks Protection')
  patientSeeksProtection,
}
