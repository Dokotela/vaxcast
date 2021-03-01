import 'package:fhir/r5.dart';

import 'disease_coding.dart';
import 'get_date_time.dart';
import 'status.dart';

ImmunizationEvaluation getEvaluation(List<String> row, int i, int doseNum) {
  if (row[i] != null && row[i] != '') {
    var evaluation = ImmunizationEvaluation(
        id: Id('${row[0]}-dose$doseNum-evaluation'),
        resourceType: 'ImmunizationEvaluation',
        status: Code('completed'),
        patient: Reference(reference: 'Patient/${row[0]}'),
        date: FhirDateTime(getDateTime(row[55]).toString()),
        targetDisease: CodeableConcept(coding: getDiseaseCoding(row[55])),
        immunizationEvent:
            Reference(reference: 'Immunization/${row[0]}-dose$doseNum'),
        doseStatus: CodeableConcept(coding: [
          Coding(
            system: FhirUri(
                'http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status'),
            code: Code(row[i + 4]),
            display: row[i + 4],
          )
        ]),
        doseStatusReason: [
          CodeableConcept(coding: [
            Coding(
              system: FhirUri(
                  'http://hl7.org/fhir/us/ImmunizationFHIRDS/CodeSystem/StatusReason'),
              code: getStatusReason(row[i + 4]),
              display: row[i + 5],
            )
          ]),
        ]);
    return evaluation;
  } else {
    return null;
  }
}
