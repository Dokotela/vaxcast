import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enums/obs_code_enum.dart';

part 'vaccine_group_contraindications.freezed.dart';
part 'vaccine_group_contraindications.g.dart';

@freezed
class VaccineGroupContraindications with _$VaccineGroupContraindications {
  VaccineGroupContraindications._();
  factory VaccineGroupContraindications({
    List<GroupContraindication>? contraindication,
  }) = _VaccineGroupContraindications;

  factory VaccineGroupContraindications.fromJson(Map<String, dynamic> json) =>
      _$VaccineGroupContraindicationsFromJson(json);
}

@freezed
class GroupContraindication with _$GroupContraindication {
  GroupContraindication._();
  factory GroupContraindication({
    Obs? observationCode,
    String? observationTitle,
    String? contraindicationText,
    String? contraindicationGuidance,
    String? beginAge,
    String? endAge,
  }) = _GroupContraindication;

  factory GroupContraindication.fromJson(Map<String, dynamic> json) =>
      _$GroupContraindicationFromJson(json);
}
