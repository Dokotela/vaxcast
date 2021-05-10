import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../vax_cast.dart';

part 'select_series.freezed.dart';
part 'select_series.g.dart';

@freezed
class SelectSeries with _$SelectSeries {
  factory SelectSeries({
    Binary? defaultSeries,
    Binary? productPath,
    SeriesGroupName? seriesGroupName,
    SeriesGroup? seriesGroup,
    SeriesPriority? seriesPriority,
    SeriesPreference? seriesPreference,
    String? minAgeToStart,
    String? maxAgeToStart,
  }) = _SelectSeries;

  factory SelectSeries.fromJson(Map<String, dynamic> json) =>
      _$SelectSeriesFromJson(json);
}
