// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Condition _$_$_ConditionFromJson(Map<String, dynamic> json) {
  return _$_Condition(
    conditionID: json['conditionID'] as String,
    conditionType:
        _$enumDecodeNullable(_$ConditionTypeEnumMap, json['conditionType']),
    startDate: json['startDate'] as String,
    endDate: json['endDate'] as String,
    beginAge: json['beginAge'] as String,
    endAge: json['endAge'] as String,
    interval: json['interval'] as String,
    doseCount: json['doseCount'] as String,
    doseType: _$enumDecodeNullable(_$DoseTypeEnumMap, json['doseType']),
    doseCountLogic:
        _$enumDecodeNullable(_$DoseCountLogicEnumMap, json['doseCountLogic']),
    vaccineTypes: json['vaccineTypes'] as String,
    seriesGroups: json['seriesGroups'] as String,
  );
}

Map<String, dynamic> _$_$_ConditionToJson(_$_Condition instance) =>
    <String, dynamic>{
      'conditionID': instance.conditionID,
      'conditionType': _$ConditionTypeEnumMap[instance.conditionType],
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'beginAge': instance.beginAge,
      'endAge': instance.endAge,
      'interval': instance.interval,
      'doseCount': instance.doseCount,
      'doseType': _$DoseTypeEnumMap[instance.doseType],
      'doseCountLogic': _$DoseCountLogicEnumMap[instance.doseCountLogic],
      'vaccineTypes': instance.vaccineTypes,
      'seriesGroups': instance.seriesGroups,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ConditionTypeEnumMap = {
  ConditionType.age: 'Age',
  ConditionType.countByAge: 'Vaccine Count by Age',
  ConditionType.interval: 'Interval',
  ConditionType.countByDate: 'Vaccine Count by Date',
  ConditionType.completedSeries: 'Completed Series',
};

const _$DoseTypeEnumMap = {
  DoseType.total: 'Total',
  DoseType.valid: 'Valid',
  DoseType.none: '',
};

const _$DoseCountLogicEnumMap = {
  DoseCountLogic.none: '',
  DoseCountLogic.greaterThan: 'greater than',
  DoseCountLogic.equalTo: 'equal to',
};
