import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../vax_cast.dart';

part 'condition.freezed.dart';
part 'condition.g.dart';

@freezed
class Condition with _$Condition {
  factory Condition({
    String? conditionID,
    ConditionType? conditionType,
    String? startDate,
    String? endDate,
    String? beginAge,
    String? endAge,
    String? interval,
    String? doseCount,
    DoseType? doseType,
    DoseCountLogic? doseCountLogic,
    String? vaccineTypes,
    String? seriesGroups,
  }) = _Condition;

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}
