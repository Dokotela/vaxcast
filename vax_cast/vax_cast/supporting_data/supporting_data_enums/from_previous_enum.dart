import 'package:freezed_annotation/freezed_annotation.dart';

enum FromPrevious {
  @JsonValue('Y')
  yes,
  @JsonValue('N')
  no,
}
