// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_groups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaccineGroups _$$_VaccineGroupsFromJson(Map<String, dynamic> json) =>
    _$_VaccineGroups(
      vaccineGroup: (json['vaccineGroup'] as List<dynamic>?)
          ?.map((e) => VaccineGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VaccineGroupsToJson(_$_VaccineGroups instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'vaccineGroup', instance.vaccineGroup?.map((e) => e.toJson()).toList());
  return val;
}

_$_VaccineGroup _$$_VaccineGroupFromJson(Map<String, dynamic> json) =>
    _$_VaccineGroup(
      name: _$enumDecodeNullable(_$VaccineGroupNameEnumMap, json['name']),
      administerFullVaccineGroup: _$enumDecodeNullable(
          _$BinaryEnumMap, json['administerFullVaccineGroup']),
    );

Map<String, dynamic> _$$_VaccineGroupToJson(_$_VaccineGroup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', _$VaccineGroupNameEnumMap[instance.name]);
  writeNotNull('administerFullVaccineGroup',
      _$BinaryEnumMap[instance.administerFullVaccineGroup]);
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

const _$VaccineGroupNameEnumMap = {
  VaccineGroupName.cholera: 'Cholera',
  VaccineGroupName.covid_19: 'COVID-19',
  VaccineGroupName.dtap_tdap_td: 'DTaP/Tdap/Td',
  VaccineGroupName.ebola: 'Ebola',
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
