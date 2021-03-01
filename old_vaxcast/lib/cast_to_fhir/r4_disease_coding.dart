import 'package:fhir/fhir_r4.dart';

import '../export.dart';

var r4DiseaseCoding = {
  TargetDisease.cholera: [
    Coding(
        system: FhirUri("http://snomed.info/sct"),
        code: Code('63650001'),
        display: 'Cholera'),
  ],
  TargetDisease.diptheria: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('397428000'),
        display: 'Diphtheria'),
  ],
  TargetDisease.hepA: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('40468003'),
        display: 'Viral hepatitis, type A'),
  ],
  TargetDisease.hepB: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('66071002'),
        display: 'Type B viral hepatitis'),
  ],
  TargetDisease.hib: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('709410003'),
        display: 'Haemophilus influenzae type b infection'),
  ],
  TargetDisease.hpv: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('363354003'),
        display: 'Malignant tumour of cervix'),
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('266113007'),
        display: 'Genital warts'),
  ],
  TargetDisease.influenza: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('719590007'),
        display: 'Influenza caused by seasonal influenza virus'),
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('719865001'),
        display: 'Influenza caused by pandemic influenza virus'),
  ],
  TargetDisease.japaneseEncephalitis: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('52947006'),
        display: 'Japanese encephalitis virus disease'),
  ],
  TargetDisease.meningococcal: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('23511006'),
        display: 'Meningococcal infectious disease'),
  ],
  TargetDisease.meningococcalB: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('23511006'),
        display: 'Meningococcal infectious disease'),
  ],
  TargetDisease.measles: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('14189004'),
        display: 'Measles'),
  ],
  TargetDisease.mumps: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('36989005'),
        display: 'Mumps'),
  ],
  TargetDisease.pertussis: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('27836007'),
        display: 'Pertussis'),
  ],
  TargetDisease.pneumococcal: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('16814004'),
        display: 'Pneumococcal infectious disease'),
  ],
  TargetDisease.polio: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('721764008'),
        display: 'Infection caused by Human poliovirus'),
  ],
  TargetDisease.rabies: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('14168008'),
        display: 'Rabies'),
  ],
  TargetDisease.rotavirus: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('415822001'),
        display: 'Viral gastroenteritis due to Rotavirus'),
  ],
  TargetDisease.rubella: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('36653000'),
        display: 'Rubella'),
  ],
  TargetDisease.tetanus: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('76902006'),
        display: 'Tetanus'),
  ],
  TargetDisease.tuberculosis: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('56717001'),
        display: 'Tuberculosis'),
  ],
  TargetDisease.typhoid: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('4834000'),
        display: 'Typhoid fever'),
  ],
  TargetDisease.varicella: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('38907003'),
        display: 'Varicella'),
  ],
  TargetDisease.yellowFever: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('16541001'),
        display: 'Yellow fever'),
  ],
  TargetDisease.zoster: [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('4740000'),
        display: 'Herpes zoster'),
  ],
};
