import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../vaxcast.dart';

part 'observations.freezed.dart';
part 'observations.g.dart';

@freezed
class Observations with _$Observations {
  factory Observations({
    List<Observation>? observation,
  }) = _Observations;

  factory Observations.fromJson(Map<String, dynamic> json) =>
      _$ObservationsFromJson(json);
}

@freezed
class Observation with _$Observation {
  factory Observation({
    Obs? observationCode,
    String? observationTitle,
    String? group,
    String? indicationText,
    String? contraindicationText,
    String? clarifyingText,
    CodedValues? codedValues,
  }) = _Observation;

  factory Observation.fromJson(Map<String, dynamic> json) =>
      _$ObservationFromJson(json);
}

@freezed
class CodedValues with _$CodedValues {
  factory CodedValues({
    List<CodedValue>? codedValue,
  }) = _CodedValues;

  factory CodedValues.fromJson(Map<String, dynamic> json) =>
      _$CodedValuesFromJson(json);
}

@freezed
class CodedValue with _$CodedValue {
  factory CodedValue({
    String? code,
    String? codeSystem,
    String? text,
  }) = _CodedValue;

  factory CodedValue.fromJson(Map<String, dynamic> json) =>
      _$CodedValueFromJson(json);
}
