import 'dstu2/dstu2_convert_cases_fhir.dart';
import 'stu3/stu3_convert_cases_fhir.dart';
import 'r4/r4_convert_cases_fhir.dart';
import 'r5/r5_convert_cases_fhir.dart';

void main() async {
  await dstu2ConvertCasesFhir();
  await stu3ConvertCasesFhir();
  await r4ConvertCasesFhir();
  await r5ConvertCasesFhir();
}
