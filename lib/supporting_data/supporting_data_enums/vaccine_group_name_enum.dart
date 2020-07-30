import 'package:freezed_annotation/freezed_annotation.dart';

enum VaccineGroupName {
  @JsonValue('Cholera')
  cholera,
  @JsonValue('DTaP/Tdap/Td')
  dtap_tdap_td,
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
  @JsonValue('MMR')
  mmr,
  @JsonValue('Pneumococcal')
  pneumococcal,
  @JsonValue('Polio')
  polio,
  @JsonValue('Rabies')
  rabies,
  @JsonValue('Rotavirus')
  rotavirus,
  @JsonValue('Typhoid')
  typhoid,
  @JsonValue('Varicella')
  varicella,
  @JsonValue('Yellow Fever')
  yellowFever,
  @JsonValue('Zoster')
  zoster,
}
