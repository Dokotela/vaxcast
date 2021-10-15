import 'package:csv/csv.dart';
import 'package:vaxcast/vaxcast.dart';

LiveVirusConflicts liveVirusConflicts(String? data) {
  var liveVirusConflicts = LiveVirusConflicts();
  if (data == null) {
    return liveVirusConflicts;
  }

  final supportingData =
      const CsvToListConverter().convert(data, fieldDelimiter: '\t', eol: '\n');

  liveVirusConflicts = liveVirusConflicts.copyWith(liveVirusConflict: []);
  for (var i in supportingData) {
    if (i != 'Previous Vaccine Type (CVX)') {
      final index1 = i[0].toString().indexOf('(');
      final index2 = i[1].toString().indexOf('(');
      liveVirusConflicts.liveVirusConflict!.add(LiveVirusConflict(
        previous: Vaccine(
          vaccineType: i[0].toString().substring(0, index1 - 1),
          cvx: cvxStringToEnumMap[i[0]
              .toString()
              .substring(index1 + 1, i[0].toString().length - 1)],
        ),
        current: Vaccine(
          vaccineType: i[1].toString().substring(0, index2 - 1),
          cvx: cvxStringToEnumMap[i[1]
              .toString()
              .substring(index2 + 1, i[1].toString().length - 1)],
        ),
        conflictBeginInterval: i[2],
        minConflictEndInterval: i[3],
        conflictEndInterval: i[4],
      ));
    }
  }

  return liveVirusConflicts;
}
