import 'package:fhir/dstu2.dart';

var dstu2DiseaseCoding = {
  'Cholera': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri("http://snomed.info/sct"),
          code: Code('63650001'),
          display: 'Cholera'),
    ],
  ),
  'Diphtheria': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('276197005'),
          display: 'Infection caused by Corynebacterium diphtheriae'),
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('1086051000119107'),
          display: 'Cardiomyopathy due to diphtheria'),
    ],
  ),
  'HepA': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('40468003'),
          display: 'Viral hepatitis, type A'),
    ],
  ),
  'HepB': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('66071002'),
          display: 'Viral hepatitis type B'),
    ],
  ),
  'Hib': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('91428005'),
          display: 'Haemophilus influenzae infection'),
    ],
  ),
  'HPV': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('240532009'),
          display: 'Human papillomavirus infection'),
    ],
  ),
  'Influenza': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('442438000'),
          display: 'Influenza caused by Influenza A virus'),
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('24662006'),
          display: 'Influenza caused by Influenza B virus'),
    ],
  ),
  'Japanese Encephalitis': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('52947006'),
          display: 'Japanese encephalitis virus disease'),
    ],
  ),
  'Meningoccal': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('23511006'),
          display: 'Meningococcal infectious disease'),
    ],
  ),
  'Meningoccocal B': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('23511006'),
          display: 'Meningococcal infectious disease'),
    ],
  ),
  'Measles': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('14189004'),
          display: 'Measles'),
    ],
  ),
  'Mumps': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('36989005'),
          display: 'Mumps'),
    ],
  ),
  'Pertussis': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('27836007'),
          display: 'Pertussis'),
    ],
  ),
  'Pneumoccocal': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('16814004'),
          display: 'Pneumococcal infectious disease'),
    ],
  ),
  'Polio': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('721764008'),
          display: 'Infection caused by Human poliovirus'),
    ],
  ),
  'Rabies': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('14168008'),
          display: 'Rabies'),
    ],
  ),
  'Rotavirus': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('18624000'),
          display: 'Disease caused by Rotavirus'),
    ],
  ),
  'Rubella': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('36653000'),
          display: 'Rubella'),
    ],
  ),
  'Tetanus': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('76902006'),
          display: 'Tetanus'),
    ],
  ),
  'Tuberculosis': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('56717001'),
          display: 'Tuberculosis'),
    ],
  ),
  'Typhoid': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('4834000'),
          display: 'Typhoid fever'),
    ],
  ),
  'Varicella': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('309465005'),
          display: 'Varicella-zoster virus infection'),
    ],
  ),
  'Yellow Fever': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('16541001'),
          display: 'Yellow fever'),
    ],
  ),
  'Zoster': CodeableConcept(
    coding: [
      Coding(
          system: FhirUri('http//snomed.info/sct'),
          code: Code('309465005'),
          display: 'Varicella-zoster virus infection'),
    ],
  ),
};
