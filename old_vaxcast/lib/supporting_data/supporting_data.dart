import 'dart:convert';
import 'dart:io';

import 'antigen_supporting_data/antigen_supporting_data.dart';
import 'schedule_supporting_data/schedule_supporting_data.dart';
import 'supporting_data_enums/target_disease_enum.dart';

class SupportingData {
  static Map<TargetDisease, AntigenSupportingData> _antigenSupportingData;
  static ScheduleSupportingData _scheduleSupportingData;

  SupportingData._();

  static Map<TargetDisease, AntigenSupportingData> get antigenSupportingData =>
      _antigenSupportingData;
  static ScheduleSupportingData get scheduleSupportingData =>
      _scheduleSupportingData;
  static Future<void> load() => _load();

  static Future<void> _load() async {
    await _getSupportingData();
  }

  static void _getSupportingData() async {
    var json = jsonDecode(
        await File('lib/supporting_data/supporting_data.json').readAsString());

    // _antigenSupportingData = <TargetDisease, AntigenSupportingData>{};
    _antigenSupportingData =
        (json['antigenSupportingData'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          _$enumDecodeNullable(_$TargetDiseaseEnumMap, k),
          e == null
              ? null
              : AntigenSupportingData.fromJson(e as Map<String, dynamic>)),
    );
    _scheduleSupportingData = json['scheduleSupportingData'] != null
        ? ScheduleSupportingData.fromJson(
            json['scheduleSupportingData'] as Map<String, dynamic>)
        : null;
  }

  static Map<String, dynamic> toJson() => <String, dynamic>{
        'antigenSupportingData': _antigenSupportingData
            ?.map((k, e) => MapEntry(_$TargetDiseaseEnumMap[k], e)),
        'scheduleSupportingData': _scheduleSupportingData,
      };
}

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
  TargetDisease.typhoid: 'Typhoid',
  TargetDisease.varicella: 'Varicella',
  TargetDisease.yellowFever: 'Yellow Fever',
  TargetDisease.zoster: 'Zoster',
};
