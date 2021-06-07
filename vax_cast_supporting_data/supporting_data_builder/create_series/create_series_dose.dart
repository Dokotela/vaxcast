import 'package:excel/excel.dart';
import 'package:vax_cast/vax_cast.dart';

SeriesDose createSeriesDose(int index, List<List<Data?>> rows) {
  var seriesDose = SeriesDose();
  for (var i = index; i < rows.length; i++) {
    var row = rows[i];
    if (row[0] == null ||
        row[0]?.value == null ||
        row[0]!.value.toString() == '') {
      return seriesDose;
    } else if (row[0]!.value.toString().contains('Series Dose')) {
      seriesDose = seriesDose.copyWith(
          doseNumber: doseNumberStringToEnum[row[1]!.value.toString().trim()]);
    } else if (row[0]!.value.toString().contains('Age') &&
        !row[1]!.value.toString().contains('Absolute Minimum Age')) {
      if (seriesDose.age == null) {
        seriesDose = seriesDose.copyWith(
          age: [
            VaxAge(
              absMinAge: _valueToString(row[1]!.value),
              minAge: _valueToString(row[2]!.value),
              earliestRecAge: _valueToString(row[3]!.value),
              latestRecAge: _valueToString(row[4]!.value),
              maxAge: _valueToString(row[5]!.value),
              effectiveDate: _valueToString(row[6]!.value),
              cessationDate: _valueToString(row[7]!.value),
            ),
          ],
        );
      } else {
        seriesDose.age!.add(
          VaxAge(
            absMinAge: _valueToString(row[1]!.value),
            minAge: _valueToString(row[2]!.value),
            earliestRecAge: _valueToString(row[3]!.value),
            latestRecAge: _valueToString(row[4]!.value),
            maxAge: _valueToString(row[5]!.value),
            effectiveDate: _valueToString(row[6]!.value),
            cessationDate: _valueToString(row[7]!.value),
          ),
        );
      }
    } else if (row[0]!.value.toString().contains('Preferable Interval') &&
        !row[1]!
            .value
            .toString()
            .contains('From Immediate Previous Dose Administered? Y/N')) {
      if (seriesDose.interval == null) {
        seriesDose = seriesDose.copyWith(interval: []);
      }

      /// extract the code from the text for the observation
      var open = row[4]!.value.toString().lastIndexOf('(');
      var close = row[4]!.value.toString().lastIndexOf(')');
      var code = '';
      var text = '';
      if (open != -1 && close != -1) {
        code = row[4]!.value.toString().substring(open + 1, close);
        text = row[4]!.value.toString().substring(0, open - 1);
      }
      seriesDose.interval!.add(Interval(
        fromPrevious: _valueToEnum(row[1]!.value, fromPreviousStringToEnum),
        fromTargetDose: _valueToEnum(row[2]!.value, fromTargetStringToEnum),
        fromMostRecent: _valueToString(row[3]!.value),
        fromRelevantObs: open == -1 || close == -1
            ? null
            : ObservationCode(code: ObsStringToEnumMap[code], text: text),
        absMinInt: _valueToString(row[5]!.value),
        minInt: _valueToString(row[6]!.value),
        earliestRecInt: _valueToString(row[7]!.value),
        latestRecInt: _valueToString(row[8]!.value),
        intervalPriority: _valueToString(row[9]!.value),
        effectiveDate: _valueToString(row[10]!.value),
        cessationDate: _valueToString(row[11]!.value),
      ));
    } else if (row[0]!.value.toString().contains('Allowable Interval') &&
        !row[1]!
            .value
            .toString()
            .contains('From Immediate Previous Dose Administered? Y/N')) {
      seriesDose = seriesDose.copyWith(
          allowableInterval: Interval(
        fromPrevious: _valueToEnum(row[1]!.value, fromPreviousStringToEnum),
        fromTargetDose: _valueToEnum(row[2]!.value, fromTargetStringToEnum),
        absMinInt: _valueToString(row[3]!.value),
        effectiveDate: _valueToString(row[4]!.value),
        cessationDate: _valueToString(row[5]!.value),
      ));
    } else if (row[0]!.value.toString().contains('Preferable Vaccine') &&
        !row[1]!.value.toString().contains('Vaccine Type (CVX)')) {
      if (seriesDose.preferableVaccine == null) {
        seriesDose = seriesDose.copyWith(preferableVaccine: []);
      }

      /// extract the code from the text for the observation
      var open = row[1]!.value.toString().lastIndexOf('(');
      var close = row[1]!.value.toString().lastIndexOf(')');
      var code = '';
      var text = '';
      if (open != -1 && close != -1) {
        code = row[1]!.value.toString().substring(open + 1, close);
        text = row[1]!.value.toString().substring(0, open - 1);
      }

      seriesDose.preferableVaccine!.add(Vaccine(
        vaccineType: text,
        cvx: cvxStringToEnumMap[code],
        beginAge: _valueToString(row[2]!.value),
        endAge: _valueToString(row[3]!.value),
        mvx: _valueToString(row[4]!.value),
        volume: _valueToString(row[5]!.value),
        forecastVaccineType: _valueToString(row[6]!.value),
      ));
    } else if (row[0]!.value.toString().contains('Allowable Vaccine') &&
        !row[1]!.value.toString().contains('Vaccine Type (CVX)')) {
      if (seriesDose.allowableVaccine == null) {
        seriesDose = seriesDose.copyWith(allowableVaccine: []);
      }

      /// extract the code from the text for the observation
      var open = row[1]!.value.toString().lastIndexOf('(');
      var close = row[1]!.value.toString().lastIndexOf(')');
      var code = '';
      var text = '';
      if (open != -1 && close != -1) {
        code = row[1]!.value.toString().substring(open + 1, close);
        text = row[1]!.value.toString().substring(0, open - 1);
      }

      seriesDose.allowableVaccine!.add(Vaccine(
        vaccineType: text,
        cvx: cvxStringToEnumMap[code],
        beginAge: _valueToString(row[2]!.value),
        endAge: _valueToString(row[3]!.value),
      ));
    } else if (row[0]!.value.toString().contains('Inadvertent Vaccine') &&
        !row[1]!.value.toString().contains('Vaccine Type (CVX)')) {
      if (seriesDose.inadvertentVaccine == null) {
        seriesDose = seriesDose.copyWith(inadvertentVaccine: []);
      }

      /// extract the code from the text for the observation
      var open = row[1]!.value.toString().lastIndexOf('(');
      var close = row[1]!.value.toString().lastIndexOf(')');
      var code = '';
      var text = '';
      if (open != -1 && close != -1) {
        code = row[1]!.value.toString().substring(open + 1, close);
        text = row[1]!.value.toString().substring(0, open - 1);
      }

      seriesDose.inadvertentVaccine!.add(Vaccine(
        vaccineType: text,
        cvx: cvxStringToEnumMap[code],
      ));
    } else if (row[0]!.value.toString().contains('Conditional Skip') &&
        !row[1]!.value.toString().contains('Skip Context')) {
      if (seriesDose.conditionalSkip == null) {
        seriesDose = seriesDose.copyWith(conditionalSkip: [
          ConditionalSkip(
            context: skipContextStringToEnum[row[1]!.value.toString().trim()],
            setLogic: row[2]!.value.toString().trim(),
            set_: [
              VaxSet(
                setID: row[3]!.value.toString().trim(),
                setDescription: row[4]!.value.toString().trim(),
                effectiveDate: _valueToString(row[5]!.value),
                cessationDate: _valueToString(row[6]!.value),
                conditionLogic: _valueToString(row[7]!.value),
                condition: [
                  Condition(
                    conditionID: _valueToString(row[8]!.value),
                    conditionType:
                        _valueToEnum(row[9]!.value, conditionTypeStringToEnum),
                    startDate: _valueToString(row[10]!.value),
                    endDate: _valueToString(row[11]!.value),
                    beginAge: _valueToString(row[12]!.value),
                    endAge: _valueToString(row[13]!.value),
                    interval: _valueToString(row[14]!.value),
                    doseCount: _valueToString(row[15]!.value),
                    doseType:
                        _valueToEnum(row[16]!.value, doseTypeStringToEnum),
                    doseCountLogic: _valueToEnum(
                        row[17]!.value, doseCountLogicStringToEnum),
                    vaccineTypes: _valueToString(row[18]!.value),
                    seriesGroups: _valueToString(row[19]!.value),
                  )
                ],
              )
            ],
          ),
        ]);
      } else if (seriesDose.conditionalSkip?.last.context !=
              _valueToEnum(row[1]!.value, skipContextStringToEnum) ||
          seriesDose.conditionalSkip?.last.setLogic !=
              row[2]!.value.toString().trim()) {
        seriesDose.conditionalSkip!.add(
          ConditionalSkip(
            context: skipContextStringToEnum[row[1]!.value.toString().trim()],
            setLogic: row[2]!.value.toString().trim(),
            set_: [
              VaxSet(
                setID: row[3]!.value.toString().trim(),
                setDescription: row[4]!.value.toString().trim(),
                effectiveDate: _valueToString(row[5]!.value),
                cessationDate: _valueToString(row[6]!.value),
                conditionLogic: _valueToString(row[7]!.value),
                condition: [
                  Condition(
                    conditionID: _valueToString(row[8]!.value),
                    conditionType:
                        _valueToEnum(row[9]!.value, conditionTypeStringToEnum),
                    startDate: _valueToString(row[10]!.value),
                    endDate: _valueToString(row[11]!.value),
                    beginAge: _valueToString(row[12]!.value),
                    endAge: _valueToString(row[13]!.value),
                    interval: _valueToString(row[14]!.value),
                    doseCount: _valueToString(row[15]!.value),
                    doseType:
                        _valueToEnum(row[16]!.value, doseTypeStringToEnum),
                    doseCountLogic: _valueToEnum(
                        row[17]!.value, doseCountLogicStringToEnum),
                    vaccineTypes: _valueToString(row[18]!.value),
                    seriesGroups: _valueToString(row[19]!.value),
                  ),
                ],
              ),
            ],
          ),
        );
      } else if (seriesDose.conditionalSkip?.last.set_?.last.setID !=
          row[3]!.value.toString().trim()) {
        seriesDose.conditionalSkip!.last.set_?.add(
          VaxSet(
            setID: row[3]!.value.toString().trim(),
            setDescription: row[4]!.value.toString().trim(),
            effectiveDate: _valueToString(row[5]!.value),
            cessationDate: _valueToString(row[6]!.value),
            conditionLogic: _valueToString(row[7]!.value),
            condition: [
              Condition(
                conditionID: _valueToString(row[8]!.value),
                conditionType:
                    _valueToEnum(row[9]!.value, conditionTypeStringToEnum),
                startDate: _valueToString(row[10]!.value),
                endDate: _valueToString(row[11]!.value),
                beginAge: _valueToString(row[12]!.value),
                endAge: _valueToString(row[13]!.value),
                interval: _valueToString(row[14]!.value),
                doseCount: _valueToString(row[15]!.value),
                doseType: _valueToEnum(row[16]!.value, doseTypeStringToEnum),
                doseCountLogic:
                    _valueToEnum(row[17]!.value, doseCountLogicStringToEnum),
                vaccineTypes: _valueToString(row[18]!.value),
                seriesGroups: _valueToString(row[19]!.value),
              ),
            ],
          ),
        );
      } else if (seriesDose
              .conditionalSkip?.last.set_?.last.condition?.last.conditionID !=
          row[8]!.value.toString().trim()) {
        seriesDose.conditionalSkip!.last.set_?.last.condition?.add(
          Condition(
            conditionID: _valueToString(row[8]!.value),
            conditionType:
                _valueToEnum(row[9]!.value, conditionTypeStringToEnum),
            startDate: _valueToString(row[10]!.value),
            endDate: _valueToString(row[11]!.value),
            beginAge: _valueToString(row[12]!.value),
            endAge: _valueToString(row[13]!.value),
            interval: _valueToString(row[14]!.value),
            doseCount: _valueToString(row[15]!.value),
            doseType: _valueToEnum(row[16]!.value, doseTypeStringToEnum),
            doseCountLogic:
                _valueToEnum(row[17]!.value, doseCountLogicStringToEnum),
            vaccineTypes: _valueToString(row[18]!.value),
            seriesGroups: _valueToString(row[19]!.value),
          ),
        );
      }
    } else if (row[0]!.value.toString().contains('Recurring Dose') &&
        !row[1]!.value.toString().contains('Recurring Dose (Yes/No)')) {
      seriesDose = seriesDose.copyWith(
        recurringDose: binaryStringToEnum[row[1]!.value.toString().trim()],
      );
    } else if (row[0]!.value.toString().contains('Seasonal Recommendation') &&
        !row[1]!.value.toString().contains('Start Date') &&
        (!row[1]!.value.toString().contains('n/a') ||
            !row[2]!.value.toString().contains('n/a'))) {
      seriesDose = seriesDose.copyWith(
          seasonalRecommendation: SeasonalRecommendation(
        startDate: _valueToString(row[1]!.value),
        endDate: _valueToString(row[2]!.value),
      ));
    }
  }
  return seriesDose;
}

String? _valueToString(dynamic value) =>
    value.toString().trim().contains('n/a') ? null : value.toString().trim();

dynamic? _valueToEnum(dynamic value, Map map) =>
    value.toString().trim().contains('n/a')
        ? null
        : map[value.toString().trim()];
