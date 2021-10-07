import 'dart:convert';
import 'dart:io';

import 'package:generate_vax_cast/create_supporting_data/contraindications.dart';
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
        series: null,
      );
      const JsonEncoder jsonEncoder = JsonEncoder.withIndent('    ');
      await File('lib/json/${antigenSupportingData.hashCode}.json')
          .writeAsString(jsonEncoder.convert(antigenSupportingData));
    }
  }
}
