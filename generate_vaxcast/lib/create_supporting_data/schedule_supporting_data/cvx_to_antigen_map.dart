import 'package:csv/csv.dart';
import 'package:vaxcast/vaxcast.dart';

CvxToAntigenMap cvxToAntigenMap(String? data) {
  var cvxToAntigenMap = CvxToAntigenMap();
  if (data == null) {
    return cvxToAntigenMap;
  }

  final supportingData =
      const CsvToListConverter().convert(data, fieldDelimiter: '\t', eol: '\n');

  cvxToAntigenMap = cvxToAntigenMap.copyWith(cvxMap: []);
  for (var i in supportingData) {
    if (i[0].toString() != 'CVX Code') {
      if (cvxToAntigenMap.cvxMap?.isEmpty ?? true) {
        cvxToAntigenMap.cvxMap?.add(
          CvxMap(
            cvx: i.length < 1 ||
                    i[0] == null ||
                    i[0].toString() == '' ||
                    i[0].toString() == 'n/a'
                ? null
                : cvxStringToEnumMap[i[0].toString().padLeft(2, '0')],
            shortDescription: i.length < 2 ||
                    i[1] == null ||
                    i[1].toString() == '' ||
                    i[1].toString() == 'n/a'
                ? null
                : i[1].toString(),
            association: [
              Association(
                antigen: targetDiseaseStringToEnum[i[2]],
                associationBeginAge: i.length < 3 ||
                        i[3] == null ||
                        i[3].toString() == '' ||
                        i[3].toString() == 'n/a'
                    ? null
                    : i[3].toString(),
                associationEndAge: i.length < 4 ||
                        i[4] == null ||
                        i[4].toString() == '' ||
                        i[4].toString() == 'n/a'
                    ? null
                    : i[4].toString(),
              ),
            ],
          ),
        );
      } else if (cvxToAntigenMap.cvxMap?.last.cvx ==
          (i.length < 1 ||
                  i[0] == null ||
                  i[0].toString() == '' ||
                  i[0].toString() == 'n/a'
              ? null
              : cvxStringToEnumMap[i[0].toString().padLeft(2, '0')])) {
        cvxToAntigenMap.cvxMap?.last.association?.add(
          Association(
            antigen: targetDiseaseStringToEnum[i[2]],
            associationBeginAge: i.length < 3 ||
                    i[3] == null ||
                    i[3].toString() == '' ||
                    i[3].toString() == 'n/a'
                ? null
                : i[3].toString(),
            associationEndAge: i.length < 4 ||
                    i[4] == null ||
                    i[4].toString() == '' ||
                    i[4].toString() == 'n/a'
                ? null
                : i[4].toString(),
          ),
        );
      } else {
        cvxToAntigenMap.cvxMap?.add(
          CvxMap(
            cvx: i.length < 1 ||
                    i[0] == null ||
                    i[0].toString() == '' ||
                    i[0].toString() == 'n/a'
                ? null
                : cvxStringToEnumMap[i[0].toString().padLeft(2, '0')],
            shortDescription: i.length < 2 ||
                    i[1] == null ||
                    i[1].toString() == '' ||
                    i[1].toString() == 'n/a'
                ? null
                : i[1].toString(),
            association: [
              Association(
                antigen: targetDiseaseStringToEnum[i[2]],
                associationBeginAge: i.length < 3 ||
                        i[3] == null ||
                        i[3].toString() == '' ||
                        i[3].toString() == 'n/a'
                    ? null
                    : i[3].toString(),
                associationEndAge: i.length < 4 ||
                        i[4] == null ||
                        i[4].toString() == '' ||
                        i[4].toString() == 'n/a'
                    ? null
                    : i[4].toString(),
              ),
            ],
          ),
        );
      }
    }
  }
  return cvxToAntigenMap;
}
