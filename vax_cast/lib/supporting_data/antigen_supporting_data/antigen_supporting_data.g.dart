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
    series: (json['series'] as List<dynamic>?)
        ?.map((e) => Series.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_AntigenSupportingDataToJson(
    _$_AntigenSupportingData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('immunity', instance.immunity?.toJson());
  writeNotNull('contraindications', instance.contraindications?.toJson());
  writeNotNull('series', instance.series?.map((e) => e.toJson()).toList());
  return val;
}
