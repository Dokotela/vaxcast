import 'package:csv/csv.dart';
import 'package:vax_cast/vax_cast.dart';

LiveVirusConflicts liveVirusConflicts(String? data) {
  final liveVirusConflicts = LiveVirusConflicts();
  if (data == null) {
    return liveVirusConflicts;
  }

  final supportingData =
      const CsvToListConverter().convert(data, fieldDelimiter: '\t', eol: '\n');

  return liveVirusConflicts;
}
