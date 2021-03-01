import 'dart:io';

import 'convert/process_lines.dart';

void r5ConvertCasesFhir() async {
  final file = await File('./lib/ImmDS/healthy.csv');
  await file.readAsLines().then(processLines);
}
