import 'dart:convert';
import 'dart:io';

import 'package:generate_vax_cast/create_supporting_data/contraindications.dart';
import 'package:generate_vax_cast/create_supporting_data/create_series/create_series.dart';
import 'package:generate_vax_cast/create_supporting_data/immunity.dart';
import 'package:generate_vax_cast/models/supporting_strings.dart';
import 'package:vax_cast/vax_cast.dart';

Future<void> createSupportingData(
  List<SupportingStrings> supportingStrings,
) async {
  for (var supportString in supportingStrings) {
    if (supportString is AntigenSupportingStrings) {
      final antigenSupportingData = AntigenSupportingData(
        immunity: immunity(supportString.immunity),
        contraindications: contraindications(supportString.contraindications),
        series: supportString.series?.map((e) => createSeries(e)).toList(),
      );
      const JsonEncoder jsonEncoder = JsonEncoder.withIndent('    ');
      final fileName = targetDiseaseEnumToString[
              antigenSupportingData.series?[0].targetDisease]
          ?.replaceAll(' ', '_')
          .replaceAll('-', '_')
          .toLowerCase();
      final index = fileName?.indexOf('_');
      var diseaseName = fileName;
      if (index != null && index != -1) {
        diseaseName = '${fileName?.substring(0, index)}'
            '${fileName?.substring(index, index + 1).toUpperCase()}'
            '${fileName?.substring(index + 2)}';
      }

      final dataString = "import 'package:vax_cast/vax_cast.dart';\n\n"
          'final $diseaseName = '
          'AntigenSupportingData.fromJson(${jsonEncoder.convert(antigenSupportingData)});';

      await File('lib/json/$fileName.dart').writeAsString(dataString);
    }
  }
}
