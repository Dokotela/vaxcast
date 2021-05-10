import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../vax_cast.dart';

part 'immunity.freezed.dart';
part 'immunity.g.dart';

@freezed
class Immunity with _$Immunity {
  factory Immunity({
    List<ClinicalHistory>? clinicalHistory,
    DateOfBirth? dateOfBirth,
  }) = _Immunity;

  factory Immunity.fromJson(Map<String, dynamic> json) =>
      _$ImmunityFromJson(json);
}
