import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enums/obs_code_enum.dart';

part 'observation_code.freezed.dart';
part 'observation_code.g.dart';

@freezed
class ObservationCode with _$ObservationCode {
  ObservationCode._();
  factory ObservationCode({
    String? text,
    Obs? code,
  }) = _ObservationCode;

  factory ObservationCode.fromJson(Map<String, dynamic> json) =>
      _$ObservationCodeFromJson(json);
}
