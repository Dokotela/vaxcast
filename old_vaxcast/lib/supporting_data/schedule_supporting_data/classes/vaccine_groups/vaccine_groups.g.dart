// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_groups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaccineGroups _$_$_VaccineGroupsFromJson(Map<String, dynamic> json) {
  return _$_VaccineGroups(
    vaccineGroup: (json['vaccineGroup'] as List)
        ?.map((e) =>
            e == null ? null : VaccineGroup.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_VaccineGroupsToJson(_$_VaccineGroups instance) =>
    <String, dynamic>{
      'vaccineGroup': instance.vaccineGroup,
    };

_$_VaccineGroup _$_$_VaccineGroupFromJson(Map<String, dynamic> json) {
  return _$_VaccineGroup(
    name: _$enumDecodeNullable(_$VaccineGroupNameEnumMap, json['name']),
    administerFullVaccineGroup: _$enumDecodeNullable(
        _$BinaryEnumMap, json['administerFullVaccineGroup']),
  );
}

Map<String, dynamic> _$_$_VaccineGroupToJson(_$_VaccineGroup instance) =>
    <String, dynamic>{
      'name': _$VaccineGroupNameEnumMap[instance.name],
      'administerFullVaccineGroup':
          _$BinaryEnumMap[instance.administerFullVaccineGroup],
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

const _$BinaryEnumMap = {
  Binary.yes: 'Yes',
  Binary.no: 'No',
  Binary.na: '',
};
