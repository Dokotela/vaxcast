import 'package:excel/excel.dart';
import 'package:vax_cast/vax_cast.dart';

import 'value_to_string.dart';

AntigenSupportingData immunity(Excel excel) {
  /// Create a new AntigenSupportingData object
  var antigenSupportingData = AntigenSupportingData();

  /// first look at the Immunity sheet
  var immunity = excel.tables['Immunity'];

  /// Date and Country may be the same for multiple Exclusion Conditions
  String? date = '';
  String? country = '';

  /// Look through the rows in the Immunity sheet
  for (var i in immunity!.rows) {
    /// Find any of the Clinical History Immunity references
    if (i[0] != null &&
        i[0]!.value == 'Clinical History Immunity' &&
        !i[1]!.value.contains('Immunity Guideline') &&
        !i[1]!.value.contains('n/a')) {
      var open = i[1]!.value.toString().lastIndexOf('(');
      var close = i[1]!.value.toString().lastIndexOf(')');
      var code = i[1]!.value.toString().substring(open + 1, close);
      var text = i[1]!.value.toString().substring(0, open - 1);

      /// If there's no clinicalImmunityHistory already, add a new object
      if (antigenSupportingData.immunity == null) {
        antigenSupportingData = AntigenSupportingData(
            immunity: Immunity(clinicalHistory: [
          ClinicalHistory(
              guidelineCode: ObsStringToEnumMap[code], guidelineTitle: text)
        ]));

        /// if there is already clinicalImmunityHistory, just add it to the list
      } else {
        antigenSupportingData.immunity!.clinicalHistory!.add(ClinicalHistory(
            guidelineCode: ObsStringToEnumMap[code], guidelineTitle: text));
      }

      /// Find any of the Birth Date Immunity rows
    } else if (i[0] != null &&
        i[0]!.value.contains('Birth Date Immunity') &&
        !i[1]!.value.contains('Immunity Birth Date') &&
        !i[1]!.value.contains('n/a')) {
      /// initialize immunity if not already initialized
      if (antigenSupportingData.immunity == null) {
        antigenSupportingData =
            antigenSupportingData.copyWith(immunity: Immunity());
      }

      /// Checks if the data field is the max date (which means it was blank, null or
      /// incorrectly formatted)
      if (VaxDate.yyyymmdd(i[1]!.value.toString()) != VaxDate.max()) {
        if (date != i[1]!.value.toString()) {
          date = valueToString(i[1]!.value);
          country = valueToString(i[2]!.value);

          /// add the immunity data
          antigenSupportingData = antigenSupportingData.copyWith(
            immunity: antigenSupportingData.immunity!.copyWith(
              dateOfBirth: DateOfBirth(
                immunityBirthDate: date,
                birthCountry: country,
                exclusion: [],
              ),
            ),
          );
        }

        /// extract the code from the text for the observation
        var open = i[3]!.value.toString().lastIndexOf('(');
        var close = i[3]!.value.toString().lastIndexOf(')');
        var code = i[3]!.value.toString().substring(open + 1, close);
        var text = i[3]!.value.toString().substring(0, open - 1);

        antigenSupportingData.immunity!.dateOfBirth!.exclusion!.add(
          Exclusion(
            exclusionCode: ObsStringToEnumMap[code],
            exclusionTitle: text,
          ),
        );
      }
    }
  }
  return antigenSupportingData;
}
