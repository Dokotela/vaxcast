import 'package:freezed_annotation/freezed_annotation.dart';

enum SetLogic {
  @JsonValue('AND')
  and,
  @JsonValue('OR')
  or,
}

const setLogicTypeStringToEnum = {
  'AND': SetLogic.and,
  'OR': SetLogic.or,
};

const setLogicTypeEnumToString = {
  SetLogic.and: 'AND',
  SetLogic.or: 'OR',
};
