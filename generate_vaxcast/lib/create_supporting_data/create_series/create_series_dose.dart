import 'package:generate_vaxcast/utils/utils.dart';
import 'package:vaxcast/vaxcast.dart';

SeriesDose createSeriesDose(int index, List<List<dynamic>> rows) {
  var seriesDose = SeriesDose();
  for (var i = index; i < rows.length; i++) {
    var row = rows[i];
    if (row[0] == null || row[0]!.toString() == '') {
      return seriesDose;
    } else if (row[0]!.toString().contains('Series Dose')) {
      seriesDose = seriesDose.copyWith(
          doseNumber: doseNumberStringToEnum[row[1]!.toString().trim()]);
    } else if (row[0]!.toString().contains('Age') &&
        !row[1]!.toString().contains('Absolute Minimum Age')) {
      if (seriesDose.age == null) {
        seriesDose = seriesDose.copyWith(
          age: [
            VaxAge(
              absMinAge: valueToString(row[1]!),
              minAge: valueToString(row[2]!),
              earliestRecAge: valueToString(row[3]!),
              latestRecAge: valueToString(row[4]!),
              maxAge: valueToString(row[5]!),
              effectiveDate: valueToString(row[6]!),
              cessationDate: valueToString(row[7]!),
            ),
          ],
        );
      } else {
        seriesDose.age!.add(
          VaxAge(
            absMinAge: valueToString(row[1]!),
            minAge: valueToString(row[2]!),
            earliestRecAge: valueToString(row[3]!),
            latestRecAge: valueToString(row[4]!),
            maxAge: valueToString(row[5]!),
            effectiveDate: valueToString(row[6]!),
            cessationDate: valueToString(row[7]!),
          ),
        );
      }
    } else if (row[0]!.toString().contains('Preferable Interval') &&
        !row[1]!.toString().contains('Previous Dose Administered? Y/N') &&
        !row[1]!.toString().contains('n/a')) {
      if (seriesDose.interval == null) {
        seriesDose = seriesDose.copyWith(interval: []);
      }

      /// extract the code from the text for the observation
      var open = row[4]!.toString().lastIndexOf('(');
      var close = row[4]!.toString().lastIndexOf(')');
      var code = '';
      var text = '';
      if (open != -1 && close != -1) {
        code = row[4]!.toString().substring(open + 1, close);
        text = row[4]!.toString().substring(0, open - 1);
      }
      seriesDose.interval!.add(Interval(
        fromPrevious: _valueToEnum(row[1]!, fromPreviousStringToEnum),
        fromTargetDose: _valueToEnum(row[2]!, fromTargetStringToEnum),
        fromMostRecent: valueToString(row[3]!),
        fromRelevantObs: open == -1 || close == -1
            ? null
            : ObservationCode(code: stringToEnum(code) as Obs?, text: text),
        absMinInt: valueToString(row[5]!),
        minInt: valueToString(row[6]!),
        earliestRecInt: valueToString(row[7]!),
        latestRecInt: valueToString(row[8]!),
        intervalPriority: valueToString(row[9]!),
        effectiveDate: valueToString(row[10]!),
        cessationDate: valueToString(row[11]!),
      ));
    } else if (row[0]!.toString().contains('Allowable Interval') &&
        !row[1]!.toString().contains('Previous Dose Administered? Y/N') &&
        !row[1]!.toString().contains('n/a')) {
      seriesDose = seriesDose.copyWith(
          allowableInterval: Interval(
        fromPrevious: _valueToEnum(row[1]!, fromPreviousStringToEnum),
        fromTargetDose: _valueToEnum(row[2]!, fromTargetStringToEnum),
        absMinInt: valueToString(row[3]!),
        effectiveDate: valueToString(row[4]!),
        cessationDate: valueToString(row[5]!),
      ));
    } else if (row[0]!.toString().contains('Preferable Vaccine') &&
        !row[1]!.toString().contains('Vaccine Type (CVX)') &&
        !row[1]!.toString().contains('n/a')) {
      if (seriesDose.preferableVaccine == null) {
        seriesDose = seriesDose.copyWith(preferableVaccine: []);
      }

      /// extract the code from the text for the observation
      var open = row[1]!.toString().lastIndexOf('(');
      var close = row[1]!.toString().lastIndexOf(')');
      var code = '';
      var text = '';
      if (open != -1 && close != -1) {
        code = row[1]!.toString().substring(open + 1, close);
        text = row[1]!.toString().substring(0, open - 1);
      }
      String? mvx;
      String? tradeName;
      if (!row[4]!.toString().contains('n/a')) {
        open = row[4]!.toString().lastIndexOf('(');
        close = row[4]!.toString().lastIndexOf(')');
        if (open != -1 && close != -1) {
          mvx = row[4]!.toString().substring(open + 1, close);
          tradeName = row[4]!.toString().substring(0, open - 1);
        }
      }

      seriesDose.preferableVaccine!.add(Vaccine(
        vaccineType: text,
        cvx: cvxStringToEnumMap[code],
        beginAge: valueToString(row[2]!),
        endAge: valueToString(row[3]!),
        tradeName: tradeName,
        mvx: mvx,
        volume: valueToString(row[5]!),
        forecastVaccineType: valueToString(row[6]!),
      ));
    } else if (row[0]!.toString().contains('Allowable Vaccine') &&
        !row[1]!.toString().contains('Vaccine Type (CVX)') &&
        !row[1]!.toString().contains('n/a')) {
      if (seriesDose.allowableVaccine == null) {
        seriesDose = seriesDose.copyWith(allowableVaccine: []);
      }

      /// extract the code from the text for the observation
      var open = row[1]!.toString().lastIndexOf('(');
      var close = row[1]!.toString().lastIndexOf(')');
      var code = '';
      var text = '';
      if (open != -1 && close != -1) {
        code = row[1]!.toString().substring(open + 1, close);
        text = row[1]!.toString().substring(0, open - 1);
      }

      seriesDose.allowableVaccine!.add(Vaccine(
        vaccineType: text,
        cvx: cvxStringToEnumMap[code],
        beginAge: valueToString(row[2]!),
        endAge: valueToString(row[3]!),
      ));
    } else if (row[0]!.toString().contains('Inadvertent Vaccine') &&
        !row[1]!.toString().contains('Vaccine Type (CVX)') &&
        !row[1]!.toString().contains('n/a')) {
      if (seriesDose.inadvertentVaccine == null) {
        seriesDose = seriesDose.copyWith(inadvertentVaccine: []);
      }

      /// extract the code from the text for the observation
      var open = row[1]!.toString().lastIndexOf('(');
      var close = row[1]!.toString().lastIndexOf(')');
      var code = '';
      var text = '';
      if (open != -1 && close != -1) {
        code = row[1]!.toString().substring(open + 1, close);
        text = row[1]!.toString().substring(0, open - 1);
      }

      seriesDose.inadvertentVaccine!.add(Vaccine(
        vaccineType: text,
        cvx: cvxStringToEnumMap[code],
      ));
    } else if (row[0]!.toString().contains('Conditional Skip') &&
        !row[1]!.toString().contains('Skip Context') &&
        !row[1]!.toString().contains('n/a')) {
      if (seriesDose.conditionalSkip == null) {
        seriesDose = seriesDose.copyWith(conditionalSkip: [
          ConditionalSkip(
            context: skipContextStringToEnum[row[1]!.toString().trim()],
            setLogic: row[2]!.toString().trim(),
            set_: [
              VaxSet(
                setID: valueToString(row[3]!),
                setDescription: row[4]!.toString().trim(),
                effectiveDate: valueToString(row[5]!),
                cessationDate: valueToString(row[6]!),
                conditionLogic: valueToString(row[7]!),
                condition: [
                  Condition(
                    conditionID: valueToString(row[8]!),
                    conditionType:
                        _valueToEnum(row[9]!, conditionTypeStringToEnum),
                    startDate: valueToString(row[10]!),
                    endDate: valueToString(row[11]!),
                    beginAge: valueToString(row[12]!),
                    endAge: valueToString(row[13]!),
                    interval: valueToString(row[14]!),
                    doseCount: valueToString(row[15]!),
                    doseType: _valueToEnum(row[16]!, doseTypeStringToEnum),
                    doseCountLogic:
                        _valueToEnum(row[17]!, doseCountLogicStringToEnum),
                    vaccineTypes: valueToString(row[18]!),
                    seriesGroups: valueToString(row[19]!),
                  )
                ],
              )
            ],
          ),
        ]);
      } else if (seriesDose.conditionalSkip?.last.context !=
              _valueToEnum(row[1]!, skipContextStringToEnum) ||
          seriesDose.conditionalSkip?.last.setLogic !=
              row[2]!.toString().trim()) {
        seriesDose.conditionalSkip!.add(
          ConditionalSkip(
            context: skipContextStringToEnum[row[1]!.toString().trim()],
            setLogic: row[2]!.toString().trim(),
            set_: [
              VaxSet(
                setID: valueToString(row[3]!),
                setDescription: row[4]!.toString().trim(),
                effectiveDate: valueToString(row[5]!),
                cessationDate: valueToString(row[6]!),
                conditionLogic: valueToString(row[7]!),
                condition: [
                  Condition(
                    conditionID: valueToString(row[8]!),
                    conditionType:
                        _valueToEnum(row[9]!, conditionTypeStringToEnum),
                    startDate: valueToString(row[10]!),
                    endDate: valueToString(row[11]!),
                    beginAge: valueToString(row[12]!),
                    endAge: valueToString(row[13]!),
                    interval: valueToString(row[14]!),
                    doseCount: valueToString(row[15]!),
                    doseType: _valueToEnum(row[16]!, doseTypeStringToEnum),
                    doseCountLogic:
                        _valueToEnum(row[17]!, doseCountLogicStringToEnum),
                    vaccineTypes: valueToString(row[18]!),
                    seriesGroups: valueToString(row[19]!),
                  ),
                ],
              ),
            ],
          ),
        );
      } else if (seriesDose.conditionalSkip?.last.set_?.last.setID !=
          row[3]!.toString().trim()) {
        seriesDose.conditionalSkip!.last.set_?.add(
          VaxSet(
            setID: valueToString(row[3]!),
            setDescription: row[4]!.toString().trim(),
            effectiveDate: valueToString(row[5]!),
            cessationDate: valueToString(row[6]!),
            conditionLogic: valueToString(row[7]!),
            condition: [
              Condition(
                conditionID: valueToString(row[8]!),
                conditionType: _valueToEnum(row[9]!, conditionTypeStringToEnum),
                startDate: valueToString(row[10]!),
                endDate: valueToString(row[11]!),
                beginAge: valueToString(row[12]!),
                endAge: valueToString(row[13]!),
                interval: valueToString(row[14]!),
                doseCount: valueToString(row[15]!),
                doseType: _valueToEnum(row[16]!, doseTypeStringToEnum),
                doseCountLogic:
                    _valueToEnum(row[17]!, doseCountLogicStringToEnum),
                vaccineTypes: valueToString(row[18]!),
                seriesGroups: valueToString(row[19]!),
              ),
            ],
          ),
        );
      } else if (seriesDose
              .conditionalSkip?.last.set_?.last.condition?.last.conditionID !=
          row[8]!.toString().trim()) {
        seriesDose.conditionalSkip!.last.set_?.last.condition?.add(
          Condition(
            conditionID: valueToString(row[8]!),
            conditionType: _valueToEnum(row[9]!, conditionTypeStringToEnum),
            startDate: valueToString(row[10]!),
            endDate: valueToString(row[11]!),
            beginAge: valueToString(row[12]!),
            endAge: valueToString(row[13]!),
            interval: valueToString(row[14]!),
            doseCount: valueToString(row[15]!),
            doseType: _valueToEnum(row[16]!, doseTypeStringToEnum),
            doseCountLogic: _valueToEnum(row[17]!, doseCountLogicStringToEnum),
            vaccineTypes: valueToString(row[18]!),
            seriesGroups: valueToString(row[19]!),
          ),
        );
      }
    } else if (row[0]!.toString().contains('Recurring Dose') &&
        !row[1]!.toString().contains('Recurring Dose (Yes/No)')) {
      seriesDose = seriesDose.copyWith(
        recurringDose: binaryStringToEnum[row[1]!.toString().trim()],
      );
    } else if (row[0]!.toString().contains('Seasonal Recommendation') &&
        !row[1]!.toString().contains('Start Date') &&
        (!row[1]!.toString().contains('n/a') ||
            !row[2]!.toString().contains('n/a'))) {
      seriesDose = seriesDose.copyWith(
          seasonalRecommendation: SeasonalRecommendation(
        startDate: valueToString(row[1]!),
        endDate: valueToString(row[2]!),
      ));
    }
  }
  return seriesDose;
}

dynamic _valueToEnum(dynamic value, Map map) =>
    value.toString().trim().contains('n/a')
        ? null
        : map[value.toString().trim()];
