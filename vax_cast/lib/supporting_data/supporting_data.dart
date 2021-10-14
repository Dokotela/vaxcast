import 'antigen_supporting_data/antigen_supporting_data.dart';
import 'schedule_supporting_data/schedule_supporting_data.dart';
import 'enums/target_disease_enum.dart';
import 'supporting_data_map.dart';

class SupportingData {
  Map<TargetDisease?, AntigenSupportingData?>? antigenSupportingData;
  ScheduleSupportingData? scheduleSupportingData;

  SupportingData._();

  void load() => _getSupportingData();

  void _getSupportingData() {
    // var json = jsonDecode(
    //     await File('lib/supporting_data/supporting_data.json').readAsString());
    var json = supportingDataMap;

    // antigenSupportingData = <TargetDisease, AntigenSupportingData>{};
    antigenSupportingData =
        (json['antigenSupportingData'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          _$enumDecodeNullable(_TargetDiseaseEnumToString, k),
          e == null
              ? null
              : AntigenSupportingData.fromJson(e as Map<String, dynamic>)),
    );

    scheduleSupportingData = json['scheduleSupportingData'] != null
        ? ScheduleSupportingData.fromJson(
            json['scheduleSupportingData'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'antigenSupportingData': antigenSupportingData
            ?.map((k, e) => MapEntry(_TargetDiseaseStringToEnum[k], e)),
        'scheduleSupportingData': scheduleSupportingData,
      };
}

T? _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  enumValues.removeWhere((key, value) => value.value == source);

  if ((enumValues.isEmpty || enumValues.length > 1) && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return (enumValues.isEmpty || enumValues.length > 1)
      ? unknownValue
      : enumValues[0];
}

T? _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _TargetDiseaseEnumToString = {
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

const _TargetDiseaseStringToEnum = {
  'Cholera': TargetDisease.cholera,
  'Diphtheria': TargetDisease.diptheria,
  'HepA': TargetDisease.hepA,
  'HepB': TargetDisease.hepB,
  'Hib': TargetDisease.hib,
  'HPV': TargetDisease.hpv,
  'Influenza': TargetDisease.influenza,
  'Japanese Encephalitis': TargetDisease.japaneseEncephalitis,
  'Meningococcal': TargetDisease.meningococcal,
  'Meningococcal B': TargetDisease.meningococcalB,
  'Measles': TargetDisease.measles,
  'Mumps': TargetDisease.mumps,
  'Pertussis': TargetDisease.pertussis,
  'Pneumococcal': TargetDisease.pneumococcal,
  'Polio': TargetDisease.polio,
  'Rabies': TargetDisease.rabies,
  'Rotavirus': TargetDisease.rotavirus,
  'Rubella': TargetDisease.rubella,
  'Tetanus': TargetDisease.tetanus,
  'Typhoid': TargetDisease.typhoid,
  'Varicella': TargetDisease.varicella,
  'Yellow Fever': TargetDisease.yellowFever,
  'Zoster': TargetDisease.zoster,
};
