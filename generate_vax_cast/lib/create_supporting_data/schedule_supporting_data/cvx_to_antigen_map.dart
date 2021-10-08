import 'package:csv/csv.dart';
import 'package:vax_cast/vax_cast.dart';

CvxToAntigenMap cvxToAntigenMap(String? data) {
  final cvxToAntigenMap = CvxToAntigenMap();
  if (data == null) {
    return cvxToAntigenMap;
  }

  final supportingData =
      const CsvToListConverter().convert(data, fieldDelimiter: '\t', eol: '\n');

  return cvxToAntigenMap;
}
