import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:vax_cast/supporting_data/export_supporting_data.dart';

part 'contraindications.freezed.dart';
part 'contraindications.g.dart';

@freezed
abstract class Contraindications with _$Contraindications {
  factory Contraindications({
    VaccineGroupContraindications vaccineGroup,
    VaccineContraindications vaccine,
  }) = _Contraindications;

  factory Contraindications.fromJson(Map<String, dynamic> json) =>
      _$ContraindicationsFromJson(json);
}
