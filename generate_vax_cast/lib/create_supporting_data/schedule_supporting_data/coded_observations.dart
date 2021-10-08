import 'package:csv/csv.dart';
import 'package:vax_cast/vax_cast.dart';

Observations observations(String? data) {
  final observations = Observations(observation: []);
  if (data == null) {
    return observations;
  }

  final supportingData =
      const CsvToListConverter().convert(data, fieldDelimiter: '\t', eol: '\n');

  for (var i in supportingData) {
    if (i[0].toString() != 'Observation Code') {
      print(i);
      print(i.length);
      observations.observation!.add(
        Observation.fromJson(
          {
            'observationCode': i.length < 1 ||
                    i[0] == null ||
                    i[0].toString() == '' ||
                    i[0].toString() == 'n/a'
                ? null
                : i[0].toString().padLeft(3, '0'),
            'observationTitle': i.length < 2 ||
                    i[1] == null ||
                    i[1].toString() == '' ||
                    i[1].toString() == 'n/a'
                ? null
                : i[1].toString(),
            'indicationText': i.length < 3 ||
                    i[2] == null ||
                    i[2].toString() == '' ||
                    i[2].toString() == 'n/a'
                ? null
                : i[2].toString(),
            'contraindicationText': i.length < 4 ||
                    i[3] == null ||
                    i[3].toString() == '' ||
                    i[3].toString() == 'n/a'
                ? null
                : i[3].toString(),
            'clarifyingText': i.length < 5 ||
                    i[4] == null ||
                    i[4].toString() == '' ||
                    i[4].toString() == 'n/a'
                ? null
                : i[4].toString(),
          },
        ),
      );

      if ((i.length > 5 &&
              i[5] != null &&
              i[5].toString() != '' &&
              i[5].toString() != 'n/a') ||
          (i.length > 6 &&
              i[6] != null &&
              i[6].toString() != '' &&
              i[6].toString() != 'n/a') ||
          (i.length > 7 &&
              i[7] != null &&
              i[7].toString() != '' &&
              i[7].toString() != 'n/a')) {
        if (observations.observation!.last.codedValues == null) {
          observations.observation!.last = observations.observation!.last
              .copyWith(codedValues: CodedValues(codedValue: []));
        }
        for (var j in [5, 6, 7]) {
          if (i[j] != null &&
              i[j].toString() != '' &&
              i[j].toString() != 'n/a') {
            observations.observation?.last.codedValues?.codedValue
                ?.addAll(codedValueList(i[j].toString(), j));
          }
        }
      }
    }
  }
  print(observations.toJson());
  return observations;
}

List<CodedValue> codedValueList(String codeString, int column) {
  final codedValueList = <CodedValue>[];
  var tempList = codeString.split(';');
  for (var value in tempList) {
    if (value.length > 0) {
      print(value);
      final index = value.indexOf('(');
      codedValueList.add(CodedValue(
        code: value.substring(index + 1, value.length - 1),
        codeSystem: column == 5
            ? 'SNOMED'
            : column == 6
                ? 'CVX'
                : 'CDCPHINVS',
        text: value.substring(0, index),
      ));
    }
  }
  return codedValueList;
}
