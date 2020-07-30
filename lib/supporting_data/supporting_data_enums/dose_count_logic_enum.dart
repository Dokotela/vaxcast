import 'package:freezed_annotation/freezed_annotation.dart';

enum DoseCountLogic {
  @JsonValue('')
  none,
  @JsonValue('greater than')
  greaterThan,
  @JsonValue('equal to')
  equalTo,
}
