import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../vax_cast.dart';

part 'indication.freezed.dart';
part 'indication.g.dart';

@freezed
class Indication with _$Indication {
  factory Indication({
    ObservationCode? observationCode,
    String? description,
    String? beginAge,
    String? endAge,
    String? guidance,
  }) = _Indication;

  factory Indication.fromJson(Map<String, dynamic> json) =>
      _$IndicationFromJson(json);
}
