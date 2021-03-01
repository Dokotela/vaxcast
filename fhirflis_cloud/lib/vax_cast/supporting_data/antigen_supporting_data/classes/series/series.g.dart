// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Series _$_$_SeriesFromJson(Map<String, dynamic> json) {
  return _$_Series(
    seriesName: json['seriesName'] as String,
    targetDisease:
        _$enumDecodeNullable(_$TargetDiseaseEnumMap, json['targetDisease']),
    vaccineGroup:
        _$enumDecodeNullable(_$VaccineGroupNameEnumMap, json['vaccineGroup']),
    seriesAdminGuidance: (json['seriesAdminGuidance'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    seriesType: _$enumDecodeNullable(_$SeriesTypeEnumMap, json['seriesType']),
    equivalentSeriesGroups: _$enumDecodeNullable(
        _$EquivalentSeriesGroupsEnumMap, json['equivalentSeriesGroups']),
    requiredGender: (json['requiredGender'] as List)
        ?.map((e) => _$enumDecodeNullable(_$GenderEnumMap, e))
        ?.toList(),
    selectSeries: json['selectSeries'] == null
        ? null
        : SelectSeries.fromJson(json['selectSeries'] as Map<String, dynamic>),
    indication: (json['indication'] as List)
        ?.map((e) =>
            e == null ? null : Indication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    seriesDose: (json['seriesDose'] as List)
        ?.map((e) =>
            e == null ? null : SeriesDose.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_SeriesToJson(_$_Series instance) => <String, dynamic>{
      'seriesName': instance.seriesName,
      'targetDisease': _$TargetDiseaseEnumMap[instance.targetDisease],
      'vaccineGroup': _$VaccineGroupNameEnumMap[instance.vaccineGroup],
      'seriesAdminGuidance': instance.seriesAdminGuidance,
      'seriesType': _$SeriesTypeEnumMap[instance.seriesType],
      'equivalentSeriesGroups':
          _$EquivalentSeriesGroupsEnumMap[instance.equivalentSeriesGroups],
      'requiredGender':
          instance.requiredGender?.map((e) => _$GenderEnumMap[e])?.toList(),
      'selectSeries': instance.selectSeries,
      'indication': instance.indication,
      'seriesDose': instance.seriesDose,
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

const _$TargetDiseaseEnumMap = {
  TargetDisease.cholera: 'Cholera',
  TargetDisease.diptheria: 'Diphtheria',
  TargetDisease.hepA: 'HepA',
  TargetDisease.hepB: 'HepB',
  TargetDisease.hib: 'Hib',
  TargetDisease.hpv: 'HPV',
  TargetDisease.influenza: 'Influenza',
  TargetDisease.japaneseEncephalitis: 'Japanese Encephalitis',
  TargetDisease.meningococcal: 'Meningococcal',
  TargetDisease.meningococcalB: 'Meningococcal B',
  TargetDisease.measles: 'Measles',
  TargetDisease.mumps: 'Mumps',
  TargetDisease.pertussis: 'Pertussis',
  TargetDisease.pneumococcal: 'Pneumococcal',
  TargetDisease.polio: 'Polio',
  TargetDisease.rabies: 'Rabies',
  TargetDisease.rotavirus: 'Rotavirus',
  TargetDisease.rubella: 'Rubella',
  TargetDisease.tetanus: 'Tetanus',
  TargetDisease.tuberculosis: 'Tuberculosis',
  TargetDisease.typhoid: 'Typhoid',
  TargetDisease.varicella: 'Varicella',
  TargetDisease.yellowFever: 'Yellow Fever',
  TargetDisease.zoster: 'Zoster',
};

const _$VaccineGroupNameEnumMap = {
  VaccineGroupName.cholera: 'Cholera',
  VaccineGroupName.dtap_tdap_td: 'DTaP/Tdap/Td',
  VaccineGroupName.hepA: 'HepA',
  VaccineGroupName.hepB: 'HepB',
  VaccineGroupName.hib: 'Hib',
  VaccineGroupName.hpv: 'HPV',
  VaccineGroupName.influenza: 'Influenza',
  VaccineGroupName.japaneseEncephalitis: 'Japanese Encephalitis',
  VaccineGroupName.meningococcal: 'Meningococcal',
  VaccineGroupName.meningococcalB: 'Meningococcal B',
  VaccineGroupName.mmr: 'MMR',
  VaccineGroupName.pneumococcal: 'Pneumococcal',
  VaccineGroupName.polio: 'Polio',
  VaccineGroupName.rabies: 'Rabies',
  VaccineGroupName.rotavirus: 'Rotavirus',
  VaccineGroupName.typhoid: 'Typhoid',
  VaccineGroupName.varicella: 'Varicella',
  VaccineGroupName.yellowFever: 'Yellow Fever',
  VaccineGroupName.zoster: 'Zoster',
};

const _$SeriesTypeEnumMap = {
  SeriesType.standard: 'Standard',
  SeriesType.risk: 'Risk',
};

const _$EquivalentSeriesGroupsEnumMap = {
  EquivalentSeriesGroups.group1: '1',
  EquivalentSeriesGroups.group2: '2',
  EquivalentSeriesGroups.none: '',
};

const _$GenderEnumMap = {
  Gender.female: 'Female',
  Gender.transgender: 'Transgender',
  Gender.unknown: 'Unknown',
  Gender.male: 'Male',
};
