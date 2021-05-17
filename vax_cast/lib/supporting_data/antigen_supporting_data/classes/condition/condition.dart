import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../supporting_data_enums/condition_type_enum.dart';
import '../../../supporting_data_enums/dose_count_logic_enum.dart';
import '../../../supporting_data_enums/dose_type_enum.dart';

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
