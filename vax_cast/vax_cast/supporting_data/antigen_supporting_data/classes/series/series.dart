import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../supporting_data_enums/equivalent_series_groups_enum.dart';
import '../../../supporting_data_enums/gender_enum.dart';
import '../../../supporting_data_enums/series_type_enum.dart';
import '../../../supporting_data_enums/target_disease_enum.dart';
import '../../../supporting_data_enums/vaccine_group_name_enum.dart';
import '../indication/indication.dart';
import '../select_series/select_series.dart';
import '../series_dose/series_dose.dart';

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
