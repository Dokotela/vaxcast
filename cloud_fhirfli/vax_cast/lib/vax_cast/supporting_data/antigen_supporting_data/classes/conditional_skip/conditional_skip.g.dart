// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conditional_skip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConditionalSkip _$_$_ConditionalSkipFromJson(Map<String, dynamic> json) {
  return _$_ConditionalSkip(
    context: _$enumDecodeNullable(_$SkipContextEnumMap, json['context']),
    setLogic: json['setLogic'] as String,
    set_: (json['set'] as List)
        ?.map((e) =>
            e == null ? null : VaxSet.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ConditionalSkipToJson(_$_ConditionalSkip instance) =>
    <String, dynamic>{
      'context': _$SkipContextEnumMap[instance.context],
      'setLogic': instance.setLogic,
      'set': instance.set_,
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

const _$SkipContextEnumMap = {
  SkipContext.evaluation: 'Evaluation',
  SkipContext.forecast: 'Forecast',
  SkipContext.both: 'Both',
};
