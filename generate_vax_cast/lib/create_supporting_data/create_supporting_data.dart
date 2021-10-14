import 'dart:convert';
import 'dart:io';

import 'package:generate_vax_cast/models/supporting_strings.dart';
import 'package:vax_cast/vax_cast.dart';

import 'contraindications.dart';
import 'create_series/create_series.dart';
import 'immunity.dart';
import 'schedule_supporting_data/schedule_supporting_data.dart';

Future<void> createSupportingData(
  List<SupportingStrings> supportingStrings,
) async {
  var scheduleSupportingData = ScheduleSupportingData();
  const JsonEncoder jsonEncoder = JsonEncoder.withIndent('    ');
  for (var supportString in supportingStrings) {
    if (supportString is AntigenSupportingStrings) {
      final antigenSupportingData = AntigenSupportingData(
        immunity: immunity(supportString.immunity),
        contraindications: contraindications(supportString.contraindications),
        series: supportString.series?.map((e) => createSeries(e)).toList(),
      );

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
    } else {
      switch ((supportString as ScheduleSupportingStrings).type) {
        case SupportingType.codedObservations:
          scheduleSupportingData = scheduleSupportingData.copyWith(
              observations: observations(supportString.data));
          break;
        case SupportingType.cvxToAntigenMap:
          scheduleSupportingData = scheduleSupportingData.copyWith(
              cvxToAntigenMap: cvxToAntigenMap(supportString.data));
          break;
        case SupportingType.liveVirusConflicts:
          scheduleSupportingData = scheduleSupportingData.copyWith(
              liveVirusConflicts: liveVirusConflicts(supportString.data));
          break;
        case SupportingType.vaccineGroups:
          scheduleSupportingData = scheduleSupportingData.copyWith(
              vaccineGroups: vaccineGroups(supportString.data));
          break;
        case SupportingType.vaccineGroupToAntigenMap:
          scheduleSupportingData = scheduleSupportingData.copyWith(
              vaccineGroupToAntigenMap:
                  vaccineGroupToAntigenMap(supportString.data));
          break;
        default:
          null;
      }
    }
  }
  final dataString = "import 'package:vax_cast/vax_cast.dart';\n\n"
      'final scheduleSupportingData = '
      'ScheduleSupportingData.fromJson(${jsonEncoder.convert(scheduleSupportingData)});';

  await File('lib/json/schedule_supporting_data.dart')
      .writeAsString(dataString);
}