import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vaxcast/supporting_data/export_supporting_data.dart';

part 'antigen_supporting_data.freezed.dart';
part 'antigen_supporting_data.g.dart';

@freezed
class AntigenSupportingData with _$AntigenSupportingData {
  factory AntigenSupportingData({
    TargetDisease? targetDisease,
    VaccineGroupName? vaccineGroup,
    Immunity? immunity,
    Contraindications? contraindications,
    List<Series>? series,
  }) = _AntigenSupportingData;

  factory AntigenSupportingData.fromJson(Map<String, dynamic> json) =>
      _$AntigenSupportingDataFromJson(json);
}
