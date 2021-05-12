import 'package:freezed_annotation/freezed_annotation.dart';

import 'classes/contraindications/contraindications.dart';
import 'classes/immunity/immunity.dart';
import 'classes/series/series.dart';

part 'antigen_supporting_data.freezed.dart';
part 'antigen_supporting_data.g.dart';

@freezed
class AntigenSupportingData with _$AntigenSupportingData {
  factory AntigenSupportingData({
    Immunity? immunity,
    Contraindications? contraindications,
    List<Series>? series,
  }) = _AntigenSupportingData;

  factory AntigenSupportingData.fromJson(Map<String, dynamic> json) =>
      _$AntigenSupportingDataFromJson(json);
}
