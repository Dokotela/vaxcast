part of 'a_vax_series.dart';

Tuple2<String, TargetStatus> completed(TargetStatus status, VaxDate dateGiven,
        List<SeriesDose> seriesDose, int targetDose) =>
    targetDose == seriesDose.length && seriesDose.last.recurringDose == 'Yes'
        ? completeRecurring(status, dateGiven, seriesDose.last)
        : completeNonRecurring(status, dateGiven, seriesDose, targetDose);

Tuple2<String, TargetStatus> completeRecurring(
        TargetStatus status, VaxDate dateGiven, SeriesDose seriesDose) =>
    seriesDose.seasonalRecommendation == null
        ? null
        : status == TargetStatus.skipped ||
                (VaxDate.max().fromNullableString(
                            seriesDose.seasonalRecommendation.endDate) >
                        dateGiven &&
                    dateGiven >=
                        VaxDate.min().fromNullableString(
                            seriesDose.seasonalRecommendation.startDate))
            ? Tuple2('complete', status)
            : null;

Tuple2<String, TargetStatus> completeNonRecurring(TargetStatus status,
        VaxDate dateGiven, List<SeriesDose> seriesDose, int targetDose) =>
    seriesDose[targetDose - 1].seasonalRecommendation != null
        ? status == TargetStatus.satisfied || status == TargetStatus.skipped
            ? Tuple2(null, status)
            : null
        : targetDose == seriesDose.length
            ? Tuple2('complete', status)
            : Tuple2(null, status);
