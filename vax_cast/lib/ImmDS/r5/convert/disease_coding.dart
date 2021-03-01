import 'package:fhir/r5.dart';

List<Coding> getDiseaseCoding(String disease) {
  switch (disease) {
    case 'DTAP':
      return [
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('397428000'),
          display: 'Diphteria',
        ),
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('76902006'),
          display: 'Tetanus',
        ),
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('27836007'),
          display: 'Pertussis',
        ),
      ];
    case 'FLU':
      return [
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('719590007'),
          display: 'Influenza caused by seasonal influenza virus',
        ),
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('719865001'),
          display: 'Influenza caused by pandemic influenza virus',
        ),
      ];
    case 'HepA':
      return [
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('40468003'),
          display: 'Viral hepatitis, type A',
        ),
      ];
    case 'HepB':
      return [
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('66071002'),
          display: 'Type B viral hepatitis',
        ),
      ];
    case 'HIB':
      return [
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('709410003'),
          display: 'Haemophilus influenzae type b infection',
        ),
      ];
    case 'HPV':
      return [
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('363354003'),
          display: 'Malignant tumour of cervix',
        ),
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('266113007'),
          display: 'Genital warts',
        ),
      ];
    case 'MCV':
      return [
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('23511006'),
          display: 'Meningococcal infectious disease',
        ),
      ];
    case 'MMR':
      return [
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('14189004'),
          display: 'Measles',
        ),
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('36989005'),
          display: 'Mumps',
        ),
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('36653000'),
          display: 'Rubella',
        ),
      ];
    case 'PCV':
      return [
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('16814004'),
          display: 'Pneumococcal infectious disease',
        ),
      ];
    case 'POL':
      return [
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('721764008'),
          display: 'Infection caused by Human poliovirus',
        ),
      ];
    case 'ROTA':
      return [
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('415822001'),
          display: 'Viral gastroenteritis due to Rotavirus',
        ),
      ];
    case 'VAR':
      return [
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('38907003'),
          display: 'Varicella',
        ),
      ];
    case 'ZOSTER':
      return [
        Coding(
          system: FhirUri('http://www.snomed.org/sct'),
          code: Code('4740000	'),
          display: 'Herpes zoster',
        ),
      ];
    default:
      return null;
  }
}
