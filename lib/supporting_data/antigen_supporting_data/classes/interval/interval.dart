import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:vax_cast/supporting_data/export_supporting_data.dart';

part 'interval.freezed.dart';
part 'interval.g.dart';

@freezed
abstract class Interval with _$Interval {
  factory Interval({
    FromPrevious fromPrevious,
    FromTarget fromTargetDose,
    String fromMostRecent,
    ObservationCode fromRelevantObs,
    String absMinInt,
    String minInt,
    String earliestRecInt,
    String latestRecInt,
    String intervalPriority,
    String effectiveDate,
    String cessationDate,
  }) = _Interval;

  factory Interval.fromJson(Map<String, dynamic> json) =>
      _$IntervalFromJson(json);
}
