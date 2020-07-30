import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:vax_cast/supporting_data/export_supporting_data.dart';

part 'vaccine_group_contraindications.freezed.dart';
part 'vaccine_group_contraindications.g.dart';

@freezed
abstract class VaccineGroupContraindications
    with _$VaccineGroupContraindications {
  factory VaccineGroupContraindications({
    List<GroupContraindication> contraindication,
  }) = _VaccineGroupContraindications;

  factory VaccineGroupContraindications.fromJson(Map<String, dynamic> json) =>
      _$VaccineGroupContraindicationsFromJson(json);
}

@freezed
abstract class GroupContraindication with _$GroupContraindication {
  factory GroupContraindication({
    Obs observationCode,
    String observationTitle,
    String contraindicationText,
    String contraindicationGuidance,
    String beginAge,
    String endAge,
  }) = _GroupContraindication;

  factory GroupContraindication.fromJson(Map<String, dynamic> json) =>
      _$GroupContraindicationFromJson(json);
}
