import 'package:fhir/r5.dart';

import '../../../vax_cast.dart';

List<ImmunizationRecommendationDateCriterion> getR5DateCriterion(
  VaxDate earliest,
  VaxDate recommended,
  VaxDate past,
) =>
    [
      ImmunizationRecommendationDateCriterion(
        code: CodeableConcept(
          coding: [
            Coding(
              system: FhirUri("http://loinc.org"),
              code: Code("30981-5"),
              display: "Earliest allowed date",
            ),
          ],
        ),
        value: FhirDateTime(earliest?.toString() ?? VaxDate.max().toString()),
      ),
      ImmunizationRecommendationDateCriterion(
        code: CodeableConcept(
          coding: [
            Coding(
              system: FhirUri("http://loinc.org"),
              code: Code("30980-7"),
              display: "Recommended Date",
            ),
            Coding(
              system: FhirUri("http://snomed.info/sct"),
              code: Code("171279008"),
              display: "Recommended Date",
            ),
          ],
        ),
        value:
            FhirDateTime(recommended?.toString() ?? VaxDate.max().toString()),
      ),
      ImmunizationRecommendationDateCriterion(
        code: CodeableConcept(
          coding: [
            Coding(
              system: FhirUri("http://loinc.org"),
              code: Code("59778-1"),
              display: "Past Due Date",
            ),
            Coding(
              system: FhirUri("http://snomed.info/sct"),
              code: Code("789550001"),
              display: "Past Due Date",
            ),
          ],
        ),
        value: FhirDateTime(past?.toString() ?? VaxDate.max().toString()),
      ),
    ];
