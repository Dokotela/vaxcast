// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_dose.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeriesDose _$_$_SeriesDoseFromJson(Map<String, dynamic> json) {
  return _$_SeriesDose(
    doseNumber: _$enumDecodeNullable(_$DoseNumberEnumMap, json['doseNumber']),
    age: (json['age'] as List)
        ?.map((e) =>
            e == null ? null : VaxAge.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    interval: (json['interval'] as List)
        ?.map((e) =>
            e == null ? null : Interval.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    allowableInterval: json['allowableInterval'] == null
        ? null
        : Interval.fromJson(json['allowableInterval'] as Map<String, dynamic>),
    preferableVaccine: (json['preferableVaccine'] as List)
        ?.map((e) =>
            e == null ? null : Vaccine.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    allowableVaccine: (json['allowableVaccine'] as List)
        ?.map((e) =>
            e == null ? null : Vaccine.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    inadvertentVaccine: (json['inadvertentVaccine'] as List)
        ?.map((e) =>
            e == null ? null : Vaccine.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    conditionalSkip: (json['conditionalSkip'] as List)
        ?.map((e) => e == null
            ? null
            : ConditionalSkip.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    recurringDose: _$enumDecodeNullable(_$BinaryEnumMap, json['recurringDose']),
    seasonalRecommendation: json['seasonalRecommendation'] == null
        ? null
        : SeasonalRecommendation.fromJson(
            json['seasonalRecommendation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SeriesDoseToJson(_$_SeriesDose instance) =>
    <String, dynamic>{
      'doseNumber': _$DoseNumberEnumMap[instance.doseNumber],
      'age': instance.age,
      'interval': instance.interval,
      'allowableInterval': instance.allowableInterval,
      'preferableVaccine': instance.preferableVaccine,
      'allowableVaccine': instance.allowableVaccine,
      'inadvertentVaccine': instance.inadvertentVaccine,
      'conditionalSkip': instance.conditionalSkip,
      'recurringDose': _$BinaryEnumMap[instance.recurringDose],
      'seasonalRecommendation': instance.seasonalRecommendation,
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

const _$DoseNumberEnumMap = {
  DoseNumber.num1: 'Dose 1',
  DoseNumber.num2: 'Dose 2',
  DoseNumber.num3: 'Dose 3',
  DoseNumber.num4: 'Dose 4',
  DoseNumber.num5: 'Dose 5',
  DoseNumber.num6: 'Dose 6',
  DoseNumber.num7: 'Dose 7',
  DoseNumber.num8: 'Dose 8',
  DoseNumber.num9: 'Dose 9',
  DoseNumber.num10: 'Dose 10',
};

const _$BinaryEnumMap = {
  Binary.yes: 'Yes',
  Binary.no: 'No',
  Binary.na: '',
};
