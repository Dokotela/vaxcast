import 'package:excel/excel.dart';
import 'package:vax_cast/vax_cast.dart';

import '../value_to_string.dart';

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
              absMinAge: valueToString(row[1]!.value),
              minAge: valueToString(row[2]!.value),
              earliestRecAge: valueToString(row[3]!.value),
              latestRecAge: valueToString(row[4]!.value),
              maxAge: valueToString(row[5]!.value),
              effectiveDate: valueToString(row[6]!.value),
              cessationDate: valueToString(row[7]!.value),
            ),
          ],
        );
      } else {
        seriesDose.age!.add(
          VaxAge(
            absMinAge: valueToString(row[1]!.value),
            minAge: valueToString(row[2]!.value),
            earliestRecAge: valueToString(row[3]!.value),
            latestRecAge: valueToString(row[4]!.value),
            maxAge: valueToString(row[5]!.value),
            effectiveDate: valueToString(row[6]!.value),
            cessationDate: valueToString(row[7]!.value),
          ),
        );
      }
    } else if (row[0]!.value.toString().contains('Preferable Interval') &&
        !row[1]!.value.toString().contains('Previous Dose Administered? Y/N') &&
        !row[1]!.value.toString().contains('n/a')) {
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
        fromMostRecent: valueToString(row[3]!.value),
        fromRelevantObs: open == -1 || close == -1
            ? null
            : ObservationCode(code: ObsStringToEnumMap[code], text: text),
        absMinInt: valueToString(row[5]!.value),
        minInt: valueToString(row[6]!.value),
        earliestRecInt: valueToString(row[7]!.value),
        latestRecInt: valueToString(row[8]!.value),
        intervalPriority: valueToString(row[9]!.value),
        effectiveDate: valueToString(row[10]!.value),
        cessationDate: valueToString(row[11]!.value),
      ));
    } else if (row[0]!.value.toString().contains('Allowable Interval') &&
        !row[1]!.value.toString().contains('Previous Dose Administered? Y/N') &&
        !row[1]!.value.toString().contains('n/a')) {
      seriesDose = seriesDose.copyWith(
          allowableInterval: Interval(
        fromPrevious: _valueToEnum(row[1]!.value, fromPreviousStringToEnum),
        fromTargetDose: _valueToEnum(row[2]!.value, fromTargetStringToEnum),
        absMinInt: valueToString(row[3]!.value),
        effectiveDate: valueToString(row[4]!.value),
        cessationDate: valueToString(row[5]!.value),
      ));
    } else if (row[0]!.value.toString().contains('Preferable Vaccine') &&
        !row[1]!.value.toString().contains('Vaccine Type (CVX)') &&
        !row[1]!.value.toString().contains('n/a')) {
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
      String? mvx;
      String? tradeName;
      if (!row[4]!.value.toString().contains('n/a')) {
        open = row[4]!.value.toString().lastIndexOf('(');
        close = row[4]!.value.toString().lastIndexOf(')');
        if (open != -1 && close != -1) {
          mvx = row[4]!.value.toString().substring(open + 1, close);
          tradeName = row[4]!.value.toString().substring(0, open - 1);
        }
      }

      seriesDose.preferableVaccine!.add(Vaccine(
        vaccineType: text,
        cvx: cvxStringToEnumMap[code],
        beginAge: valueToString(row[2]!.value),
        endAge: valueToString(row[3]!.value),
        tradeName: tradeName,
        mvx: mvx,
        volume: valueToString(row[5]!.value),
        forecastVaccineType: valueToString(row[6]!.value),
      ));
    } else if (row[0]!.value.toString().contains('Allowable Vaccine') &&
        !row[1]!.value.toString().contains('Vaccine Type (CVX)') &&
        !row[1]!.value.toString().contains('n/a')) {
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
        beginAge: valueToString(row[2]!.value),
        endAge: valueToString(row[3]!.value),
      ));
    } else if (row[0]!.value.toString().contains('Inadvertent Vaccine') &&
        !row[1]!.value.toString().contains('Vaccine Type (CVX)') &&
        !row[1]!.value.toString().contains('n/a')) {
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
        !row[1]!.value.toString().contains('Skip Context') &&
        !row[1]!.value.toString().contains('n/a')) {
      if (seriesDose.conditionalSkip == null) {
        seriesDose = seriesDose.copyWith(conditionalSkip: [
          ConditionalSkip(
            context: skipContextStringToEnum[row[1]!.value.toString().trim()],
            setLogic: row[2]!.value.toString().trim(),
            set_: [
              VaxSet(
                setID: valueToString(row[3]!.value),
                setDescription: row[4]!.value.toString().trim(),
                effectiveDate: valueToString(row[5]!.value),
                cessationDate: valueToString(row[6]!.value),
                conditionLogic: valueToString(row[7]!.value),
                condition: [
                  Condition(
                    conditionID: valueToString(row[8]!.value),
                    conditionType:
                        _valueToEnum(row[9]!.value, conditionTypeStringToEnum),
                    startDate: valueToString(row[10]!.value),
                    endDate: valueToString(row[11]!.value),
                    beginAge: valueToString(row[12]!.value),
                    endAge: valueToString(row[13]!.value),
                    interval: valueToString(row[14]!.value),
                    doseCount: valueToString(row[15]!.value),
                    doseType:
                        _valueToEnum(row[16]!.value, doseTypeStringToEnum),
                    doseCountLogic: _valueToEnum(
                        row[17]!.value, doseCountLogicStringToEnum),
                    vaccineTypes: valueToString(row[18]!.value),
                    seriesGroups: valueToString(row[19]!.value),
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
                setID: valueToString(row[3]!.value),
                setDescription: row[4]!.value.toString().trim(),
                effectiveDate: valueToString(row[5]!.value),
                cessationDate: valueToString(row[6]!.value),
                conditionLogic: valueToString(row[7]!.value),
                condition: [
                  Condition(
                    conditionID: valueToString(row[8]!.value),
                    conditionType:
                        _valueToEnum(row[9]!.value, conditionTypeStringToEnum),
                    startDate: valueToString(row[10]!.value),
                    endDate: valueToString(row[11]!.value),
                    beginAge: valueToString(row[12]!.value),
                    endAge: valueToString(row[13]!.value),
                    interval: valueToString(row[14]!.value),
                    doseCount: valueToString(row[15]!.value),
                    doseType:
                        _valueToEnum(row[16]!.value, doseTypeStringToEnum),
                    doseCountLogic: _valueToEnum(
                        row[17]!.value, doseCountLogicStringToEnum),
                    vaccineTypes: valueToString(row[18]!.value),
                    seriesGroups: valueToString(row[19]!.value),
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
            setID: valueToString(row[3]!.value),
            setDescription: row[4]!.value.toString().trim(),
            effectiveDate: valueToString(row[5]!.value),
            cessationDate: valueToString(row[6]!.value),
            conditionLogic: valueToString(row[7]!.value),
            condition: [
              Condition(
                conditionID: valueToString(row[8]!.value),
                conditionType:
                    _valueToEnum(row[9]!.value, conditionTypeStringToEnum),
                startDate: valueToString(row[10]!.value),
                endDate: valueToString(row[11]!.value),
                beginAge: valueToString(row[12]!.value),
                endAge: valueToString(row[13]!.value),
                interval: valueToString(row[14]!.value),
                doseCount: valueToString(row[15]!.value),
                doseType: _valueToEnum(row[16]!.value, doseTypeStringToEnum),
                doseCountLogic:
                    _valueToEnum(row[17]!.value, doseCountLogicStringToEnum),
                vaccineTypes: valueToString(row[18]!.value),
                seriesGroups: valueToString(row[19]!.value),
              ),
            ],
          ),
        );
      } else if (seriesDose
              .conditionalSkip?.last.set_?.last.condition?.last.conditionID !=
          row[8]!.value.toString().trim()) {
        seriesDose.conditionalSkip!.last.set_?.last.condition?.add(
          Condition(
            conditionID: valueToString(row[8]!.value),
            conditionType:
                _valueToEnum(row[9]!.value, conditionTypeStringToEnum),
            startDate: valueToString(row[10]!.value),
            endDate: valueToString(row[11]!.value),
            beginAge: valueToString(row[12]!.value),
            endAge: valueToString(row[13]!.value),
            interval: valueToString(row[14]!.value),
            doseCount: valueToString(row[15]!.value),
            doseType: _valueToEnum(row[16]!.value, doseTypeStringToEnum),
            doseCountLogic:
                _valueToEnum(row[17]!.value, doseCountLogicStringToEnum),
            vaccineTypes: valueToString(row[18]!.value),
            seriesGroups: valueToString(row[19]!.value),
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
        startDate: valueToString(row[1]!.value),
        endDate: valueToString(row[2]!.value),
      ));
    }
  }
  return seriesDose;
}

dynamic _valueToEnum(dynamic value, Map map) =>
    value.toString().trim().contains('n/a')
        ? null
        : map[value.toString().trim()];
