// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'interval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Interval _$IntervalFromJson(Map<String, dynamic> json) {
  return _Interval.fromJson(json);
}

/// @nodoc
class _$IntervalTearOff {
  const _$IntervalTearOff();

// ignore: unused_element
  _Interval call(
      {FromPrevious fromPrevious,
      FromTarget fromTargetDose,
      String fromMostRecent,
      ObservationCode fromRelevantObs,
      String absMinInt,
      String minInt,
      String earliestRecInt,
      String latestRecInt,
      String intervalPriority,
      String effectiveDate,
      String cessationDate}) {
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

// ignore: unused_element
  Interval fromJson(Map<String, Object> json) {
    return Interval.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Interval = _$IntervalTearOff();

/// @nodoc
mixin _$Interval {
  FromPrevious get fromPrevious;
  FromTarget get fromTargetDose;
  String get fromMostRecent;
  ObservationCode get fromRelevantObs;
  String get absMinInt;
  String get minInt;
  String get earliestRecInt;
  String get latestRecInt;
  String get intervalPriority;
  String get effectiveDate;
  String get cessationDate;

  Map<String, dynamic> toJson();
  $IntervalCopyWith<Interval> get copyWith;
}

/// @nodoc
abstract class $IntervalCopyWith<$Res> {
  factory $IntervalCopyWith(Interval value, $Res Function(Interval) then) =
      _$IntervalCopyWithImpl<$Res>;
  $Res call(
      {FromPrevious fromPrevious,
      FromTarget fromTargetDose,
      String fromMostRecent,
      ObservationCode fromRelevantObs,
      String absMinInt,
      String minInt,
      String earliestRecInt,
      String latestRecInt,
      String intervalPriority,
      String effectiveDate,
      String cessationDate});

  $ObservationCodeCopyWith<$Res> get fromRelevantObs;
}

/// @nodoc
class _$IntervalCopyWithImpl<$Res> implements $IntervalCopyWith<$Res> {
  _$IntervalCopyWithImpl(this._value, this._then);

  final Interval _value;
  // ignore: unused_field
  final $Res Function(Interval) _then;

  @override
  $Res call({
    Object fromPrevious = freezed,
    Object fromTargetDose = freezed,
    Object fromMostRecent = freezed,
    Object fromRelevantObs = freezed,
    Object absMinInt = freezed,
    Object minInt = freezed,
    Object earliestRecInt = freezed,
    Object latestRecInt = freezed,
    Object intervalPriority = freezed,
    Object effectiveDate = freezed,
    Object cessationDate = freezed,
  }) {
    return _then(_value.copyWith(
      fromPrevious: fromPrevious == freezed
          ? _value.fromPrevious
          : fromPrevious as FromPrevious,
      fromTargetDose: fromTargetDose == freezed
          ? _value.fromTargetDose
          : fromTargetDose as FromTarget,
      fromMostRecent: fromMostRecent == freezed
          ? _value.fromMostRecent
          : fromMostRecent as String,
      fromRelevantObs: fromRelevantObs == freezed
          ? _value.fromRelevantObs
          : fromRelevantObs as ObservationCode,
      absMinInt: absMinInt == freezed ? _value.absMinInt : absMinInt as String,
      minInt: minInt == freezed ? _value.minInt : minInt as String,
      earliestRecInt: earliestRecInt == freezed
          ? _value.earliestRecInt
          : earliestRecInt as String,
      latestRecInt: latestRecInt == freezed
          ? _value.latestRecInt
          : latestRecInt as String,
      intervalPriority: intervalPriority == freezed
          ? _value.intervalPriority
          : intervalPriority as String,
      effectiveDate: effectiveDate == freezed
          ? _value.effectiveDate
          : effectiveDate as String,
      cessationDate: cessationDate == freezed
          ? _value.cessationDate
          : cessationDate as String,
    ));
  }

  @override
  $ObservationCodeCopyWith<$Res> get fromRelevantObs {
    if (_value.fromRelevantObs == null) {
      return null;
    }
    return $ObservationCodeCopyWith<$Res>(_value.fromRelevantObs, (value) {
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
      {FromPrevious fromPrevious,
      FromTarget fromTargetDose,
      String fromMostRecent,
      ObservationCode fromRelevantObs,
      String absMinInt,
      String minInt,
      String earliestRecInt,
      String latestRecInt,
      String intervalPriority,
      String effectiveDate,
      String cessationDate});

  @override
  $ObservationCodeCopyWith<$Res> get fromRelevantObs;
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
    Object fromPrevious = freezed,
    Object fromTargetDose = freezed,
    Object fromMostRecent = freezed,
    Object fromRelevantObs = freezed,
    Object absMinInt = freezed,
    Object minInt = freezed,
    Object earliestRecInt = freezed,
    Object latestRecInt = freezed,
    Object intervalPriority = freezed,
    Object effectiveDate = freezed,
    Object cessationDate = freezed,
  }) {
    return _then(_Interval(
      fromPrevious: fromPrevious == freezed
          ? _value.fromPrevious
          : fromPrevious as FromPrevious,
      fromTargetDose: fromTargetDose == freezed
          ? _value.fromTargetDose
          : fromTargetDose as FromTarget,
      fromMostRecent: fromMostRecent == freezed
          ? _value.fromMostRecent
          : fromMostRecent as String,
      fromRelevantObs: fromRelevantObs == freezed
          ? _value.fromRelevantObs
          : fromRelevantObs as ObservationCode,
      absMinInt: absMinInt == freezed ? _value.absMinInt : absMinInt as String,
      minInt: minInt == freezed ? _value.minInt : minInt as String,
      earliestRecInt: earliestRecInt == freezed
          ? _value.earliestRecInt
          : earliestRecInt as String,
      latestRecInt: latestRecInt == freezed
          ? _value.latestRecInt
          : latestRecInt as String,
      intervalPriority: intervalPriority == freezed
          ? _value.intervalPriority
          : intervalPriority as String,
      effectiveDate: effectiveDate == freezed
          ? _value.effectiveDate
          : effectiveDate as String,
      cessationDate: cessationDate == freezed
          ? _value.cessationDate
          : cessationDate as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Interval implements _Interval {
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
      this.cessationDate});

  factory _$_Interval.fromJson(Map<String, dynamic> json) =>
      _$_$_IntervalFromJson(json);

  @override
  final FromPrevious fromPrevious;
  @override
  final FromTarget fromTargetDose;
  @override
  final String fromMostRecent;
  @override
  final ObservationCode fromRelevantObs;
  @override
  final String absMinInt;
  @override
  final String minInt;
  @override
  final String earliestRecInt;
  @override
  final String latestRecInt;
  @override
  final String intervalPriority;
  @override
  final String effectiveDate;
  @override
  final String cessationDate;

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

  @override
  _$IntervalCopyWith<_Interval> get copyWith =>
      __$IntervalCopyWithImpl<_Interval>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IntervalToJson(this);
  }
}

abstract class _Interval implements Interval {
  factory _Interval(
      {FromPrevious fromPrevious,
      FromTarget fromTargetDose,
      String fromMostRecent,
      ObservationCode fromRelevantObs,
      String absMinInt,
      String minInt,
      String earliestRecInt,
      String latestRecInt,
      String intervalPriority,
      String effectiveDate,
      String cessationDate}) = _$_Interval;

  factory _Interval.fromJson(Map<String, dynamic> json) = _$_Interval.fromJson;

  @override
  FromPrevious get fromPrevious;
  @override
  FromTarget get fromTargetDose;
  @override
  String get fromMostRecent;
  @override
  ObservationCode get fromRelevantObs;
  @override
  String get absMinInt;
  @override
  String get minInt;
  @override
  String get earliestRecInt;
  @override
  String get latestRecInt;
  @override
  String get intervalPriority;
  @override
  String get effectiveDate;
  @override
  String get cessationDate;
  @override
  _$IntervalCopyWith<_Interval> get copyWith;
}
