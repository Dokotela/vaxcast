import 'package:csv/csv.dart';
import 'package:vax_cast/vax_cast.dart';

VaccineGroupToAntigenMap vaccineGroupToAntigenMap(String? data) {
  final vaccineGroupToAntigenMap = VaccineGroupToAntigenMap();

  if (data == null) {
    return vaccineGroupToAntigenMap;
  }

  final supportingData =
      const CsvToListConverter().convert(data, fieldDelimiter: '\t', eol: '\n');

  return vaccineGroupToAntigenMap;
}
