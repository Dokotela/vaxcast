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

const conditionTypeStringToEnum = {
  'Age': ConditionType.age,
  'Vaccine Count by Age': ConditionType.countByAge,
  'Interval': ConditionType.interval,
  'Vaccine Count by Date': ConditionType.countByDate,
  'Completed Series': ConditionType.completedSeries,
};

const conditionTypeEnumToString = {
  ConditionType.age: 'Age',
  ConditionType.countByAge: 'Vaccine Count by Age',
  ConditionType.interval: 'Interval',
  ConditionType.countByDate: 'Vaccine Count by Date',
  ConditionType.completedSeries: 'Completed Series',
};
