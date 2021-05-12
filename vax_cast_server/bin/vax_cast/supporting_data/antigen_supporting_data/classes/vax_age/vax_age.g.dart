// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vax_age.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaxAge _$_$_VaxAgeFromJson(Map<String, dynamic> json) {
  return _$_VaxAge(
    absMinAge: json['absMinAge'] as String?,
    minAge: json['minAge'] as String?,
    earliestRecAge: json['earliestRecAge'] as String?,
    latestRecAge: json['latestRecAge'] as String?,
    maxAge: json['maxAge'] as String?,
    effectiveDate: json['effectiveDate'] as String?,
    cessationDate: json['cessationDate'] as String?,
  );
}

Map<String, dynamic> _$_$_VaxAgeToJson(_$_VaxAge instance) => <String, dynamic>{
      'absMinAge': instance.absMinAge,
      'minAge': instance.minAge,
      'earliestRecAge': instance.earliestRecAge,
      'latestRecAge': instance.latestRecAge,
      'maxAge': instance.maxAge,
      'effectiveDate': instance.effectiveDate,
      'cessationDate': instance.cessationDate,
    };
