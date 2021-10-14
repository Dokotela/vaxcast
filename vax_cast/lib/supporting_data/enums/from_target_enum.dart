import 'package:freezed_annotation/freezed_annotation.dart';

enum FromTarget {
  @JsonValue('1')
  dose1,
  @JsonValue('2')
  dose2,
  @JsonValue('')
  na,
}

const fromTargetStringToEnum = {
  '1': FromTarget.dose1,
  '2': FromTarget.dose2,
  '': FromTarget.na,
};

const fromTargetEnumToString = {
  FromTarget.dose1: '1',
  FromTarget.dose2: '2',
  FromTarget.na: '',
};
