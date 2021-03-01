import 'package:freezed_annotation/freezed_annotation.dart';

enum SkipContext {
  @JsonValue('Evaluation')
  evaluation,
  @JsonValue('Forecast')
  forecast,
  @JsonValue('Both')
  both,
}
