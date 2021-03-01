import '../ImmDS/dstu2/fhir_lists/all_cases.dart' as dstu2;
import '../ImmDS/stu3/fhir_lists/all_cases.dart' as stu3;
import '../ImmDS/r4/fhir_lists/all_cases.dart' as r4;
import '../ImmDS/r5/fhir_lists/all_cases.dart' as r5;

Future<dynamic> fullPatientList(String version) async {
  switch (version) {
    case 'dstu2':
      return dstu2.cases;
    case 'stu3':
      return stu3.cases;
    case 'r5':
      return r5.cases;
    default:
      return r4.cases;
  }
}
