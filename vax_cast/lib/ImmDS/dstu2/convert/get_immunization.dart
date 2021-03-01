import 'package:fhir/dstu2.dart';

import 'get_date_time.dart';

Immunization getImmunization(List<String> row, int i, int doseNum) {
  if (row[i] != null && row[i] != '') {
    var immunization = Immunization(
      id: Id('${row[0]}-dose$doseNum'),
      resourceType: 'Immunization',
      patient: Reference(reference: 'Patient/${row[0]}'),
      reported: Boolean(false),
      wasNotGiven: Boolean(false),
      date: FhirDateTime(getDateTime(row[i]).toString()),
      status: ImmunizationStatus.completed,
      vaccineCode: CodeableConcept(
        //what is the vaccine called
        coding: [
          //record cvx code
          Coding(
            system: FhirUri('http://hl7.org/fhir/sid/cvx'),
            code: Code(row[i + 2]),
            display: row[i + 1],
          ),
        ],
      ),
    );
    if (row[i + 3] != null && row[i + 3] != '') {
      immunization.vaccineCode.coding.add(
        //I think this is the code system URL for MVX codes
        Coding(
          system: FhirUri('http://hl7.org/fhir/v2/0227'),
          code: Code(row[i + 3]),
          display: row[i + 1],
        ),
      );
    }
    return immunization;
  } else {
    return null;
  }
}
