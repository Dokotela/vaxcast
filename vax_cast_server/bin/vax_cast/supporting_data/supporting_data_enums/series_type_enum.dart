import 'package:freezed_annotation/freezed_annotation.dart';

enum SeriesType {
  @JsonValue('Standard')
  standard,
  @JsonValue('Risk')
  risk,
}
