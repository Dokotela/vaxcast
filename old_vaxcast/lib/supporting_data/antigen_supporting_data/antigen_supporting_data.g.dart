// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'antigen_supporting_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AntigenSupportingData _$_$_AntigenSupportingDataFromJson(
    Map<String, dynamic> json) {
  return _$_AntigenSupportingData(
    immunity: json['immunity'] == null
        ? null
        : Immunity.fromJson(json['immunity'] as Map<String, dynamic>),
    contraindications: json['contraindications'] == null
        ? null
        : Contraindications.fromJson(
            json['contraindications'] as Map<String, dynamic>),
    series: (json['series'] as List)
        ?.map((e) =>
            e == null ? null : Series.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_AntigenSupportingDataToJson(
        _$_AntigenSupportingData instance) =>
    <String, dynamic>{
      'immunity': instance.immunity,
      'contraindications': instance.contraindications,
      'series': instance.series,
    };
