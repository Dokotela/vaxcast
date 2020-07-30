import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:vax_cast/supporting_data/export_supporting_data.dart';

part 'vax_set.freezed.dart';
part 'vax_set.g.dart';

@freezed
abstract class VaxSet with _$VaxSet {
  factory VaxSet({
    String setID,
    String setDescription,
    String effectiveDate,
    String cessationDate,
    String conditionLogic,
    List<Condition> condition,
  }) = _VaxSet;

  factory VaxSet.fromJson(Map<String, dynamic> json) => _$VaxSetFromJson(json);
}
