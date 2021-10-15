import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enums/equivalent_series_groups_enum.dart';
import '../../../enums/gender_enum.dart';
import '../../../enums/series_type_enum.dart';
import '../../../enums/target_disease_enum.dart';
import '../../../enums/vaccine_group_name_enum.dart';
import '../indication/indication.dart';
import '../select_series/select_series.dart';
import '../series_dose/series_dose.dart';

part 'series.freezed.dart';
part 'series.g.dart';

@freezed
class Series with _$Series {
  Series._();
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
