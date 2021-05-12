import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../supporting_data_enums/obs_code_enum.dart';

part 'exclusion.freezed.dart';
part 'exclusion.g.dart';

@freezed
class Exclusion with _$Exclusion {
  factory Exclusion({
    Obs? exclusionCode,
    String? exclusionTitle,
  }) = _Exclusion;

  factory Exclusion.fromJson(Map<String, dynamic> json) =>
      _$ExclusionFromJson(json);
}
