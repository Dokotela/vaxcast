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

const seriesGroupNameStringToEnum = {
  'Standard': SeriesGroupName.standard,
  'Standard 65+': SeriesGroupName.standard65,
  'Increased Risk': SeriesGroupName.increasedRisk,
  'Increased Risk Infant': SeriesGroupName.increasedRiskInfant,
  'Patient Seeks Protection': SeriesGroupName.patientSeeksProtection,
};

const seriesGroupNameEnumToString = {
  SeriesGroupName.standard: 'Standard',
  SeriesGroupName.standard65: 'Standard 65+',
  SeriesGroupName.increasedRisk: 'Increased Risk',
  SeriesGroupName.increasedRiskInfant: 'Increased Risk Infant',
  SeriesGroupName.patientSeeksProtection: 'Patient Seeks Protection',
};
