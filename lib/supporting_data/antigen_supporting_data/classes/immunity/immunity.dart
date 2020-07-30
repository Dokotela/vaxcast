import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:vax_cast/supporting_data/export_supporting_data.dart';

part 'immunity.freezed.dart';
part 'immunity.g.dart';

@freezed
abstract class Immunity with _$Immunity {
  factory Immunity({
    List<ClinicalHistory> clinicalHistory,
    DateOfBirth dateOfBirth,
  }) = _Immunity;

  factory Immunity.fromJson(Map<String, dynamic> json) =>
      _$ImmunityFromJson(json);
}
