import 'package:csv/csv.dart';
import 'package:vax_cast/vax_cast.dart';

VaccineGroupToAntigenMap vaccineGroupToAntigenMap(String? data) {
  var vaccineGroupToAntigenMap = VaccineGroupToAntigenMap();

  if (data == null) {
    return vaccineGroupToAntigenMap;
  }

  final supportingData =
      const CsvToListConverter().convert(data, fieldDelimiter: '\t', eol: '\n');

  vaccineGroupToAntigenMap =
      vaccineGroupToAntigenMap.copyWith(vaccineGroupMap: []);

  for (var i in supportingData) {
    print(i);
    if (i[0] != 'Vaccine Group') {
      if (vaccineGroupToAntigenMap.vaccineGroupMap!.isNotEmpty &&
          vaccineGroupToAntigenMap.vaccineGroupMap?.last.name ==
              vaccineGroupNameStringToEnum[i[0]]) {
        if (targetDiseaseStringToEnum[i[1]] != null) {
          vaccineGroupToAntigenMap.vaccineGroupMap?.last.antigen
              ?.add(targetDiseaseStringToEnum[i[1]]!);
        }
      } else {
        if (targetDiseaseStringToEnum[i[1]] != null) {
          vaccineGroupToAntigenMap.vaccineGroupMap?.add(VaccineGroupMap(
              name: vaccineGroupNameStringToEnum[i[0]],
              antigen: [targetDiseaseStringToEnum[i[1]]!]));
        }
      }
    }
  }
  return vaccineGroupToAntigenMap;
}
