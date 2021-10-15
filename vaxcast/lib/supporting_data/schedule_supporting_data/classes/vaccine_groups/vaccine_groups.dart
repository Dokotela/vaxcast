import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../vaxcast.dart';

part 'vaccine_groups.freezed.dart';
part 'vaccine_groups.g.dart';

@freezed
class VaccineGroups with _$VaccineGroups {
  VaccineGroups._();
  factory VaccineGroups({
    List<VaccineGroup>? vaccineGroup,
  }) = _VaccineGroups;

  factory VaccineGroups.fromJson(Map<String, dynamic> json) =>
      _$VaccineGroupsFromJson(json);
}

@freezed
class VaccineGroup with _$VaccineGroup {
  VaccineGroup._();
  factory VaccineGroup({
    VaccineGroupName? name,
    Binary? administerFullVaccineGroup,
  }) = _VaccineGroup;

  factory VaccineGroup.fromJson(Map<String, dynamic> json) =>
      _$VaccineGroupFromJson(json);
}
