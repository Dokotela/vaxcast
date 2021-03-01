// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'immunity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Immunity _$_$_ImmunityFromJson(Map<String, dynamic> json) {
  return _$_Immunity(
    clinicalHistory: (json['clinicalHistory'] as List)
        ?.map((e) => e == null
            ? null
            : ClinicalHistory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dateOfBirth: json['dateOfBirth'] == null
        ? null
        : DateOfBirth.fromJson(json['dateOfBirth'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ImmunityToJson(_$_Immunity instance) =>
    <String, dynamic>{
      'clinicalHistory': instance.clinicalHistory,
      'dateOfBirth': instance.dateOfBirth,
    };
