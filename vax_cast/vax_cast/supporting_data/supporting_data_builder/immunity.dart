import 'package:excel/excel.dart';

import '../../vax_date.dart';
import '../antigen_supporting_data/antigen_supporting_data.dart';
import '../antigen_supporting_data/classes/clinical_history/clinical_history.dart';
import '../antigen_supporting_data/classes/date_of_birth/date_of_birth.dart';
import '../antigen_supporting_data/classes/exclusion/exclusion.dart';
import '../antigen_supporting_data/classes/immunity/immunity.dart';
import '../supporting_data_enums/obs_code_enum.dart';

AntigenSupportingData immunity(Excel excel) {
  /// Create a new AntigenSupportingData object
  var antigenSupportingData = AntigenSupportingData();

  /// first look at the Immunity sheet
  var immunity = excel.tables['Immunity'];

  /// Date and Country may be the same for multiple Exclusion Conditions
  var date = '';
  var country = '';

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

      if (VaxDate.yyyymmdd(i[1]!.value.toString()) != VaxDate.max()) {
        if (date != i[1]!.value.toString()) {
          date = i[1]!.value.toString();
          country = i[2]!.value.toString();
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