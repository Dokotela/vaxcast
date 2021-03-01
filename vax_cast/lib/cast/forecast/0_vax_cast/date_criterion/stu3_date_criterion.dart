import 'package:fhir/stu3.dart';

import '../../../vax_cast.dart';

List<ImmunizationRecommendationDateCriterion> getStu3DateCriterion(
  VaxDate earliest,
  VaxDate recommended,
  VaxDate past,
) =>
    [
      ImmunizationRecommendationDateCriterion(
        code: CodeableConcept(
          coding: [
            Coding(
              system: 'http://loinc.org',
              code: Code("30981-5"),
              display: "Earliest allowed date",
            ),
          ],
        ),
        value: earliest?.toString() ?? VaxDate.max().toString(),
      ),
      ImmunizationRecommendationDateCriterion(
        code: CodeableConcept(
          coding: [
            Coding(
              system: 'http://loinc.org',
              code: Code("30980-7"),
              display: "Recommended Date",
            ),
            Coding(
              system: 'http://snomed.info/sct',
              code: Code("171279008"),
              display: "Recommended Date",
            ),
          ],
        ),
        value: recommended?.toString() ?? VaxDate.max().toString(),
      ),
      ImmunizationRecommendationDateCriterion(
        code: CodeableConcept(
          coding: [
            Coding(
              system: 'http://loinc.org',
              code: Code("59778-1"),
              display: "Past Due Date",
            ),
            Coding(
              system: 'http://snomed.info/sct',
              code: Code("789540001"),
              display: "Past Due Date",
            ),
          ],
        ),
        value: past?.toString() ?? VaxDate.max().toString(),
      ),
    ];
