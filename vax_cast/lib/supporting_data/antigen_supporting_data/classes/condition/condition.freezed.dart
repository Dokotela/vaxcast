// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return _Condition.fromJson(json);
}

/// @nodoc
class _$ConditionTearOff {
  const _$ConditionTearOff();

  _Condition call(
      {String? conditionID,
      ConditionType? conditionType,
      String? startDate,
      String? endDate,
      String? beginAge,
      String? endAge,
      String? interval,
      String? doseCount,
      DoseType? doseType,
      DoseCountLogic? doseCountLogic,
      String? vaccineTypes,
      String? seriesGroups}) {
    return _Condition(
      conditionID: conditionID,
      conditionType: conditionType,
      startDate: startDate,
      endDate: endDate,
      beginAge: beginAge,
      endAge: endAge,
      interval: interval,
      doseCount: doseCount,
      doseType: doseType,
      doseCountLogic: doseCountLogic,
      vaccineTypes: vaccineTypes,
      seriesGroups: seriesGroups,
    );
  }

  Condition fromJson(Map<String, Object> json) {
    return Condition.fromJson(json);
  }
}

/// @nodoc
const $Condition = _$ConditionTearOff();

/// @nodoc
mixin _$Condition {
  String? get conditionID => throw _privateConstructorUsedError;
  ConditionType? get conditionType => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  String? get beginAge => throw _privateConstructorUsedError;
  String? get endAge => throw _privateConstructorUsedError;
  String? get interval => throw _privateConstructorUsedError;
  String? get doseCount => throw _privateConstructorUsedError;
  DoseType? get doseType => throw _privateConstructorUsedError;
  DoseCountLogic? get doseCountLogic => throw _privateConstructorUsedError;
  String? get vaccineTypes => throw _privateConstructorUsedError;
  String? get seriesGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionCopyWith<Condition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionCopyWith<$Res> {
  factory $ConditionCopyWith(Condition value, $Res Function(Condition) then) =
      _$ConditionCopyWithImpl<$Res>;
  $Res call(
      {String? conditionID,
      ConditionType? conditionType,
      String? startDate,
      String? endDate,
      String? beginAge,
      String? endAge,
      String? interval,
      String? doseCount,
      DoseType? doseType,
      DoseCountLogic? doseCountLogic,
      String? vaccineTypes,
      String? seriesGroups});
}

/// @nodoc
class _$ConditionCopyWithImpl<$Res> implements $ConditionCopyWith<$Res> {
  _$ConditionCopyWithImpl(this._value, this._then);

  final Condition _value;
  // ignore: unused_field
  final $Res Function(Condition) _then;

  @override
  $Res call({
    Object? conditionID = freezed,
    Object? conditionType = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? beginAge = freezed,
    Object? endAge = freezed,
    Object? interval = freezed,
    Object? doseCount = freezed,
    Object? doseType = freezed,
    Object? doseCountLogic = freezed,
    Object? vaccineTypes = freezed,
    Object? seriesGroups = freezed,
  }) {
    return _then(_value.copyWith(
      conditionID: conditionID == freezed
          ? _value.conditionID
          : conditionID // ignore: cast_nullable_to_non_nullable
              as String?,
      conditionType: conditionType == freezed
          ? _value.conditionType
          : conditionType // ignore: cast_nullable_to_non_nullable
              as ConditionType?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      beginAge: beginAge == freezed
          ? _value.beginAge
          : beginAge // ignore: cast_nullable_to_non_nullable
              as String?,
      endAge: endAge == freezed
          ? _value.endAge
          : endAge // ignore: cast_nullable_to_non_nullable
              as String?,
      interval: interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String?,
      doseCount: doseCount == freezed
          ? _value.doseCount
          : doseCount // ignore: cast_nullable_to_non_nullable
              as String?,
      doseType: doseType == freezed
          ? _value.doseType
          : doseType // ignore: cast_nullable_to_non_nullable
              as DoseType?,
      doseCountLogic: doseCountLogic == freezed
          ? _value.doseCountLogic
          : doseCountLogic // ignore: cast_nullable_to_non_nullable
              as DoseCountLogic?,
      vaccineTypes: vaccineTypes == freezed
          ? _value.vaccineTypes
          : vaccineTypes // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesGroups: seriesGroups == freezed
          ? _value.seriesGroups
          : seriesGroups // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ConditionCopyWith<$Res> implements $ConditionCopyWith<$Res> {
  factory _$ConditionCopyWith(
          _Condition value, $Res Function(_Condition) then) =
      __$ConditionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? conditionID,
      ConditionType? conditionType,
      String? startDate,
      String? endDate,
      String? beginAge,
      String? endAge,
      String? interval,
      String? doseCount,
      DoseType? doseType,
      DoseCountLogic? doseCountLogic,
      String? vaccineTypes,
      String? seriesGroups});
}

/// @nodoc
class __$ConditionCopyWithImpl<$Res> extends _$ConditionCopyWithImpl<$Res>
    implements _$ConditionCopyWith<$Res> {
  __$ConditionCopyWithImpl(_Condition _value, $Res Function(_Condition) _then)
      : super(_value, (v) => _then(v as _Condition));

  @override
  _Condition get _value => super._value as _Condition;

  @override
  $Res call({
    Object? conditionID = freezed,
    Object? conditionType = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? beginAge = freezed,
    Object? endAge = freezed,
    Object? interval = freezed,
    Object? doseCount = freezed,
    Object? doseType = freezed,
    Object? doseCountLogic = freezed,
    Object? vaccineTypes = freezed,
    Object? seriesGroups = freezed,
  }) {
    return _then(_Condition(
      conditionID: conditionID == freezed
          ? _value.conditionID
          : conditionID // ignore: cast_nullable_to_non_nullable
              as String?,
      conditionType: conditionType == freezed
          ? _value.conditionType
          : conditionType // ignore: cast_nullable_to_non_nullable
              as ConditionType?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      beginAge: beginAge == freezed
          ? _value.beginAge
          : beginAge // ignore: cast_nullable_to_non_nullable
              as String?,
      endAge: endAge == freezed
          ? _value.endAge
          : endAge // ignore: cast_nullable_to_non_nullable
              as String?,
      interval: interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String?,
      doseCount: doseCount == freezed
          ? _value.doseCount
          : doseCount // ignore: cast_nullable_to_non_nullable
              as String?,
      doseType: doseType == freezed
          ? _value.doseType
          : doseType // ignore: cast_nullable_to_non_nullable
              as DoseType?,
      doseCountLogic: doseCountLogic == freezed
          ? _value.doseCountLogic
          : doseCountLogic // ignore: cast_nullable_to_non_nullable
              as DoseCountLogic?,
      vaccineTypes: vaccineTypes == freezed
          ? _value.vaccineTypes
          : vaccineTypes // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesGroups: seriesGroups == freezed
          ? _value.seriesGroups
          : seriesGroups // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Condition implements _Condition {
  _$_Condition(
      {this.conditionID,
      this.conditionType,
      this.startDate,
      this.endDate,
      this.beginAge,
      this.endAge,
      this.interval,
      this.doseCount,
      this.doseType,
      this.doseCountLogic,
      this.vaccineTypes,
      this.seriesGroups});

  factory _$_Condition.fromJson(Map<String, dynamic> json) =>
      _$_$_ConditionFromJson(json);

  @override
  final String? conditionID;
  @override
  final ConditionType? conditionType;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final String? beginAge;
  @override
  final String? endAge;
  @override
  final String? interval;
  @override
  final String? doseCount;
  @override
  final DoseType? doseType;
  @override
  final DoseCountLogic? doseCountLogic;
  @override
  final String? vaccineTypes;
  @override
  final String? seriesGroups;

  @override
  String toString() {
    return 'Condition(conditionID: $conditionID, conditionType: $conditionType, startDate: $startDate, endDate: $endDate, beginAge: $beginAge, endAge: $endAge, interval: $interval, doseCount: $doseCount, doseType: $doseType, doseCountLogic: $doseCountLogic, vaccineTypes: $vaccineTypes, seriesGroups: $seriesGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Condition &&
            (identical(other.conditionID, conditionID) ||
                const DeepCollectionEquality()
                    .equals(other.conditionID, conditionID)) &&
            (identical(other.conditionType, conditionType) ||
                const DeepCollectionEquality()
                    .equals(other.conditionType, conditionType)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.beginAge, beginAge) ||
                const DeepCollectionEquality()
                    .equals(other.beginAge, beginAge)) &&
            (identical(other.endAge, endAge) ||
                const DeepCollectionEquality().equals(other.endAge, endAge)) &&
            (identical(other.interval, interval) ||
                const DeepCollectionEquality()
                    .equals(other.interval, interval)) &&
            (identical(other.doseCount, doseCount) ||
                const DeepCollectionEquality()
                    .equals(other.doseCount, doseCount)) &&
            (identical(other.doseType, doseType) ||
                const DeepCollectionEquality()
                    .equals(other.doseType, doseType)) &&
            (identical(other.doseCountLogic, doseCountLogic) ||
                const DeepCollectionEquality()
                    .equals(other.doseCountLogic, doseCountLogic)) &&
            (identical(other.vaccineTypes, vaccineTypes) ||
                const DeepCollectionEquality()
                    .equals(other.vaccineTypes, vaccineTypes)) &&
            (identical(other.seriesGroups, seriesGroups) ||
                const DeepCollectionEquality()
                    .equals(other.seriesGroups, seriesGroups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(conditionID) ^
      const DeepCollectionEquality().hash(conditionType) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(beginAge) ^
      const DeepCollectionEquality().hash(endAge) ^
      const DeepCollectionEquality().hash(interval) ^
      const DeepCollectionEquality().hash(doseCount) ^
      const DeepCollectionEquality().hash(doseType) ^
      const DeepCollectionEquality().hash(doseCountLogic) ^
      const DeepCollectionEquality().hash(vaccineTypes) ^
      const DeepCollectionEquality().hash(seriesGroups);

  @JsonKey(ignore: true)
  @override
  _$ConditionCopyWith<_Condition> get copyWith =>
      __$ConditionCopyWithImpl<_Condition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConditionToJson(this);
  }
}

abstract class _Condition implements Condition {
  factory _Condition(
      {String? conditionID,
      ConditionType? conditionType,
      String? startDate,
      String? endDate,
      String? beginAge,
      String? endAge,
      String? interval,
      String? doseCount,
      DoseType? doseType,
      DoseCountLogic? doseCountLogic,
      String? vaccineTypes,
      String? seriesGroups}) = _$_Condition;

  factory _Condition.fromJson(Map<String, dynamic> json) =
      _$_Condition.fromJson;

  @override
  String? get conditionID => throw _privateConstructorUsedError;
  @override
  ConditionType? get conditionType => throw _privateConstructorUsedError;
  @override
  String? get startDate => throw _privateConstructorUsedError;
  @override
  String? get endDate => throw _privateConstructorUsedError;
  @override
  String? get beginAge => throw _privateConstructorUsedError;
  @override
  String? get endAge => throw _privateConstructorUsedError;
  @override
  String? get interval => throw _privateConstructorUsedError;
  @override
  String? get doseCount => throw _privateConstructorUsedError;
  @override
  DoseType? get doseType => throw _privateConstructorUsedError;
  @override
  DoseCountLogic? get doseCountLogic => throw _privateConstructorUsedError;
  @override
  String? get vaccineTypes => throw _privateConstructorUsedError;
  @override
  String? get seriesGroups => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConditionCopyWith<_Condition> get copyWith =>
      throw _privateConstructorUsedError;
}
