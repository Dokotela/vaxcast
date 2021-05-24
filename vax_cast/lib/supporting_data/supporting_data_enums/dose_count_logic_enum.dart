import 'package:freezed_annotation/freezed_annotation.dart';

enum DoseCountLogic {
  @JsonValue('')
  none,
  @JsonValue('greater than')
  greaterThan,
  @JsonValue('equal to')
  equalTo,
}

const doseCountLogicStringToEnum = {
  '': DoseCountLogic.none,
  'greater than': DoseCountLogic.greaterThan,
  'equal to': DoseCountLogic.equalTo,
};

const doseCountLogicEnumToString = {
  DoseCountLogic.none: '',
  DoseCountLogic.greaterThan: 'greater than',
  DoseCountLogic.equalTo: 'equal to',
};
