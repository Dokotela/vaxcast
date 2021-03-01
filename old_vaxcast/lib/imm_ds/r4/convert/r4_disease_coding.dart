import 'package:fhir/fhir_r4.dart';

var r4DiseaseCoding = {
  'Cholera': [
    Coding(
        system: FhirUri("http://snomed.info/sct"),
        code: Code('63650001'),
        display: 'Cholera'),
  ],
  'HepA': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('40468003'),
        display: 'Viral hepatitis, type A'),
  ],
  'HepB': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('66071002'),
        display: 'Type B viral hepatitis'),
  ],
  'Hib': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('709410003'),
        display: 'Haemophilus influenzae type b infection'),
  ],
  'HPV': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('363354003'),
        display: 'Malignant tumour of cervix'),
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('266113007'),
        display: 'Genital warts'),
  ],
  'Influenza': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('719590007'),
        display: 'Influenza caused by seasonal influenza virus'),
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('719865001'),
        display: 'Influenza caused by pandemic influenza virus'),
  ],
  'Japanese Encephalitis': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('52947006'),
        display: 'Japanese encephalitis virus disease'),
  ],
  'Meningoccal': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('23511006'),
        display: 'Meningococcal infectious disease'),
  ],
  'Meningoccocal B': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('23511006'),
        display: 'Meningococcal infectious disease'),
  ],
  'MMR': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('14189004'),
        display: 'Measles'),
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('36989005'),
        display: 'Mumps'),
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('36653000'),
        display: 'Rubella'),
  ],
  'DTAP': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('397428000'),
        display: 'Diphtheria'),
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('27836007'),
        display: 'Pertussis'),
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('76902006'),
        display: 'Tetanus'),
  ],
  'Pneumoccocal': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('16814004'),
        display: 'Pneumococcal infectious disease'),
  ],
  'Polio': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('721764008'),
        display: 'Infection caused by Human poliovirus'),
  ],
  'Rabies': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('14168008'),
        display: 'Rabies'),
  ],
  'Rotavirus': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('415822001'),
        display: 'Viral gastroenteritis due to Rotavirus'),
  ],
  'Tuberculosis': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('56717001'),
        display: 'Tuberculosis'),
  ],
  'Typhoid': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('4834000'),
        display: 'Typhoid fever'),
  ],
  'Varicella': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('38907003'),
        display: 'Varicella'),
  ],
  'Yellow Fever': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('16541001'),
        display: 'Yellow fever'),
  ],
  'Zoster': [
    Coding(
        system: FhirUri('http//snomed.info/sct'),
        code: Code('4740000'),
        display: 'Herpes zoster'),
  ],
};
