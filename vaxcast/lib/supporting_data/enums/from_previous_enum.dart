import 'package:freezed_annotation/freezed_annotation.dart';

enum FromPrevious {
  @JsonValue('Y')
  yes,
  @JsonValue('N')
  no,
}

const fromPreviousStringToEnum = {
  'Y': FromPrevious.yes,
  'N': FromPrevious.no,
};

const fromPreviousEnumToString = {
  FromPrevious.yes: 'Y',
  FromPrevious.no: 'N',
};
