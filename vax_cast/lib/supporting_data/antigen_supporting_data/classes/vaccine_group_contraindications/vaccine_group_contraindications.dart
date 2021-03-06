import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../supporting_data_enums/obs_code_enum.dart';

part 'vaccine_group_contraindications.freezed.dart';
part 'vaccine_group_contraindications.g.dart';

@freezed
class VaccineGroupContraindications with _$VaccineGroupContraindications {
  factory VaccineGroupContraindications({
    List<GroupContraindication>? contraindication,
  }) = _VaccineGroupContraindications;

  factory VaccineGroupContraindications.fromJson(Map<String, dynamic> json) =>
      _$VaccineGroupContraindicationsFromJson(json);
}

@freezed
class GroupContraindication with _$GroupContraindication {
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
