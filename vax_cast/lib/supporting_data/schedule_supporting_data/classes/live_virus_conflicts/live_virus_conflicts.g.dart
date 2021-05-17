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
    _$_LiveVirusConflicts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('liveVirusConflict',
      instance.liveVirusConflict?.map((e) => e.toJson()).toList());
  return val;
}

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
    _$_LiveVirusConflict instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('previous', instance.previous?.toJson());
  writeNotNull('current', instance.current?.toJson());
  writeNotNull('conflictBeginInterval', instance.conflictBeginInterval);
  writeNotNull('minConflictEndInterval', instance.minConflictEndInterval);
  writeNotNull('conflictEndInterval', instance.conflictEndInterval);
  return val;
}
