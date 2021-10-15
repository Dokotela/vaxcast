import 'package:json_annotation/json_annotation.dart';

/// ToDo: Add New TargetDiseases Here

enum TargetDisease {
  @JsonValue('Cholera')
  cholera,
  @JsonValue('COVID-19')
  covid_19,
  @JsonValue('Diphtheria')
  diptheria,
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
  @JsonValue('Tuberculosis')
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

const targetDiseaseStringToEnum = {
  'Cholera': TargetDisease.cholera,
  'COVID-19': TargetDisease.covid_19,
  'Diphtheria': TargetDisease.diptheria,
  'Ebola': TargetDisease.ebola,
  'HepA': TargetDisease.hepA,
  'HepB': TargetDisease.hepB,
  'Hib': TargetDisease.hib,
  'HPV': TargetDisease.hpv,
  'Influenza': TargetDisease.influenza,
  'Japanese Encephalitis': TargetDisease.japaneseEncephalitis,
  'Meningococcal': TargetDisease.meningococcal,
  'Meningococcal B': TargetDisease.meningococcalB,
  'Measles': TargetDisease.measles,
  'Mumps': TargetDisease.mumps,
  'Pertussis': TargetDisease.pertussis,
  'Pneumococcal': TargetDisease.pneumococcal,
  'Polio': TargetDisease.polio,
  'Rabies': TargetDisease.rabies,
  'Rotavirus': TargetDisease.rotavirus,
  'Rubella': TargetDisease.rubella,
  'Tetanus': TargetDisease.tetanus,
  'Tuberculosis': TargetDisease.tuberculosis,
  'Typhoid': TargetDisease.typhoid,
  'Varicella': TargetDisease.varicella,
  'Yellow Fever': TargetDisease.yellowFever,
  'Zoster': TargetDisease.zoster,
};

const targetDiseaseEnumToString = {
  TargetDisease.cholera: 'Cholera',
  TargetDisease.covid_19: 'COVID-19',
  TargetDisease.diptheria: 'Diphtheria',
  TargetDisease.ebola: 'Ebola',
  TargetDisease.hepA: 'HepA',
  TargetDisease.hepB: 'HepB',
  TargetDisease.hib: 'Hib',
  TargetDisease.hpv: 'HPV',
  TargetDisease.influenza: 'Influenza',
  TargetDisease.japaneseEncephalitis: 'Japanese Encephalitis',
  TargetDisease.meningococcal: 'Meningococcal',
  TargetDisease.meningococcalB: 'Meningococcal B',
  TargetDisease.measles: 'Measles',
  TargetDisease.mumps: 'Mumps',
  TargetDisease.pertussis: 'Pertussis',
  TargetDisease.pneumococcal: 'Pneumococcal',
  TargetDisease.polio: 'Polio',
  TargetDisease.rabies: 'Rabies',
  TargetDisease.rotavirus: 'Rotavirus',
  TargetDisease.rubella: 'Rubella',
  TargetDisease.tetanus: 'Tetanus',
  TargetDisease.tuberculosis: 'Tuberculosis',
  TargetDisease.typhoid: 'Typhoid',
  TargetDisease.varicella: 'Varicella',
  TargetDisease.yellowFever: 'Yellow Fever',
  TargetDisease.zoster: 'Zoster',
};
