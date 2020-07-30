import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:vax_cast/supporting_data/export_supporting_data.dart';

part 'select_series.freezed.dart';
part 'select_series.g.dart';

@freezed
abstract class SelectSeries with _$SelectSeries {
  factory SelectSeries({
    Binary defaultSeries,
    Binary productPath,
    SeriesGroupName seriesGroupName,
    SeriesGroup seriesGroup,
    SeriesPriority seriesPriority,
    SeriesPreference seriesPreference,
    String minAgeToStart,
    String maxAgeToStart,
  }) = _SelectSeries;

  factory SelectSeries.fromJson(Map<String, dynamic> json) =>
      _$SelectSeriesFromJson(json);
}
