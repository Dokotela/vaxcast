// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_of_birth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DateOfBirth _$_$_DateOfBirthFromJson(Map<String, dynamic> json) {
  return _$_DateOfBirth(
    immunityBirthDate: json['immunityBirthDate'] as String,
    birthCountry: json['birthCountry'] as String,
    exclusion: (json['exclusion'] as List)
        ?.map((e) =>
            e == null ? null : Exclusion.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DateOfBirthToJson(_$_DateOfBirth instance) =>
    <String, dynamic>{
      'immunityBirthDate': instance.immunityBirthDate,
      'birthCountry': instance.birthCountry,
      'exclusion': instance.exclusion,
    };
