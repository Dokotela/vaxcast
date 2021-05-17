// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conditional_skip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConditionalSkip _$_$_ConditionalSkipFromJson(Map<String, dynamic> json) {
  return _$_ConditionalSkip(
    context: _$enumDecodeNullable(_$SkipContextEnumMap, json['context']),
    setLogic: json['setLogic'] as String?,
    set_: (json['set'] as List<dynamic>?)
        ?.map((e) => VaxSet.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ConditionalSkipToJson(_$_ConditionalSkip instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('context', _$SkipContextEnumMap[instance.context]);
  writeNotNull('setLogic', instance.setLogic);
  writeNotNull('set', instance.set_?.map((e) => e.toJson()).toList());
  return val;
}

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

const _$SkipContextEnumMap = {
  SkipContext.evaluation: 'Evaluation',
  SkipContext.forecast: 'Forecast',
  SkipContext.both: 'Both',
};
