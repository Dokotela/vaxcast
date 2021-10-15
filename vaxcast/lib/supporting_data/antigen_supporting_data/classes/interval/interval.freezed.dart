// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'interval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Interval _$IntervalFromJson(Map<String, dynamic> json) {
  return _Interval.fromJson(json);
}

/// @nodoc
class _$IntervalTearOff {
  const _$IntervalTearOff();

  _Interval call(
      {FromPrevious? fromPrevious,
      FromTarget? fromTargetDose,
      String? fromMostRecent,
      ObservationCode? fromRelevantObs,
      String? absMinInt,
      String? minInt,
      String? earliestRecInt,
      String? latestRecInt,
      String? intervalPriority,
      String? effectiveDate,
      String? cessationDate}) {
    return _Interval(
      fromPrevious: fromPrevious,
      fromTargetDose: fromTargetDose,
      fromMostRecent: fromMostRecent,
      fromRelevantObs: fromRelevantObs,
      absMinInt: absMinInt,
      minInt: minInt,
      earliestRecInt: earliestRecInt,
      latestRecInt: latestRecInt,
      intervalPriority: intervalPriority,
      effectiveDate: effectiveDate,
      cessationDate: cessationDate,
    );
  }

  Interval fromJson(Map<String, Object> json) {
    return Interval.fromJson(json);
  }
}

/// @nodoc
const $Interval = _$IntervalTearOff();

/// @nodoc
mixin _$Interval {
  FromPrevious? get fromPrevious => throw _privateConstructorUsedError;
  FromTarget? get fromTargetDose => throw _privateConstructorUsedError;
  String? get fromMostRecent => throw _privateConstructorUsedError;
  ObservationCode? get fromRelevantObs => throw _privateConstructorUsedError;
  String? get absMinInt => throw _privateConstructorUsedError;
  String? get minInt => throw _privateConstructorUsedError;
  String? get earliestRecInt => throw _privateConstructorUsedError;
  String? get latestRecInt => throw _privateConstructorUsedError;
  String? get intervalPriority => throw _privateConstructorUsedError;
  String? get effectiveDate => throw _privateConstructorUsedError;
  String? get cessationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntervalCopyWith<Interval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntervalCopyWith<$Res> {
  factory $IntervalCopyWith(Interval value, $Res Function(Interval) then) =
      _$IntervalCopyWithImpl<$Res>;
  $Res call(
      {FromPrevious? fromPrevious,
      FromTarget? fromTargetDose,
      String? fromMostRecent,
      ObservationCode? fromRelevantObs,
      String? absMinInt,
      String? minInt,
      String? earliestRecInt,
      String? latestRecInt,
      String? intervalPriority,
      String? effectiveDate,
      String? cessationDate});

  $ObservationCodeCopyWith<$Res>? get fromRelevantObs;
}

/// @nodoc
class _$IntervalCopyWithImpl<$Res> implements $IntervalCopyWith<$Res> {
  _$IntervalCopyWithImpl(this._value, this._then);

  final Interval _value;
  // ignore: unused_field
  final $Res Function(Interval) _then;

  @override
  $Res call({
    Object? fromPrevious = freezed,
    Object? fromTargetDose = freezed,
    Object? fromMostRecent = freezed,
    Object? fromRelevantObs = freezed,
    Object? absMinInt = freezed,
    Object? minInt = freezed,
    Object? earliestRecInt = freezed,
    Object? latestRecInt = freezed,
    Object? intervalPriority = freezed,
    Object? effectiveDate = freezed,
    Object? cessationDate = freezed,
  }) {
    return _then(_value.copyWith(
      fromPrevious: fromPrevious == freezed
          ? _value.fromPrevious
          : fromPrevious // ignore: cast_nullable_to_non_nullable
              as FromPrevious?,
      fromTargetDose: fromTargetDose == freezed
          ? _value.fromTargetDose
          : fromTargetDose // ignore: cast_nullable_to_non_nullable
              as FromTarget?,
      fromMostRecent: fromMostRecent == freezed
          ? _value.fromMostRecent
          : fromMostRecent // ignore: cast_nullable_to_non_nullable
              as String?,
      fromRelevantObs: fromRelevantObs == freezed
          ? _value.fromRelevantObs
          : fromRelevantObs // ignore: cast_nullable_to_non_nullable
              as ObservationCode?,
      absMinInt: absMinInt == freezed
          ? _value.absMinInt
          : absMinInt // ignore: cast_nullable_to_non_nullable
              as String?,
      minInt: minInt == freezed
          ? _value.minInt
          : minInt // ignore: cast_nullable_to_non_nullable
              as String?,
      earliestRecInt: earliestRecInt == freezed
          ? _value.earliestRecInt
          : earliestRecInt // ignore: cast_nullable_to_non_nullable
              as String?,
      latestRecInt: latestRecInt == freezed
          ? _value.latestRecInt
          : latestRecInt // ignore: cast_nullable_to_non_nullable
              as String?,
      intervalPriority: intervalPriority == freezed
          ? _value.intervalPriority
          : intervalPriority // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: effectiveDate == freezed
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cessationDate: cessationDate == freezed
          ? _value.cessationDate
          : cessationDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ObservationCodeCopyWith<$Res>? get fromRelevantObs {
    if (_value.fromRelevantObs == null) {
      return null;
    }

    return $ObservationCodeCopyWith<$Res>(_value.fromRelevantObs!, (value) {
      return _then(_value.copyWith(fromRelevantObs: value));
    });
  }
}

/// @nodoc
abstract class _$IntervalCopyWith<$Res> implements $IntervalCopyWith<$Res> {
  factory _$IntervalCopyWith(_Interval value, $Res Function(_Interval) then) =
      __$IntervalCopyWithImpl<$Res>;
  @override
  $Res call(
      {FromPrevious? fromPrevious,
      FromTarget? fromTargetDose,
      String? fromMostRecent,
      ObservationCode? fromRelevantObs,
      String? absMinInt,
      String? minInt,
      String? earliestRecInt,
      String? latestRecInt,
      String? intervalPriority,
      String? effectiveDate,
      String? cessationDate});

  @override
  $ObservationCodeCopyWith<$Res>? get fromRelevantObs;
}

/// @nodoc
class __$IntervalCopyWithImpl<$Res> extends _$IntervalCopyWithImpl<$Res>
    implements _$IntervalCopyWith<$Res> {
  __$IntervalCopyWithImpl(_Interval _value, $Res Function(_Interval) _then)
      : super(_value, (v) => _then(v as _Interval));

  @override
  _Interval get _value => super._value as _Interval;

  @override
  $Res call({
    Object? fromPrevious = freezed,
    Object? fromTargetDose = freezed,
    Object? fromMostRecent = freezed,
    Object? fromRelevantObs = freezed,
    Object? absMinInt = freezed,
    Object? minInt = freezed,
    Object? earliestRecInt = freezed,
    Object? latestRecInt = freezed,
    Object? intervalPriority = freezed,
    Object? effectiveDate = freezed,
    Object? cessationDate = freezed,
  }) {
    return _then(_Interval(
      fromPrevious: fromPrevious == freezed
          ? _value.fromPrevious
          : fromPrevious // ignore: cast_nullable_to_non_nullable
              as FromPrevious?,
      fromTargetDose: fromTargetDose == freezed
          ? _value.fromTargetDose
          : fromTargetDose // ignore: cast_nullable_to_non_nullable
              as FromTarget?,
      fromMostRecent: fromMostRecent == freezed
          ? _value.fromMostRecent
          : fromMostRecent // ignore: cast_nullable_to_non_nullable
              as String?,
      fromRelevantObs: fromRelevantObs == freezed
          ? _value.fromRelevantObs
          : fromRelevantObs // ignore: cast_nullable_to_non_nullable
              as ObservationCode?,
      absMinInt: absMinInt == freezed
          ? _value.absMinInt
          : absMinInt // ignore: cast_nullable_to_non_nullable
              as String?,
      minInt: minInt == freezed
          ? _value.minInt
          : minInt // ignore: cast_nullable_to_non_nullable
              as String?,
      earliestRecInt: earliestRecInt == freezed
          ? _value.earliestRecInt
          : earliestRecInt // ignore: cast_nullable_to_non_nullable
              as String?,
      latestRecInt: latestRecInt == freezed
          ? _value.latestRecInt
          : latestRecInt // ignore: cast_nullable_to_non_nullable
              as String?,
      intervalPriority: intervalPriority == freezed
          ? _value.intervalPriority
          : intervalPriority // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: effectiveDate == freezed
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cessationDate: cessationDate == freezed
          ? _value.cessationDate
          : cessationDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Interval extends _Interval {
  _$_Interval(
      {this.fromPrevious,
      this.fromTargetDose,
      this.fromMostRecent,
      this.fromRelevantObs,
      this.absMinInt,
      this.minInt,
      this.earliestRecInt,
      this.latestRecInt,
      this.intervalPriority,
      this.effectiveDate,
      this.cessationDate})
      : super._();

  factory _$_Interval.fromJson(Map<String, dynamic> json) =>
      _$$_IntervalFromJson(json);

  @override
  final FromPrevious? fromPrevious;
  @override
  final FromTarget? fromTargetDose;
  @override
  final String? fromMostRecent;
  @override
  final ObservationCode? fromRelevantObs;
  @override
  final String? absMinInt;
  @override
  final String? minInt;
  @override
  final String? earliestRecInt;
  @override
  final String? latestRecInt;
  @override
  final String? intervalPriority;
  @override
  final String? effectiveDate;
  @override
  final String? cessationDate;

  @override
  String toString() {
    return 'Interval(fromPrevious: $fromPrevious, fromTargetDose: $fromTargetDose, fromMostRecent: $fromMostRecent, fromRelevantObs: $fromRelevantObs, absMinInt: $absMinInt, minInt: $minInt, earliestRecInt: $earliestRecInt, latestRecInt: $latestRecInt, intervalPriority: $intervalPriority, effectiveDate: $effectiveDate, cessationDate: $cessationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Interval &&
            (identical(other.fromPrevious, fromPrevious) ||
                const DeepCollectionEquality()
                    .equals(other.fromPrevious, fromPrevious)) &&
            (identical(other.fromTargetDose, fromTargetDose) ||
                const DeepCollectionEquality()
                    .equals(other.fromTargetDose, fromTargetDose)) &&
            (identical(other.fromMostRecent, fromMostRecent) ||
                const DeepCollectionEquality()
                    .equals(other.fromMostRecent, fromMostRecent)) &&
            (identical(other.fromRelevantObs, fromRelevantObs) ||
                const DeepCollectionEquality()
                    .equals(other.fromRelevantObs, fromRelevantObs)) &&
            (identical(other.absMinInt, absMinInt) ||
                const DeepCollectionEquality()
                    .equals(other.absMinInt, absMinInt)) &&
            (identical(other.minInt, minInt) ||
                const DeepCollectionEquality().equals(other.minInt, minInt)) &&
            (identical(other.earliestRecInt, earliestRecInt) ||
                const DeepCollectionEquality()
                    .equals(other.earliestRecInt, earliestRecInt)) &&
            (identical(other.latestRecInt, latestRecInt) ||
                const DeepCollectionEquality()
                    .equals(other.latestRecInt, latestRecInt)) &&
            (identical(other.intervalPriority, intervalPriority) ||
                const DeepCollectionEquality()
                    .equals(other.intervalPriority, intervalPriority)) &&
            (identical(other.effectiveDate, effectiveDate) ||
                const DeepCollectionEquality()
                    .equals(other.effectiveDate, effectiveDate)) &&
            (identical(other.cessationDate, cessationDate) ||
                const DeepCollectionEquality()
                    .equals(other.cessationDate, cessationDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fromPrevious) ^
      const DeepCollectionEquality().hash(fromTargetDose) ^
      const DeepCollectionEquality().hash(fromMostRecent) ^
      const DeepCollectionEquality().hash(fromRelevantObs) ^
      const DeepCollectionEquality().hash(absMinInt) ^
      const DeepCollectionEquality().hash(minInt) ^
      const DeepCollectionEquality().hash(earliestRecInt) ^
      const DeepCollectionEquality().hash(latestRecInt) ^
      const DeepCollectionEquality().hash(intervalPriority) ^
      const DeepCollectionEquality().hash(effectiveDate) ^
      const DeepCollectionEquality().hash(cessationDate);

  @JsonKey(ignore: true)
  @override
  _$IntervalCopyWith<_Interval> get copyWith =>
      __$IntervalCopyWithImpl<_Interval>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntervalToJson(this);
  }
}

abstract class _Interval extends Interval {
  factory _Interval(
      {FromPrevious? fromPrevious,
      FromTarget? fromTargetDose,
      String? fromMostRecent,
      ObservationCode? fromRelevantObs,
      String? absMinInt,
      String? minInt,
      String? earliestRecInt,
      String? latestRecInt,
      String? intervalPriority,
      String? effectiveDate,
      String? cessationDate}) = _$_Interval;
  _Interval._() : super._();

  factory _Interval.fromJson(Map<String, dynamic> json) = _$_Interval.fromJson;

  @override
  FromPrevious? get fromPrevious => throw _privateConstructorUsedError;
  @override
  FromTarget? get fromTargetDose => throw _privateConstructorUsedError;
  @override
  String? get fromMostRecent => throw _privateConstructorUsedError;
  @override
  ObservationCode? get fromRelevantObs => throw _privateConstructorUsedError;
  @override
  String? get absMinInt => throw _privateConstructorUsedError;
  @override
  String? get minInt => throw _privateConstructorUsedError;
  @override
  String? get earliestRecInt => throw _privateConstructorUsedError;
  @override
  String? get latestRecInt => throw _privateConstructorUsedError;
  @override
  String? get intervalPriority => throw _privateConstructorUsedError;
  @override
  String? get effectiveDate => throw _privateConstructorUsedError;
  @override
  String? get cessationDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IntervalCopyWith<_Interval> get copyWith =>
      throw _privateConstructorUsedError;
}
