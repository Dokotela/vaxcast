import 'package:freezed_annotation/freezed_annotation.dart';

enum Binary {
  @JsonValue('Yes')
  yes,
  @JsonValue('No')
  no,
  @JsonValue('')
  na,
}
