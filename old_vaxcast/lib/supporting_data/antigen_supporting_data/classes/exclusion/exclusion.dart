import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_cast/supporting_data/export_supporting_data.dart';

part 'exclusion.freezed.dart';
part 'exclusion.g.dart';

@freezed
abstract class Exclusion with _$Exclusion {
  factory Exclusion({
    Obs exclusionCode,
    String exclusionTitle,
  }) = _Exclusion;

  factory Exclusion.fromJson(Map<String, dynamic> json) =>
      _$ExclusionFromJson(json);
}
