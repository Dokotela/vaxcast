import 'package:freezed_annotation/freezed_annotation.dart';

/// ToDo: Add New Vaccine Groups Here
enum VaccineGroupName {
  @JsonValue('Cholera')
  cholera,
  @JsonValue('COVID-19')
  covid_19,
  @JsonValue('DTaP/Tdap/Td')
  dtap_tdap_td,
  @JsonValue('Ebola')
  ebola,
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

const vaccineGroupNameStringToEnum = {
  'Cholera': VaccineGroupName.cholera,
  'COVID-19': VaccineGroupName.covid_19,
  'DTaP/Tdap/Td': VaccineGroupName.dtap_tdap_td,
  'Ebola': VaccineGroupName.ebola,
  'HepA': VaccineGroupName.hepA,
  'HepB': VaccineGroupName.hepB,
  'Hib': VaccineGroupName.hib,
  'HPV': VaccineGroupName.hpv,
  'Influenza': VaccineGroupName.influenza,
  'Japanese Encephalitis': VaccineGroupName.japaneseEncephalitis,
  'Meningococcal': VaccineGroupName.meningococcal,
  'Meningococcal B': VaccineGroupName.meningococcalB,
  'MMR': VaccineGroupName.mmr,
  'Pneumococcal': VaccineGroupName.pneumococcal,
  'Polio': VaccineGroupName.polio,
  'Rabies': VaccineGroupName.rabies,
  'Rotavirus': VaccineGroupName.rotavirus,
  'Typhoid': VaccineGroupName.typhoid,
  'Varicella': VaccineGroupName.varicella,
  'Yellow Fever': VaccineGroupName.yellowFever,
  'Zoster': VaccineGroupName.zoster,
};

const vaccineGroupNameEnumToString = {
  VaccineGroupName.cholera: 'Cholera',
  VaccineGroupName.covid_19: 'COVID-19',
  VaccineGroupName.dtap_tdap_td: 'DTaP/Tdap/Td',
  VaccineGroupName.ebola: 'Ebola',
  VaccineGroupName.hepA: 'HepA',
  VaccineGroupName.hepB: 'HepB',
  VaccineGroupName.hib: 'Hib',
  VaccineGroupName.hpv: 'HPV',
  VaccineGroupName.influenza: 'Influenza',
  VaccineGroupName.japaneseEncephalitis: 'Japanese Encephalitis',
  VaccineGroupName.meningococcal: 'Meningococcal',
  VaccineGroupName.meningococcalB: 'Meningococcal B',
  VaccineGroupName.mmr: 'MMR',
  VaccineGroupName.pneumococcal: 'Pneumococcal',
  VaccineGroupName.polio: 'Polio',
  VaccineGroupName.rabies: 'Rabies',
  VaccineGroupName.rotavirus: 'Rotavirus',
  VaccineGroupName.typhoid: 'Typhoid',
  VaccineGroupName.varicella: 'Varicella',
  VaccineGroupName.yellowFever: 'Yellow Fever',
  VaccineGroupName.zoster: 'Zoster',
};
