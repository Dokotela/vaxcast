import 'package:freezed_annotation/freezed_annotation.dart';

enum DoseType {
  @JsonValue('Total')
  total,
  @JsonValue('Valid')
  valid,
  @JsonValue('')
  none,
}
