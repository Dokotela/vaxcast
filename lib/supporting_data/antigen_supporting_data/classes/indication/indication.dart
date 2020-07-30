import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_cast/supporting_data/export_supporting_data.dart';

part 'indication.freezed.dart';
part 'indication.g.dart';

@freezed
abstract class Indication with _$Indication {
  factory Indication({
    ObservationCode observationCode,
    String description,
    String beginAge,
    String endAge,
    String guidance,
  }) = _Indication;

  factory Indication.fromJson(Map<String, dynamic> json) =>
      _$IndicationFromJson(json);
}
