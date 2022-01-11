import 'dart:io';

import 'package:generate_vaxcast/create_supporting_data/create_supporting_data.dart';

import 'utils/download_sheets.dart';

Future<void> main() async {
  /// Downloads all information from Google Sheets
  final supportingStringsList = await downloadSheets();

  /// Creates all necessary supporting data files
  await createSupportingData(supportingStringsList);

  /// Edit this out if testing generating files, this writes files to the actual program
  final dir = Directory('lib/files');
  final fileList = await dir.list().map((event) => event.path).toList();
  for (var file in fileList) {
    final newFile = await File(file).readAsString();
    if (!(await File(
            '../vaxcast/lib/supporting_data/${file.replaceAll("lib/", "")}')
        .exists())) {
      await File(
              '../vaxcast/lib/supporting_data/${file.replaceAll("lib/", "")}')
          .create();
    }
    await File('../vaxcast/lib/supporting_data/${file.replaceAll("lib/", "")}')
        .writeAsString(newFile);
  }
}
