// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_group_to_antigen_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaccineGroupToAntigenMap _$_$_VaccineGroupToAntigenMapFromJson(
    Map<String, dynamic> json) {
  return _$_VaccineGroupToAntigenMap(
    vaccineGroupMap: (json['vaccineGroupMap'] as List)
        ?.map((e) => e == null
            ? null
            : VaccineGroupMap.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_VaccineGroupToAntigenMapToJson(
        _$_VaccineGroupToAntigenMap instance) =>
    <String, dynamic>{
      'vaccineGroupMap': instance.vaccineGroupMap,
    };

_$_VaccineGroupMap _$_$_VaccineGroupMapFromJson(Map<String, dynamic> json) {
  return _$_VaccineGroupMap(
    name: _$enumDecodeNullable(_$VaccineGroupNameEnumMap, json['name']),
    antigen: (json['antigen'] as List)
        ?.map((e) => _$enumDecodeNullable(_$TargetDiseaseEnumMap, e))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_VaccineGroupMapToJson(_$_VaccineGroupMap instance) =>
    <String, dynamic>{
      'name': _$VaccineGroupNameEnumMap[instance.name],
      'antigen':
          instance.antigen?.map((e) => _$TargetDiseaseEnumMap[e])?.toList(),
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
  TargetDisease.typhoid: 'Typhoid',
  TargetDisease.varicella: 'Varicella',
  TargetDisease.yellowFever: 'Yellow Fever',
  TargetDisease.zoster: 'Zoster',
};
