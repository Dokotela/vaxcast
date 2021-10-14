import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enums/binary_enum.dart';
import '../../../enums/series_group_enum.dart';
import '../../../enums/series_group_name_enum.dart';
import '../../../enums/series_preference_enum.dart';
import '../../../enums/series_priority_enum.dart';

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
