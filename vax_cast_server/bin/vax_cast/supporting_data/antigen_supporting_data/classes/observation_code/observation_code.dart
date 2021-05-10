import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../vax_cast.dart';

part 'observation_code.freezed.dart';
part 'observation_code.g.dart';

@freezed
class ObservationCode with _$ObservationCode {
  factory ObservationCode({
    String? text,
    Obs? code,
  }) = _ObservationCode;

  factory ObservationCode.fromJson(Map<String, dynamic> json) =>
      _$ObservationCodeFromJson(json);
}
