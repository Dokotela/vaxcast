// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SelectSeries _$_$_SelectSeriesFromJson(Map<String, dynamic> json) {
  return _$_SelectSeries(
    defaultSeries: _$enumDecodeNullable(_$BinaryEnumMap, json['defaultSeries']),
    productPath: _$enumDecodeNullable(_$BinaryEnumMap, json['productPath']),
    seriesGroupName:
        _$enumDecodeNullable(_$SeriesGroupNameEnumMap, json['seriesGroupName']),
    seriesGroup:
        _$enumDecodeNullable(_$SeriesGroupEnumMap, json['seriesGroup']),
    seriesPriority:
        _$enumDecodeNullable(_$SeriesPriorityEnumMap, json['seriesPriority']),
    seriesPreference: _$enumDecodeNullable(
        _$SeriesPreferenceEnumMap, json['seriesPreference']),
    minAgeToStart: json['minAgeToStart'] as String?,
    maxAgeToStart: json['maxAgeToStart'] as String?,
  );
}

Map<String, dynamic> _$_$_SelectSeriesToJson(_$_SelectSeries instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('defaultSeries', _$BinaryEnumMap[instance.defaultSeries]);
  writeNotNull('productPath', _$BinaryEnumMap[instance.productPath]);
  writeNotNull(
      'seriesGroupName', _$SeriesGroupNameEnumMap[instance.seriesGroupName]);
  writeNotNull('seriesGroup', _$SeriesGroupEnumMap[instance.seriesGroup]);
  writeNotNull(
      'seriesPriority', _$SeriesPriorityEnumMap[instance.seriesPriority]);
  writeNotNull(
      'seriesPreference', _$SeriesPreferenceEnumMap[instance.seriesPreference]);
  writeNotNull('minAgeToStart', instance.minAgeToStart);
  writeNotNull('maxAgeToStart', instance.maxAgeToStart);
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

const _$BinaryEnumMap = {
  Binary.yes: 'Yes',
  Binary.no: 'No',
  Binary.na: '',
};

const _$SeriesGroupNameEnumMap = {
  SeriesGroupName.standard: 'Standard',
  SeriesGroupName.standard65: 'Standard 65+',
  SeriesGroupName.increasedRisk: 'Increased Risk',
  SeriesGroupName.increasedRiskInfant: 'Increased Risk Infant',
  SeriesGroupName.patientSeeksProtection: 'Patient Seeks Protection',
};

const _$SeriesGroupEnumMap = {
  SeriesGroup.one: '1',
  SeriesGroup.two: '2',
  SeriesGroup.three: '3',
};

const _$SeriesPriorityEnumMap = {
  SeriesPriority.a: 'A',
  SeriesPriority.b: 'B',
  SeriesPriority.c: 'C',
  SeriesPriority.d: 'D',
  SeriesPriority.e: 'E',
};

const _$SeriesPreferenceEnumMap = {
  SeriesPreference.one: '1',
  SeriesPreference.two: '2',
  SeriesPreference.three: '3',
  SeriesPreference.four: '4',
  SeriesPreference.five: '5',
  SeriesPreference.six: '6',
  SeriesPreference.none: '',
};
