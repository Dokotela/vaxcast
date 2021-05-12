// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_virus_conflicts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveVirusConflicts _$_$_LiveVirusConflictsFromJson(
    Map<String, dynamic> json) {
  return _$_LiveVirusConflicts(
    liveVirusConflict: (json['liveVirusConflict'] as List<dynamic>?)
        ?.map((e) => LiveVirusConflict.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_LiveVirusConflictsToJson(
        _$_LiveVirusConflicts instance) =>
    <String, dynamic>{
      'liveVirusConflict': instance.liveVirusConflict,
    };

_$_LiveVirusConflict _$_$_LiveVirusConflictFromJson(Map<String, dynamic> json) {
  return _$_LiveVirusConflict(
    previous: json['previous'] == null
        ? null
        : Vaccine.fromJson(json['previous'] as Map<String, dynamic>),
    current: json['current'] == null
        ? null
        : Vaccine.fromJson(json['current'] as Map<String, dynamic>),
    conflictBeginInterval: json['conflictBeginInterval'] as String?,
    minConflictEndInterval: json['minConflictEndInterval'] as String?,
    conflictEndInterval: json['conflictEndInterval'] as String?,
  );
}

Map<String, dynamic> _$_$_LiveVirusConflictToJson(
        _$_LiveVirusConflict instance) =>
    <String, dynamic>{
      'previous': instance.previous,
      'current': instance.current,
      'conflictBeginInterval': instance.conflictBeginInterval,
      'minConflictEndInterval': instance.minConflictEndInterval,
      'conflictEndInterval': instance.conflictEndInterval,
    };
