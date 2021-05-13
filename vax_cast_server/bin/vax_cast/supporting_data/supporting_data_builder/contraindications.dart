import 'package:excel/excel.dart';

import '../antigen_supporting_data/antigen_supporting_data.dart';
import '../antigen_supporting_data/classes/contraindications/contraindications.dart';
import '../antigen_supporting_data/classes/vaccine_contraindications/vaccine_contraindications.dart';
import '../antigen_supporting_data/classes/vaccine_group_contraindications/vaccine_group_contraindications.dart';
import '../supporting_data_enums/obs_code_enum.dart';

AntigenSupportingData contraindications(
    Excel excel, AntigenSupportingData antigenSupportingData) {
  antigenSupportingData = antigenSupportingData.copyWith(
    contraindications: Contraindications(
      vaccineGroup: VaccineGroupContraindications(),
      vaccine: VaccineContraindications(),
    ),
  );

  /// first look at the Immunity sheet
  var contraindication = excel.tables['Contraindications'];
  for (var i in contraindication!.rows) {
    if (i[0]!.value.toString().contains('Antigen Contrandication') &&
        !i[1]!.value.toString().contains('Contraindication (Code)')) {
      if (antigenSupportingData
              .contraindications!.vaccineGroup!.contraindication ==
          null) {
        antigenSupportingData = antigenSupportingData.copyWith(
            contraindications: antigenSupportingData.contraindications!
                .copyWith(
                    vaccineGroup: antigenSupportingData
                        .contraindications!.vaccineGroup!
                        .copyWith(contraindication: [])));
      }
      var open = i[1]!.value.toString().lastIndexOf('(');
      var close = i[1]!.value.toString().lastIndexOf(')');
      var code = i[1]!.value.toString().substring(open + 1, close);
      var text = i[1]!.value.toString().substring(0, open - 1);
      antigenSupportingData.contraindications!.vaccineGroup!.contraindication!
          .add(
        GroupContraindication(
          observationCode: ObsStringToEnumMap[code],
          observationTitle: text,
          contraindicationText: i[2]!.value.toString(),
          contraindicationGuidance: i[3]!.value.toString(),
          beginAge: i[4]!.value.toString(),
          endAge: i[5]!.value.toString(),
        ),
      );
    }
  }
  return antigenSupportingData;
}
