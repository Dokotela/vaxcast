import 'package:freezed_annotation/freezed_annotation.dart';

enum ConditionType {
  @JsonValue('Age')
  age,
  @JsonValue('Vaccine Count by Age')
  countByAge,
  @JsonValue('Interval')
  interval,
  @JsonValue('Vaccine Count by Date')
  countByDate,
  @JsonValue('Completed Series')
  completedSeries,
}
