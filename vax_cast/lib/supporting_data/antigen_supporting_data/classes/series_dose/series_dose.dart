import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../supporting_data_enums/binary_enum.dart';
import '../../../supporting_data_enums/dose_number_enum.dart';
import '../conditional_skip/conditional_skip.dart';
import '../interval/interval.dart';
import '../seasonal_recommendation/seasonal_recommendation.dart';
import '../vaccine/vaccine.dart';
import '../vax_age/vax_age.dart';

part 'series_dose.freezed.dart';
part 'series_dose.g.dart';

@freezed
class SeriesDose with _$SeriesDose {
  factory SeriesDose({
    DoseNumber? doseNumber,
    VaxAge? age,
    List<Interval>? interval,
    Interval? allowableInterval,
    List<Vaccine>? preferableVaccine,
    List<Vaccine>? allowableVaccine,
    List<Vaccine>? inadvertentVaccine,
    List<ConditionalSkip>? conditionalSkip,
    Binary? recurringDose,
    SeasonalRecommendation? seasonalRecommendation,
  }) = _SeriesDose;

  factory SeriesDose.fromJson(Map<String, dynamic> json) =>
      _$SeriesDoseFromJson(json);
}
