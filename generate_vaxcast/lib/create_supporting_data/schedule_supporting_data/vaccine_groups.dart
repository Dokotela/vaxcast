import 'package:csv/csv.dart';
import 'package:vaxcast/vaxcast.dart';

VaccineGroups vaccineGroups(String? data) {
  var vaccineGroups = VaccineGroups();
  if (data == null) {
    return vaccineGroups;
  }

  final supportingData =
      const CsvToListConverter().convert(data, fieldDelimiter: '\t', eol: '\n');

  vaccineGroups = vaccineGroups.copyWith(vaccineGroup: []);

  for (var i in supportingData) {
    if (i[0] != 'Vaccine Group') {
      vaccineGroups.vaccineGroup?.add(
        VaccineGroup(
          name: vaccineGroupNameStringToEnum[i[0]],
          administerFullVaccineGroup: i.length < 2 ||
                  i[1] == null ||
                  i[1].toString() == '' ||
                  i[1].toString() == 'n/a'
              ? null
              : i[1].toString() == 'Yes'
                  ? Binary.yes
                  : Binary.no,
        ),
      );
    }
  }

  return vaccineGroups;
}
