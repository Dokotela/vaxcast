// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contraindications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Contraindications _$_$_ContraindicationsFromJson(Map<String, dynamic> json) {
  return _$_Contraindications(
    vaccineGroup: json['vaccineGroup'] == null
        ? null
        : VaccineGroupContraindications.fromJson(
            json['vaccineGroup'] as Map<String, dynamic>),
    vaccine: json['vaccine'] == null
        ? null
        : VaccineContraindications.fromJson(
            json['vaccine'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ContraindicationsToJson(
        _$_Contraindications instance) =>
    <String, dynamic>{
      'vaccineGroup': instance.vaccineGroup,
      'vaccine': instance.vaccine,
    };
