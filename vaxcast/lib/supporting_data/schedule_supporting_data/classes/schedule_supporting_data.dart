import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vaxcast/supporting_data/schedule_supporting_data/classes/classes.dart';

part 'schedule_supporting_data.freezed.dart';
part 'schedule_supporting_data.g.dart';

@freezed
class ScheduleSupportingData with _$ScheduleSupportingData {
  ScheduleSupportingData._();
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
