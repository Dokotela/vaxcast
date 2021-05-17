import 'package:freezed_annotation/freezed_annotation.dart';

enum Gender {
  @JsonValue('Female')
  female,
  @JsonValue('Transgender')
  transgender,
  @JsonValue('Unknown')
  unknown,
  @JsonValue('Male')
  male,
}
