import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../vax_cast.dart';

part 'vaccine_groups.freezed.dart';
part 'vaccine_groups.g.dart';

@freezed
abstract class VaccineGroups with _$VaccineGroups {
  factory VaccineGroups({
    List<VaccineGroup> vaccineGroup,
  }) = _VaccineGroups;

  factory VaccineGroups.fromJson(Map<String, dynamic> json) =>
      _$VaccineGroupsFromJson(json);
}

@freezed
abstract class VaccineGroup with _$VaccineGroup {
  factory VaccineGroup({
    VaccineGroupName name,
    Binary administerFullVaccineGroup,
  }) = _VaccineGroup;

  factory VaccineGroup.fromJson(Map<String, dynamic> json) =>
      _$VaccineGroupFromJson(json);
}
