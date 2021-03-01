import 'package:freezed_annotation/freezed_annotation.dart';

enum SeriesPreference {
  @JsonValue('1')
  one,
  @JsonValue('2')
  two,
  @JsonValue('3')
  three,
  @JsonValue('4')
  four,
  @JsonValue('5')
  five,
  @JsonValue('6')
  six,
  @JsonValue('')
  none,
}
