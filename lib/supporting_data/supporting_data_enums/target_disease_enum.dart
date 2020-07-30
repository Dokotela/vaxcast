import 'package:json_annotation/json_annotation.dart';

enum TargetDisease {
  @JsonValue('Cholera')
  cholera,
  @JsonValue('Diphtheria')
  diptheria,
  @JsonValue('HepA')
  hepA,
  @JsonValue('HepB')
  hepB,
  @JsonValue('Hib')
  hib,
  @JsonValue('HPV')
  hpv,
  @JsonValue('Influenza')
  influenza,
  @JsonValue('Japanese Encephalitis')
  japaneseEncephalitis,
  @JsonValue('Meningococcal')
  meningococcal,
  @JsonValue('Meningococcal B')
  meningococcalB,
  @JsonValue('Measles')
  measles,
  @JsonValue('Mumps')
  mumps,
  @JsonValue('Pertussis')
  pertussis,
  @JsonValue('Pneumococcal')
  pneumococcal,
  @JsonValue('Polio')
  polio,
  @JsonValue('Rabies')
  rabies,
  @JsonValue('Rotavirus')
  rotavirus,
  @JsonValue('Rubella')
  rubella,
  @JsonValue('Tetanus')
  tetanus,
  @JsonValue('tuberculosis')
  tuberculosis,
  @JsonValue('Typhoid')
  typhoid,
  @JsonValue('Varicella')
  varicella,
  @JsonValue('Yellow Fever')
  yellowFever,
  @JsonValue('Zoster')
  zoster,
}
