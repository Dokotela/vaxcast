import 'package:date_utils/date_utils.dart';

class VaxDate extends DateTime {
  VaxDate(int year, int month, int day) : super(year, month, day);

  VaxDate.fromDateTime(DateTime dateTime)
      : super(dateTime.year, dateTime.month, dateTime.day);

  VaxDate.fromString(String date)
      : super(
          DateTime.tryParse(date)?.year ?? 2999,
          DateTime.tryParse(date)?.month ?? 12,
          DateTime.tryParse(date)?.day ?? 31,
        );

  VaxDate.fromJson(String date)
      : super(DateTime.parse(date).year, DateTime.parse(date).month,
            DateTime.parse(date).day);

  VaxDate.fromMMDDYYYY(String date)
      : super(
          int.tryParse(date.split('/')[2]) ?? 2999,
          int.tryParse(date.split('/')[0]) ?? 12,
          int.tryParse(date.split('/')[1]) ?? 31,
        );

  VaxDate.fromYYYYMMDD(String date)
      : super(
          int.tryParse(date.substring(0, 4)) ?? 1900,
          int.tryParse(date.substring(4, 6)) ?? 01,
          int.tryParse(date.substring(6, 8)) ?? 01,
        );

  // VaxDate.fromNullableString(String? date) :
  //     date == null || date == '' ?
  //     super(
  //       this.year,
  //       this.month, this.day,) :  VaxDate.fromYYYYMMDD(date);

  VaxDate.now() : super.now();

  VaxDate.min() : super(1900, 1, 1);

  VaxDate.max() : super(2999, 12, 31);

  String toString() => '$year/$month/$day';

  String toJson() => this.toString();

  VaxDate minIfNull(String dateChange) =>
      dateChange == '' ? VaxDate(1900, 1, 1) : change(dateChange);

  VaxDate maxIfNull(String dateChange) =>
      dateChange == '' ? VaxDate(2999, 12, 31) : change(dateChange);

  bool operator <(VaxDate vaxDate) => (DateTime(year, month, day)
      .isBefore(DateTime(vaxDate.year, vaxDate.month, vaxDate.day)));

  bool operator >(VaxDate vaxDate) => (DateTime(year, month, day)
      .isAfter(DateTime(vaxDate.year, vaxDate.month, vaxDate.day)));

  bool operator <=(VaxDate vaxDate) => (DateTime(year, month, day)
          .isBefore(DateTime(vaxDate.year, vaxDate.month, vaxDate.day)) ||
      DateTime(year, month, day).isAtSameMomentAs(
          DateTime(vaxDate.year, vaxDate.month, vaxDate.day)));

  bool operator >=(VaxDate vaxDate) => (DateTime(year, month, day)
          .isAfter(DateTime(vaxDate.year, vaxDate.month, vaxDate.day)) ||
      DateTime(year, month, day).isAtSameMomentAs(
          DateTime(vaxDate.year, vaxDate.month, vaxDate.day)));

  bool isEqualTo(VaxDate vaxDate) => (DateTime(year, month, day)
      .isAtSameMomentAs(DateTime(vaxDate.year, vaxDate.month, vaxDate.day)));

  VaxDate change(String howMuch) =>
      howMuch == '' ? this : _parseDateString(howMuch);

  VaxDate changeIfNotNull(String howMuch) =>
      howMuch == '' ? VaxDate(1900, 1, 1) : change(howMuch);

  VaxDate _parseDateString(String change) {
    var years = 0, months = 0, weeks = 0, days = 0, posNeg = 1;
    var time = change.split(' ');
    for (var i = 0; i < time.length; i++) {
      if (i > 1) {
        if (time[i - 2] == '-') {
          posNeg = -1;
        } else {
          posNeg = 1;
        }
      }
      if (time[i].contains('year')) {
        years += int.tryParse(time[i - 1]) ?? 0 * posNeg;
      }
      if (time[i].contains('month')) {
        months += int.tryParse(time[i - 1]) ?? 0 * posNeg;
      }
      if (time[i].contains('week')) {
        weeks += int.tryParse(time[i - 1]) ?? 0 * posNeg;
      }
      if (time[i].contains('day')) {
        days += int.tryParse(time[i - 1]) ?? 0 * posNeg;
      }
    }
    return _calculateTime(years, months, 7 * weeks + days);
  }

  VaxDate _calculateTime(int years, int months, int days) {
    var newDate = DateTime(year + years, month + months, 1);
    if (DateUtils.lastDayOfMonth(newDate).day < day) {
      newDate = DateTime(newDate.year, newDate.month + 1, 1);
    } else {
      newDate = DateTime(newDate.year, newDate.month, day);
    }
    return VaxDate(newDate.year, newDate.month, newDate.day + days);
  }
}

VaxDate LatestOf(List<VaxDate> dates) {
  var latest;
  for (final date in dates) {
    latest == null
        ? date
        : latest > date
            ? latest
            : date;
  }
  return latest;
}

VaxDate EarliestOf(List<VaxDate> dates) {
  var earliest;
  for (final date in dates) {
    if (earliest == null) {
      earliest = date;
    } else {
      earliest = earliest < date ? earliest : date;
    }
  }
  return earliest;
}
