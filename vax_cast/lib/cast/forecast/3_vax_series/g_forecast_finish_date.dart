part of 'a_vax_series.dart';

VaxDate getForecastFinishDate(
    String seriesStatus,
    RecommendedDose recommendedDose,
    int targetDose,
    List<SeriesDose> seriesDose,
    VaxDate dob,
    VaxDate assessmentDate) {
  VaxDate forecastFinishDate;
  if (seriesStatus == 'complete') {
    forecastFinishDate = VaxDate.min();
  } else {
    forecastFinishDate = recommendedDose.earliestDate;
    for (var i = targetDose + 1; i < seriesDose.length; i++) {
      if (seriesDose[i].interval != null) {
        if (seriesDose[i].interval[0].fromPrevious == 'Y') {
          forecastFinishDate =
              forecastFinishDate.change(seriesDose[i].interval[0].absMinInt);
        }
      }
      forecastFinishDate = forecastFinishDate >
              dob.minIfNull(
                  seriesDoseAge(seriesDose[i], assessmentDate).absMinAge)
          ? forecastFinishDate
          : dob.minIfNull(
              seriesDoseAge(seriesDose[i], assessmentDate).absMinAge);
    }
  }
  return forecastFinishDate;
}

bool getCompleteable(SeriesDose seriesDose, VaxDate assessmentDate,
    VaxDate forecastFinishDate, VaxDate dob) {
  String seriesAge = seriesDoseAge(
    seriesDose,
    assessmentDate,
  ).maxAge;
  return forecastFinishDate < dob.maxIfNull(seriesAge);
}

VaxAge seriesDoseAge(SeriesDose seriesDose, VaxDate assessmentDate) =>
    seriesDose.age.length == 1
        ? seriesDose.age[0]
        : VaxDate.mmddyyyy(seriesDose.age[0].cessationDate) >= assessmentDate
            ? seriesDose.age[0]
            : seriesDose.age[1];
