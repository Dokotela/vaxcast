import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_cast/supporting_data/export_supporting_data.dart';

part 'observation_code.freezed.dart';
part 'observation_code.g.dart';

@freezed
abstract class ObservationCode with _$ObservationCode {
  factory ObservationCode({
    String text,
    Obs code,
  }) = _ObservationCode;

  factory ObservationCode.fromJson(Map<String, dynamic> json) =>
      _$ObservationCodeFromJson(json);
}
