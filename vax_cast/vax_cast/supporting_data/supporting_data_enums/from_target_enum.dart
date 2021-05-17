import 'package:freezed_annotation/freezed_annotation.dart';

enum FromTarget {
  @JsonValue('1')
  dose1,
  @JsonValue('2')
  dose2,
  @JsonValue('')
  na,
}
