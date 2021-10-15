import 'package:freezed_annotation/freezed_annotation.dart';

enum SeriesGroup {
  @JsonValue('1')
  one,
  @JsonValue('2')
  two,
  @JsonValue('3')
  three,
}

const seriesGroupStringToEnum = {
  '1': SeriesGroup.one,
  '2': SeriesGroup.two,
  '3': SeriesGroup.three,
};

const seriesGroupEnumToString = {
  SeriesGroup.one: '1',
  SeriesGroup.two: '2',
  SeriesGroup.three: '3',
};
