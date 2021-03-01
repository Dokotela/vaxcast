import 'package:fhir/r4.dart';

import '../../../vax_cast.dart';

List<ImmunizationRecommendationDateCriterion> getR4DateCriterion(
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
              display: "Earliest date to give",
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
              display: "Date vaccine due",
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
              display: "Date when overdue for immunization",
            ),
          ],
        ),
        value: FhirDateTime(past?.toString() ?? VaxDate.max().toString()),
      ),
    ];
