import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enums/obs_code_enum.dart';

part 'clinical_history.freezed.dart';
part 'clinical_history.g.dart';

@freezed
class ClinicalHistory with _$ClinicalHistory {
  factory ClinicalHistory({
    Obs? guidelineCode,
    String? guidelineTitle,
  }) = _ClinicalHistory;

  factory ClinicalHistory.fromJson(Map<String, dynamic> json) =>
      _$ClinicalHistoryFromJson(json);
}
