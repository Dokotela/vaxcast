import 'package:excel/excel.dart';

import '../antigen_supporting_data/antigen_supporting_data.dart';
import '../antigen_supporting_data/classes/contraindications/contraindications.dart';
import '../antigen_supporting_data/classes/vaccine/vaccine.dart';
import '../antigen_supporting_data/classes/vaccine_contraindications/vaccine_contraindications.dart';
import '../antigen_supporting_data/classes/vaccine_group_contraindications/vaccine_group_contraindications.dart';
import '../cvx_maps.dart';
import '../export_supporting_data.dart';
import '../supporting_data_enums/obs_code_enum.dart';

AntigenSupportingData contraindications(
    Excel excel, AntigenSupportingData antigenSupportingData) {
  antigenSupportingData = antigenSupportingData.copyWith(
    contraindications: Contraindications(
      vaccineGroup: VaccineGroupContraindications(),
      vaccine: VaccineContraindications(),
    ),
  );

  /// first look at the Contraindications sheet
  var contraindication = excel.tables['Contraindications'];
  var codeText = '';
  for (var i in contraindication!.rows) {
    /// if it's an antigen contraindication but not the title row
    if (i[0]?.value != null &&
        i[0]!.value.toString().contains('Antigen Contrandication') &&
        !i[1]!.value.toString().contains('Contraindication (Code)')) {
      /// instantiate the contraindication if if it hasn't been already
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
    } else if (i[0]?.value != null &&
        i[0]!.value.toString().contains('Vaccine Contrandication') &&
        !i[1]!.value.toString().contains('Contraindication (Code)')) {
      if (antigenSupportingData.contraindications!.vaccine!.contraindication ==
          null) {
        antigenSupportingData = antigenSupportingData.copyWith(
            contraindications: antigenSupportingData.contraindications!
                .copyWith(
                    vaccine: antigenSupportingData.contraindications!.vaccine!
                        .copyWith(contraindication: [])));
      }
      if (i[1]!.value.toString() != codeText) {
        codeText = i[1]!.value.toString();
        var open = codeText.lastIndexOf('(');
        var close = codeText.lastIndexOf(')');
        var code = codeText.substring(open + 1, close);
        var text = codeText.substring(0, open - 1);
        antigenSupportingData.contraindications!.vaccine!.contraindication!.add(
          VaccineContraindication(
            observationCode: ObsStringToEnumMap[code],
            observationTitle: text,
            contraindicationText: i[2]!.value.toString(),
            contraindicationGuidance: i[3]!.value.toString(),
            contraindicatedVaccine: [],
          ),
        );
      }
      var open = i[4]!.value.toString().lastIndexOf('(');
      var close = i[4]!.value.toString().lastIndexOf(')');
      var code = i[4]!.value.toString().substring(open + 1, close);
      var text = i[4]!.value.toString().substring(0, open - 1);
      antigenSupportingData.contraindications!.vaccine!.contraindication!.last
          .contraindicatedVaccine!
          .add(
        Vaccine(
          vaccineType: text,
          cvx: cvxStringToEnumMap[code],
          beginAge: i[5]!.value.toString(),
          endAge: i[6]!.value.toString(),
        ),
      );
    }
  }
  return antigenSupportingData;
}
