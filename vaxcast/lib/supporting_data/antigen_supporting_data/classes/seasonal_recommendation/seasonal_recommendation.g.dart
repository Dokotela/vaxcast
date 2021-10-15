// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seasonal_recommendation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeasonalRecommendation _$$_SeasonalRecommendationFromJson(
        Map<String, dynamic> json) =>
    _$_SeasonalRecommendation(
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
    );

Map<String, dynamic> _$$_SeasonalRecommendationToJson(
    _$_SeasonalRecommendation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('startDate', instance.startDate);
  writeNotNull('endDate', instance.endDate);
  return val;
}
