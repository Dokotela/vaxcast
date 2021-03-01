// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_supporting_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleSupportingData _$_$_ScheduleSupportingDataFromJson(
    Map<String, dynamic> json) {
  return _$_ScheduleSupportingData(
    liveVirusConflicts: json['liveVirusConflicts'] == null
        ? null
        : LiveVirusConflicts.fromJson(
            json['liveVirusConflicts'] as Map<String, dynamic>),
    vaccineGroups: json['vaccineGroups'] == null
        ? null
        : VaccineGroups.fromJson(json['vaccineGroups'] as Map<String, dynamic>),
    vaccineGroupToAntigenMap: json['vaccineGroupToAntigenMap'] == null
        ? null
        : VaccineGroupToAntigenMap.fromJson(
            json['vaccineGroupToAntigenMap'] as Map<String, dynamic>),
    cvxToAntigenMap: json['cvxToAntigenMap'] == null
        ? null
        : CvxToAntigenMap.fromJson(
            json['cvxToAntigenMap'] as Map<String, dynamic>),
    observations: json['observations'] == null
        ? null
        : Observations.fromJson(json['observations'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ScheduleSupportingDataToJson(
        _$_ScheduleSupportingData instance) =>
    <String, dynamic>{
      'liveVirusConflicts': instance.liveVirusConflicts,
      'vaccineGroups': instance.vaccineGroups,
      'vaccineGroupToAntigenMap': instance.vaccineGroupToAntigenMap,
      'cvxToAntigenMap': instance.cvxToAntigenMap,
      'observations': instance.observations,
    };
