import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../vaxcast.dart';

part 'vaccine_group_to_antigen_map.freezed.dart';
part 'vaccine_group_to_antigen_map.g.dart';

@freezed
class VaccineGroupToAntigenMap with _$VaccineGroupToAntigenMap {
  factory VaccineGroupToAntigenMap({
    List<VaccineGroupMap>? vaccineGroupMap,
  }) = _VaccineGroupToAntigenMap;

  factory VaccineGroupToAntigenMap.fromJson(Map<String, dynamic> json) =>
      _$VaccineGroupToAntigenMapFromJson(json);
}

@freezed
class VaccineGroupMap with _$VaccineGroupMap {
  factory VaccineGroupMap({
    VaccineGroupName? name,
    List<TargetDisease>? antigen,
  }) = _VaccineGroupMap;

  factory VaccineGroupMap.fromJson(Map<String, dynamic> json) =>
      _$VaccineGroupMapFromJson(json);
}
