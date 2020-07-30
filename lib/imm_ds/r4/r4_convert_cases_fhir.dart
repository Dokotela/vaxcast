import 'dart:io';

import 'convert/process_lines.dart';

void r4ConvertCasesFhir() async {
  final file = await File('./lib/imm_ds/healthy.csv');
  await file.readAsLines().then(processLines);
}
