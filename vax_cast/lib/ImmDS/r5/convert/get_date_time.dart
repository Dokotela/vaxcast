DateTime getDateTime(String date) {
  if (date == '' || date == null) {
    return (null);
  } else {
    date = date.replaceAll('"', '');
    var dated = date.split('/');
    var year = int.parse(dated[2]);
    var month = int.parse(dated[0]);
    var day = int.parse(dated[1]);
    return DateTime(year, month, day);
  }
}
