import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../vax_cast.dart';

part 'series.freezed.dart';
part 'series.g.dart';

@freezed
class Series with _$Series {
  factory Series({
    String? seriesName,
    TargetDisease? targetDisease,
    VaccineGroupName? vaccineGroup,
    List<String>? seriesAdminGuidance,
    SeriesType? seriesType,
    EquivalentSeriesGroups? equivalentSeriesGroups,
    List<Gender>? requiredGender,
    SelectSeries? selectSeries,
    List<Indication>? indication,
    List<SeriesDose>? seriesDose,
  }) = _Series;

  factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);
}
