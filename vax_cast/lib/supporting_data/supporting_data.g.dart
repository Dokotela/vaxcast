// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supporting_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupportingData _$$_SupportingDataFromJson(Map<String, dynamic> json) =>
    _$_SupportingData(
      antigenSupportingData: (json['antigenSupportingData'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : AntigenSupportingData.fromJson(e as Map<String, dynamic>))
          .toList(),
      scheduleSupportingData: json['scheduleSupportingData'] == null
          ? null
          : ScheduleSupportingData.fromJson(
              json['scheduleSupportingData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SupportingDataToJson(_$_SupportingData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('antigenSupportingData',
      instance.antigenSupportingData?.map((e) => e?.toJson()).toList());
  writeNotNull(
      'scheduleSupportingData', instance.scheduleSupportingData?.toJson());
  return val;
}
