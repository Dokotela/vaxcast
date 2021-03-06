import 'package:freezed_annotation/freezed_annotation.dart';

import 'export_schedule_supporting_data.dart';

part 'schedule_supporting_data.freezed.dart';
part 'schedule_supporting_data.g.dart';

@freezed
class ScheduleSupportingData with _$ScheduleSupportingData {
  factory ScheduleSupportingData({
    LiveVirusConflicts? liveVirusConflicts,
    VaccineGroups? vaccineGroups,
    VaccineGroupToAntigenMap? vaccineGroupToAntigenMap,
    CvxToAntigenMap? cvxToAntigenMap,
    Observations? observations,
  }) = _ScheduleSupportingData;

  factory ScheduleSupportingData.fromJson(Map<String, dynamic> json) =>
      _$ScheduleSupportingDataFromJson(json);
}
