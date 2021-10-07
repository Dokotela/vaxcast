import 'package:excel/excel.dart';
import 'package:vax_cast/vax_cast.dart';

import 'value_to_string.dart';

AntigenSupportingData contraindications(
    Excel excel, AntigenSupportingData antigenSupportingData) {
  antigenSupportingData =
      antigenSupportingData.copyWith(contraindications: Contraindications());

  /// first look at the Contraindications sheet
  var contraindication = excel.tables['Contraindications'];
  var codeText = '';
  for (var i in contraindication!.rows) {
    /// if it's an antigen contraindication but not the title row
    ///
    if (i[0]?.value != null &&
        i[0]!.value.toString().contains('Antigen Contraindication') &&
        !i[1]!.value.toString().contains('Contraindication (Code)') &&
        !i[1]!.value.toString().contains('n/a')) {
      /// instantiate the contraindication if if it hasn't been already
      if (antigenSupportingData.contraindications!.vaccineGroup == null) {
        antigenSupportingData = antigenSupportingData.copyWith(
            contraindications: antigenSupportingData.contraindications!
                .copyWith(
                    vaccineGroup: VaccineGroupContraindications(),
                    vaccine: antigenSupportingData.contraindications?.vaccine));
      }
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

      /// extract the code from the text for the observation
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
          contraindicationGuidance: i[3]!.value.toString() == 'n/a'
              ? null
              : valueToString(i[3]!.value),
          beginAge: i[4]!.value.toString() == 'n/a'
              ? null
              : valueToString(i[4]!.value),
          endAge: i[5]!.value.toString() == 'n/a'
              ? null
              : valueToString(i[5]!.value),
        ),
      );
    } else if (i[0]?.value != null &&
        i[0]!.value.toString().contains('Vaccine Contraindication') &&
        !i[1]!.value.toString().contains('Contraindication (Code)') &&
        !i[1]!.value.toString().contains('n/a')) {
      if (antigenSupportingData.contraindications!.vaccine == null) {
        antigenSupportingData = antigenSupportingData.copyWith(
            contraindications: antigenSupportingData.contraindications!
                .copyWith(
                    vaccineGroup:
                        antigenSupportingData.contraindications?.vaccineGroup,
                    vaccine: VaccineContraindications()));
      }
      if (antigenSupportingData.contraindications!.vaccine!.contraindication ==
          null) {
        antigenSupportingData = antigenSupportingData.copyWith(
            contraindications: antigenSupportingData.contraindications!
                .copyWith(
                    vaccine: antigenSupportingData.contraindications!.vaccine!
                        .copyWith(contraindication: [])));
      }
      if (i[1]!.value.toString() != codeText) {
        /// extract the code from the text for the observation
        codeText = valueToString(i[1]!.value) ?? '';
        var open = codeText.lastIndexOf('(');
        var close = codeText.lastIndexOf(')');
        var code = codeText.substring(open + 1, close);
        var text = codeText.substring(0, open - 1);
        antigenSupportingData.contraindications!.vaccine!.contraindication!.add(
          VaccineContraindication(
            observationCode: ObsStringToEnumMap[code],
            observationTitle: text,
            contraindicationText: i[2]!.value.toString() == 'n/a'
                ? null
                : valueToString(i[2]!.value),
            contraindicationGuidance: i[3]!.value.toString() == 'n/a'
                ? null
                : valueToString(i[3]!.value),
            contraindicatedVaccine: [],
          ),
        );
      }

      /// extract the code from the text for the observation
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
          beginAge: i[5]!.value.toString() == 'n/a'
              ? null
              : valueToString(i[5]!.value),
          endAge: i[6]!.value.toString() == 'n/a'
              ? null
              : valueToString(i[6]!.value),
        ),
      );
    }
  }
  return antigenSupportingData;
}
