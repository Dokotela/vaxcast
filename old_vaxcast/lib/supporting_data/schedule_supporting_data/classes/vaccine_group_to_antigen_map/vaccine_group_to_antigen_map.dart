import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_cast/supporting_data/export_supporting_data.dart';

part 'vaccine_group_to_antigen_map.freezed.dart';
part 'vaccine_group_to_antigen_map.g.dart';

@freezed
abstract class VaccineGroupToAntigenMap with _$VaccineGroupToAntigenMap {
  factory VaccineGroupToAntigenMap({
    List<VaccineGroupMap> vaccineGroupMap,
  }) = _VaccineGroupToAntigenMap;

  factory VaccineGroupToAntigenMap.fromJson(Map<String, dynamic> json) =>
      _$VaccineGroupToAntigenMapFromJson(json);
}

@freezed
abstract class VaccineGroupMap with _$VaccineGroupMap {
  factory VaccineGroupMap({
    VaccineGroupName name,
    List<TargetDisease> antigen,
  }) = _VaccineGroupMap;

  factory VaccineGroupMap.fromJson(Map<String, dynamic> json) =>
      _$VaccineGroupMapFromJson(json);
}
