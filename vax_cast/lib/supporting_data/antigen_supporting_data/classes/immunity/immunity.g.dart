// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'immunity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Immunity _$_$_ImmunityFromJson(Map<String, dynamic> json) {
  return _$_Immunity(
    clinicalHistory: (json['clinicalHistory'] as List<dynamic>?)
        ?.map((e) => ClinicalHistory.fromJson(e as Map<String, dynamic>))
        .toList(),
    dateOfBirth: json['dateOfBirth'] == null
        ? null
        : DateOfBirth.fromJson(json['dateOfBirth'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ImmunityToJson(_$_Immunity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clinicalHistory',
      instance.clinicalHistory?.map((e) => e.toJson()).toList());
  writeNotNull('dateOfBirth', instance.dateOfBirth?.toJson());
  return val;
}
