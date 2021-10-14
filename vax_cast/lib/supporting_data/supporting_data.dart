import 'package:freezed_annotation/freezed_annotation.dart';

import 'antigen_supporting_data/antigen_supporting_data.dart';
import 'schedule_supporting_data/schedule_supporting_data.dart';

@freezed
class SupportingData with _$SupportingData {
  SupportingData._();
  factory SupportingData({
    List<AntigenSupportingData?>? antigenSupportingData,
    ScheduleSupportingData? scheduleSupportingData,
  }) = _SupportingData;

  factory SupportingData.fromJson(Map<String, dynamic> json) =>
      _$SupportingDataFromJson(json);

  factory SupportinData.fromFile() {}
}
