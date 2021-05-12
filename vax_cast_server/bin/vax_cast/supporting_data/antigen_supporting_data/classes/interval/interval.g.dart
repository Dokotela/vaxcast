// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Interval _$_$_IntervalFromJson(Map<String, dynamic> json) {
  return _$_Interval(
    fromPrevious:
        _$enumDecodeNullable(_$FromPreviousEnumMap, json['fromPrevious']),
    fromTargetDose:
        _$enumDecodeNullable(_$FromTargetEnumMap, json['fromTargetDose']),
    fromMostRecent: json['fromMostRecent'] as String?,
    fromRelevantObs: json['fromRelevantObs'] == null
        ? null
        : ObservationCode.fromJson(
            json['fromRelevantObs'] as Map<String, dynamic>),
    absMinInt: json['absMinInt'] as String?,
    minInt: json['minInt'] as String?,
    earliestRecInt: json['earliestRecInt'] as String?,
    latestRecInt: json['latestRecInt'] as String?,
    intervalPriority: json['intervalPriority'] as String?,
    effectiveDate: json['effectiveDate'] as String?,
    cessationDate: json['cessationDate'] as String?,
  );
}

Map<String, dynamic> _$_$_IntervalToJson(_$_Interval instance) =>
    <String, dynamic>{
      'fromPrevious': _$FromPreviousEnumMap[instance.fromPrevious],
      'fromTargetDose': _$FromTargetEnumMap[instance.fromTargetDose],
      'fromMostRecent': instance.fromMostRecent,
      'fromRelevantObs': instance.fromRelevantObs,
      'absMinInt': instance.absMinInt,
      'minInt': instance.minInt,
      'earliestRecInt': instance.earliestRecInt,
      'latestRecInt': instance.latestRecInt,
      'intervalPriority': instance.intervalPriority,
      'effectiveDate': instance.effectiveDate,
      'cessationDate': instance.cessationDate,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$FromPreviousEnumMap = {
  FromPrevious.yes: 'Y',
  FromPrevious.no: 'N',
};

const _$FromTargetEnumMap = {
  FromTarget.dose1: '1',
  FromTarget.dose2: '2',
  FromTarget.na: '',
};
