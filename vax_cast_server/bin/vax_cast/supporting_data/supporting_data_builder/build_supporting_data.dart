import 'package:build/build.dart';
import 'package:excel/excel.dart';

import '../antigen_supporting_data/antigen_supporting_data.dart';
import '../antigen_supporting_data/classes/clinical_history/clinical_history.dart';
import '../antigen_supporting_data/classes/immunity/immunity.dart';
import '../export_supporting_data.dart';

class SupportingDataBuilder extends Builder {
  @override
  Map<String, List<String>> get buildExtensions => {
        '.xlsx': ['.json']
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    /// Grab the object matching the input file
    var inputId = buildStep.inputId;

    /// Read in the data from the excel spreadsheet
    var contents = await buildStep.readAsBytes(inputId);
    var excel = Excel.decodeBytes(contents);

    if (inputId.toString().contains('AntigenSupportingData')) {
      var antigenSupportingData = AntigenSupportingData();
      var immunity = excel.tables['Immunity'];
      var date = '';
      var country = '';
      for (var i in immunity!.rows) {
        if (i[0] != null &&
            i[0]!.value == 'Clinical History Immunity' &&
            !i[1]!.value.contains('Immunity Guideline') &&
            !i[1]!.value.contains('n/a')) {
          var open = i[1]!.value.toString().lastIndexOf('(');
          var close = i[1]!.value.toString().lastIndexOf(')');
          var code = i[1]!.value.toString().substring(open + 1, close);
          var text = i[1]!.value.toString().substring(0, open - 1);
          if (antigenSupportingData.immunity == null) {
            antigenSupportingData = AntigenSupportingData(
                immunity: Immunity(clinicalHistory: [
              ClinicalHistory(
                  guidelineCode: ObsStringToEnumMap[code], guidelineTitle: text)
            ]));
          } else {
            antigenSupportingData.immunity!.clinicalHistory!.add(
                ClinicalHistory(
                    guidelineCode: ObsStringToEnumMap[code],
                    guidelineTitle: text));
          }
        } else if (i[0] != null &&
            i[0]!.value == 'Birth Date Immunity' &&
            !i[1]!.value.contains('Immunity Birth Date') &&
            !i[1]!.value.contains('n/a')) {
          if (antigenSupportingData.immunity == null) {
            antigenSupportingData =
                antigenSupportingData.copyWith(immunity: Immunity());
          }
          if (DateTime.tryParse(i[1]!.value.toString()) != null) {
            date = i[1]!.value.toString();
            country =
                i[1]!.value?.toString() == null || i[1]!.value.toString() == ''
                    ? country
                    : i[1]!.value.toString();

            antigenSupportingData = antigenSupportingData.copyWith(
                immunity: antigenSupportingData.immunity!.copyWith(
                    dateOfBirth: DateOfBirth(
              immunityBirthDate: date,
              birthCountry: country,
            )));
          } else {}
        }
      }
    }
  }
}
