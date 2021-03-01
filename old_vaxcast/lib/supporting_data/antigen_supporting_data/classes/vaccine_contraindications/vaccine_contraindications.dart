import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:vax_cast/supporting_data/export_supporting_data.dart';

part 'vaccine_contraindications.freezed.dart';
part 'vaccine_contraindications.g.dart';

@freezed
abstract class VaccineContraindications with _$VaccineContraindications {
  factory VaccineContraindications({
    List<VaccineContraindication> contraindication,
  }) = _VaccineContraindications;

  factory VaccineContraindications.fromJson(Map<String, dynamic> json) =>
      _$VaccineContraindicationsFromJson(json);
}

@freezed
abstract class VaccineContraindication with _$VaccineContraindication {
  factory VaccineContraindication({
    Obs observationCode,
    String observationTitle,
    String contraindicationText,
    String contraindicationGuidance,
    List<Vaccine> contraindicatedVaccine,
  }) = _VaccineContraindication;

  factory VaccineContraindication.fromJson(Map<String, dynamic> json) =>
      _$VaccineContraindicationFromJson(json);
}
