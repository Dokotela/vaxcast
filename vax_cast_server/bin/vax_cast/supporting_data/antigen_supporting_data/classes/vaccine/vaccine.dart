import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../vax_cast.dart';

part 'vaccine.freezed.dart';
part 'vaccine.g.dart';

@freezed
abstract class Vaccine with _$Vaccine {
  factory Vaccine({
    String vaccineType,
    Cvx cvx,
    String beginAge,
    String endAge,
    String tradeName,
    String mvx,
    String volume,
    String forecastVaccineType,
  }) = _Vaccine;

  factory Vaccine.fromJson(Map<String, dynamic> json) =>
      _$VaccineFromJson(json);
}
