import 'package:csv/csv.dart';
import 'package:vax_cast/vax_cast.dart';

VaccineGroups vaccineGroups(String? data) {
  final vaccineGroups = VaccineGroups();
  if (data == null) {
    return vaccineGroups;
  }

  final supportingData =
      const CsvToListConverter().convert(data, fieldDelimiter: '\t', eol: '\n');

  return vaccineGroups;
}
