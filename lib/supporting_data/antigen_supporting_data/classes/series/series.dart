import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_cast/supporting_data/supporting_data_enums/equivalent_series_groups_enum.dart';

import 'package:vax_cast/supporting_data/export_supporting_data.dart';

part 'series.freezed.dart';
part 'series.g.dart';

@freezed
abstract class Series with _$Series {
  factory Series({
    String seriesName,
    TargetDisease targetDisease,
    VaccineGroupName vaccineGroup,
    List<String> seriesAdminGuidance,
    SeriesType seriesType,
    EquivalentSeriesGroups equivalentSeriesGroups,
    List<Gender> requiredGender,
    SelectSeries selectSeries,
    List<Indication> indication,
    List<SeriesDose> seriesDose,
  }) = _Series;

  factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);
}
