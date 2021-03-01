// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vax_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
VaxSet _$VaxSetFromJson(Map<String, dynamic> json) {
  return _VaxSet.fromJson(json);
}

/// @nodoc
class _$VaxSetTearOff {
  const _$VaxSetTearOff();

// ignore: unused_element
  _VaxSet call(
      {String setID,
      String setDescription,
      String effectiveDate,
      String cessationDate,
      String conditionLogic,
      List<Condition> condition}) {
    return _VaxSet(
      setID: setID,
      setDescription: setDescription,
      effectiveDate: effectiveDate,
      cessationDate: cessationDate,
      conditionLogic: conditionLogic,
      condition: condition,
    );
  }

// ignore: unused_element
  VaxSet fromJson(Map<String, Object> json) {
    return VaxSet.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $VaxSet = _$VaxSetTearOff();

/// @nodoc
mixin _$VaxSet {
  String get setID;
  String get setDescription;
  String get effectiveDate;
  String get cessationDate;
  String get conditionLogic;
  List<Condition> get condition;

  Map<String, dynamic> toJson();
  $VaxSetCopyWith<VaxSet> get copyWith;
}

/// @nodoc
abstract class $VaxSetCopyWith<$Res> {
  factory $VaxSetCopyWith(VaxSet value, $Res Function(VaxSet) then) =
      _$VaxSetCopyWithImpl<$Res>;
  $Res call(
      {String setID,
      String setDescription,
      String effectiveDate,
      String cessationDate,
      String conditionLogic,
      List<Condition> condition});
}

/// @nodoc
class _$VaxSetCopyWithImpl<$Res> implements $VaxSetCopyWith<$Res> {
  _$VaxSetCopyWithImpl(this._value, this._then);

  final VaxSet _value;
  // ignore: unused_field
  final $Res Function(VaxSet) _then;

  @override
  $Res call({
    Object setID = freezed,
    Object setDescription = freezed,
    Object effectiveDate = freezed,
    Object cessationDate = freezed,
    Object conditionLogic = freezed,
    Object condition = freezed,
  }) {
    return _then(_value.copyWith(
      setID: setID == freezed ? _value.setID : setID as String,
      setDescription: setDescription == freezed
          ? _value.setDescription
          : setDescription as String,
      effectiveDate: effectiveDate == freezed
          ? _value.effectiveDate
          : effectiveDate as String,
      cessationDate: cessationDate == freezed
          ? _value.cessationDate
          : cessationDate as String,
      conditionLogic: conditionLogic == freezed
          ? _value.conditionLogic
          : conditionLogic as String,
      condition: condition == freezed
          ? _value.condition
          : condition as List<Condition>,
    ));
  }
}

/// @nodoc
abstract class _$VaxSetCopyWith<$Res> implements $VaxSetCopyWith<$Res> {
  factory _$VaxSetCopyWith(_VaxSet value, $Res Function(_VaxSet) then) =
      __$VaxSetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String setID,
      String setDescription,
      String effectiveDate,
      String cessationDate,
      String conditionLogic,
      List<Condition> condition});
}

/// @nodoc
class __$VaxSetCopyWithImpl<$Res> extends _$VaxSetCopyWithImpl<$Res>
    implements _$VaxSetCopyWith<$Res> {
  __$VaxSetCopyWithImpl(_VaxSet _value, $Res Function(_VaxSet) _then)
      : super(_value, (v) => _then(v as _VaxSet));

  @override
  _VaxSet get _value => super._value as _VaxSet;

  @override
  $Res call({
    Object setID = freezed,
    Object setDescription = freezed,
    Object effectiveDate = freezed,
    Object cessationDate = freezed,
    Object conditionLogic = freezed,
    Object condition = freezed,
  }) {
    return _then(_VaxSet(
      setID: setID == freezed ? _value.setID : setID as String,
      setDescription: setDescription == freezed
          ? _value.setDescription
          : setDescription as String,
      effectiveDate: effectiveDate == freezed
          ? _value.effectiveDate
          : effectiveDate as String,
      cessationDate: cessationDate == freezed
          ? _value.cessationDate
          : cessationDate as String,
      conditionLogic: conditionLogic == freezed
          ? _value.conditionLogic
          : conditionLogic as String,
      condition: condition == freezed
          ? _value.condition
          : condition as List<Condition>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_VaxSet implements _VaxSet {
  _$_VaxSet(
      {this.setID,
      this.setDescription,
      this.effectiveDate,
      this.cessationDate,
      this.conditionLogic,
      this.condition});

  factory _$_VaxSet.fromJson(Map<String, dynamic> json) =>
      _$_$_VaxSetFromJson(json);

  @override
  final String setID;
  @override
  final String setDescription;
  @override
  final String effectiveDate;
  @override
  final String cessationDate;
  @override
  final String conditionLogic;
  @override
  final List<Condition> condition;

  @override
  String toString() {
    return 'VaxSet(setID: $setID, setDescription: $setDescription, effectiveDate: $effectiveDate, cessationDate: $cessationDate, conditionLogic: $conditionLogic, condition: $condition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaxSet &&
            (identical(other.setID, setID) ||
                const DeepCollectionEquality().equals(other.setID, setID)) &&
            (identical(other.setDescription, setDescription) ||
                const DeepCollectionEquality()
                    .equals(other.setDescription, setDescription)) &&
            (identical(other.effectiveDate, effectiveDate) ||
                const DeepCollectionEquality()
                    .equals(other.effectiveDate, effectiveDate)) &&
            (identical(other.cessationDate, cessationDate) ||
                const DeepCollectionEquality()
                    .equals(other.cessationDate, cessationDate)) &&
            (identical(other.conditionLogic, conditionLogic) ||
                const DeepCollectionEquality()
                    .equals(other.conditionLogic, conditionLogic)) &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(setID) ^
      const DeepCollectionEquality().hash(setDescription) ^
      const DeepCollectionEquality().hash(effectiveDate) ^
      const DeepCollectionEquality().hash(cessationDate) ^
      const DeepCollectionEquality().hash(conditionLogic) ^
      const DeepCollectionEquality().hash(condition);

  @override
  _$VaxSetCopyWith<_VaxSet> get copyWith =>
      __$VaxSetCopyWithImpl<_VaxSet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VaxSetToJson(this);
  }
}

abstract class _VaxSet implements VaxSet {
  factory _VaxSet(
      {String setID,
      String setDescription,
      String effectiveDate,
      String cessationDate,
      String conditionLogic,
      List<Condition> condition}) = _$_VaxSet;

  factory _VaxSet.fromJson(Map<String, dynamic> json) = _$_VaxSet.fromJson;

  @override
  String get setID;
  @override
  String get setDescription;
  @override
  String get effectiveDate;
  @override
  String get cessationDate;
  @override
  String get conditionLogic;
  @override
  List<Condition> get condition;
  @override
  _$VaxSetCopyWith<_VaxSet> get copyWith;
}
