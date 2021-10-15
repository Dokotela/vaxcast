// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'series_dose.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeriesDose _$SeriesDoseFromJson(Map<String, dynamic> json) {
  return _SeriesDose.fromJson(json);
}

/// @nodoc
class _$SeriesDoseTearOff {
  const _$SeriesDoseTearOff();

  _SeriesDose call(
      {DoseNumber? doseNumber,
      List<VaxAge>? age,
      List<Interval>? interval,
      Interval? allowableInterval,
      List<Vaccine>? preferableVaccine,
      List<Vaccine>? allowableVaccine,
      List<Vaccine>? inadvertentVaccine,
      List<ConditionalSkip>? conditionalSkip,
      Binary? recurringDose,
      SeasonalRecommendation? seasonalRecommendation}) {
    return _SeriesDose(
      doseNumber: doseNumber,
      age: age,
      interval: interval,
      allowableInterval: allowableInterval,
      preferableVaccine: preferableVaccine,
      allowableVaccine: allowableVaccine,
      inadvertentVaccine: inadvertentVaccine,
      conditionalSkip: conditionalSkip,
      recurringDose: recurringDose,
      seasonalRecommendation: seasonalRecommendation,
    );
  }

  SeriesDose fromJson(Map<String, Object> json) {
    return SeriesDose.fromJson(json);
  }
}

/// @nodoc
const $SeriesDose = _$SeriesDoseTearOff();

/// @nodoc
mixin _$SeriesDose {
  DoseNumber? get doseNumber => throw _privateConstructorUsedError;
  List<VaxAge>? get age => throw _privateConstructorUsedError;
  List<Interval>? get interval => throw _privateConstructorUsedError;
  Interval? get allowableInterval => throw _privateConstructorUsedError;
  List<Vaccine>? get preferableVaccine => throw _privateConstructorUsedError;
  List<Vaccine>? get allowableVaccine => throw _privateConstructorUsedError;
  List<Vaccine>? get inadvertentVaccine => throw _privateConstructorUsedError;
  List<ConditionalSkip>? get conditionalSkip =>
      throw _privateConstructorUsedError;
  Binary? get recurringDose => throw _privateConstructorUsedError;
  SeasonalRecommendation? get seasonalRecommendation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeriesDoseCopyWith<SeriesDose> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesDoseCopyWith<$Res> {
  factory $SeriesDoseCopyWith(
          SeriesDose value, $Res Function(SeriesDose) then) =
      _$SeriesDoseCopyWithImpl<$Res>;
  $Res call(
      {DoseNumber? doseNumber,
      List<VaxAge>? age,
      List<Interval>? interval,
      Interval? allowableInterval,
      List<Vaccine>? preferableVaccine,
      List<Vaccine>? allowableVaccine,
      List<Vaccine>? inadvertentVaccine,
      List<ConditionalSkip>? conditionalSkip,
      Binary? recurringDose,
      SeasonalRecommendation? seasonalRecommendation});

  $IntervalCopyWith<$Res>? get allowableInterval;
  $SeasonalRecommendationCopyWith<$Res>? get seasonalRecommendation;
}

/// @nodoc
class _$SeriesDoseCopyWithImpl<$Res> implements $SeriesDoseCopyWith<$Res> {
  _$SeriesDoseCopyWithImpl(this._value, this._then);

  final SeriesDose _value;
  // ignore: unused_field
  final $Res Function(SeriesDose) _then;

  @override
  $Res call({
    Object? doseNumber = freezed,
    Object? age = freezed,
    Object? interval = freezed,
    Object? allowableInterval = freezed,
    Object? preferableVaccine = freezed,
    Object? allowableVaccine = freezed,
    Object? inadvertentVaccine = freezed,
    Object? conditionalSkip = freezed,
    Object? recurringDose = freezed,
    Object? seasonalRecommendation = freezed,
  }) {
    return _then(_value.copyWith(
      doseNumber: doseNumber == freezed
          ? _value.doseNumber
          : doseNumber // ignore: cast_nullable_to_non_nullable
              as DoseNumber?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as List<VaxAge>?,
      interval: interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as List<Interval>?,
      allowableInterval: allowableInterval == freezed
          ? _value.allowableInterval
          : allowableInterval // ignore: cast_nullable_to_non_nullable
              as Interval?,
      preferableVaccine: preferableVaccine == freezed
          ? _value.preferableVaccine
          : preferableVaccine // ignore: cast_nullable_to_non_nullable
              as List<Vaccine>?,
      allowableVaccine: allowableVaccine == freezed
          ? _value.allowableVaccine
          : allowableVaccine // ignore: cast_nullable_to_non_nullable
              as List<Vaccine>?,
      inadvertentVaccine: inadvertentVaccine == freezed
          ? _value.inadvertentVaccine
          : inadvertentVaccine // ignore: cast_nullable_to_non_nullable
              as List<Vaccine>?,
      conditionalSkip: conditionalSkip == freezed
          ? _value.conditionalSkip
          : conditionalSkip // ignore: cast_nullable_to_non_nullable
              as List<ConditionalSkip>?,
      recurringDose: recurringDose == freezed
          ? _value.recurringDose
          : recurringDose // ignore: cast_nullable_to_non_nullable
              as Binary?,
      seasonalRecommendation: seasonalRecommendation == freezed
          ? _value.seasonalRecommendation
          : seasonalRecommendation // ignore: cast_nullable_to_non_nullable
              as SeasonalRecommendation?,
    ));
  }

  @override
  $IntervalCopyWith<$Res>? get allowableInterval {
    if (_value.allowableInterval == null) {
      return null;
    }

    return $IntervalCopyWith<$Res>(_value.allowableInterval!, (value) {
      return _then(_value.copyWith(allowableInterval: value));
    });
  }

  @override
  $SeasonalRecommendationCopyWith<$Res>? get seasonalRecommendation {
    if (_value.seasonalRecommendation == null) {
      return null;
    }

    return $SeasonalRecommendationCopyWith<$Res>(_value.seasonalRecommendation!,
        (value) {
      return _then(_value.copyWith(seasonalRecommendation: value));
    });
  }
}

/// @nodoc
abstract class _$SeriesDoseCopyWith<$Res> implements $SeriesDoseCopyWith<$Res> {
  factory _$SeriesDoseCopyWith(
          _SeriesDose value, $Res Function(_SeriesDose) then) =
      __$SeriesDoseCopyWithImpl<$Res>;
  @override
  $Res call(
      {DoseNumber? doseNumber,
      List<VaxAge>? age,
      List<Interval>? interval,
      Interval? allowableInterval,
      List<Vaccine>? preferableVaccine,
      List<Vaccine>? allowableVaccine,
      List<Vaccine>? inadvertentVaccine,
      List<ConditionalSkip>? conditionalSkip,
      Binary? recurringDose,
      SeasonalRecommendation? seasonalRecommendation});

  @override
  $IntervalCopyWith<$Res>? get allowableInterval;
  @override
  $SeasonalRecommendationCopyWith<$Res>? get seasonalRecommendation;
}

/// @nodoc
class __$SeriesDoseCopyWithImpl<$Res> extends _$SeriesDoseCopyWithImpl<$Res>
    implements _$SeriesDoseCopyWith<$Res> {
  __$SeriesDoseCopyWithImpl(
      _SeriesDose _value, $Res Function(_SeriesDose) _then)
      : super(_value, (v) => _then(v as _SeriesDose));

  @override
  _SeriesDose get _value => super._value as _SeriesDose;

  @override
  $Res call({
    Object? doseNumber = freezed,
    Object? age = freezed,
    Object? interval = freezed,
    Object? allowableInterval = freezed,
    Object? preferableVaccine = freezed,
    Object? allowableVaccine = freezed,
    Object? inadvertentVaccine = freezed,
    Object? conditionalSkip = freezed,
    Object? recurringDose = freezed,
    Object? seasonalRecommendation = freezed,
  }) {
    return _then(_SeriesDose(
      doseNumber: doseNumber == freezed
          ? _value.doseNumber
          : doseNumber // ignore: cast_nullable_to_non_nullable
              as DoseNumber?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as List<VaxAge>?,
      interval: interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as List<Interval>?,
      allowableInterval: allowableInterval == freezed
          ? _value.allowableInterval
          : allowableInterval // ignore: cast_nullable_to_non_nullable
              as Interval?,
      preferableVaccine: preferableVaccine == freezed
          ? _value.preferableVaccine
          : preferableVaccine // ignore: cast_nullable_to_non_nullable
              as List<Vaccine>?,
      allowableVaccine: allowableVaccine == freezed
          ? _value.allowableVaccine
          : allowableVaccine // ignore: cast_nullable_to_non_nullable
              as List<Vaccine>?,
      inadvertentVaccine: inadvertentVaccine == freezed
          ? _value.inadvertentVaccine
          : inadvertentVaccine // ignore: cast_nullable_to_non_nullable
              as List<Vaccine>?,
      conditionalSkip: conditionalSkip == freezed
          ? _value.conditionalSkip
          : conditionalSkip // ignore: cast_nullable_to_non_nullable
              as List<ConditionalSkip>?,
      recurringDose: recurringDose == freezed
          ? _value.recurringDose
          : recurringDose // ignore: cast_nullable_to_non_nullable
              as Binary?,
      seasonalRecommendation: seasonalRecommendation == freezed
          ? _value.seasonalRecommendation
          : seasonalRecommendation // ignore: cast_nullable_to_non_nullable
              as SeasonalRecommendation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeriesDose implements _SeriesDose {
  _$_SeriesDose(
      {this.doseNumber,
      this.age,
      this.interval,
      this.allowableInterval,
      this.preferableVaccine,
      this.allowableVaccine,
      this.inadvertentVaccine,
      this.conditionalSkip,
      this.recurringDose,
      this.seasonalRecommendation});

  factory _$_SeriesDose.fromJson(Map<String, dynamic> json) =>
      _$$_SeriesDoseFromJson(json);

  @override
  final DoseNumber? doseNumber;
  @override
  final List<VaxAge>? age;
  @override
  final List<Interval>? interval;
  @override
  final Interval? allowableInterval;
  @override
  final List<Vaccine>? preferableVaccine;
  @override
  final List<Vaccine>? allowableVaccine;
  @override
  final List<Vaccine>? inadvertentVaccine;
  @override
  final List<ConditionalSkip>? conditionalSkip;
  @override
  final Binary? recurringDose;
  @override
  final SeasonalRecommendation? seasonalRecommendation;

  @override
  String toString() {
    return 'SeriesDose(doseNumber: $doseNumber, age: $age, interval: $interval, allowableInterval: $allowableInterval, preferableVaccine: $preferableVaccine, allowableVaccine: $allowableVaccine, inadvertentVaccine: $inadvertentVaccine, conditionalSkip: $conditionalSkip, recurringDose: $recurringDose, seasonalRecommendation: $seasonalRecommendation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDose &&
            (identical(other.doseNumber, doseNumber) ||
                const DeepCollectionEquality()
                    .equals(other.doseNumber, doseNumber)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.interval, interval) ||
                const DeepCollectionEquality()
                    .equals(other.interval, interval)) &&
            (identical(other.allowableInterval, allowableInterval) ||
                const DeepCollectionEquality()
                    .equals(other.allowableInterval, allowableInterval)) &&
            (identical(other.preferableVaccine, preferableVaccine) ||
                const DeepCollectionEquality()
                    .equals(other.preferableVaccine, preferableVaccine)) &&
            (identical(other.allowableVaccine, allowableVaccine) ||
                const DeepCollectionEquality()
                    .equals(other.allowableVaccine, allowableVaccine)) &&
            (identical(other.inadvertentVaccine, inadvertentVaccine) ||
                const DeepCollectionEquality()
                    .equals(other.inadvertentVaccine, inadvertentVaccine)) &&
            (identical(other.conditionalSkip, conditionalSkip) ||
                const DeepCollectionEquality()
                    .equals(other.conditionalSkip, conditionalSkip)) &&
            (identical(other.recurringDose, recurringDose) ||
                const DeepCollectionEquality()
                    .equals(other.recurringDose, recurringDose)) &&
            (identical(other.seasonalRecommendation, seasonalRecommendation) ||
                const DeepCollectionEquality().equals(
                    other.seasonalRecommendation, seasonalRecommendation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(doseNumber) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(interval) ^
      const DeepCollectionEquality().hash(allowableInterval) ^
      const DeepCollectionEquality().hash(preferableVaccine) ^
      const DeepCollectionEquality().hash(allowableVaccine) ^
      const DeepCollectionEquality().hash(inadvertentVaccine) ^
      const DeepCollectionEquality().hash(conditionalSkip) ^
      const DeepCollectionEquality().hash(recurringDose) ^
      const DeepCollectionEquality().hash(seasonalRecommendation);

  @JsonKey(ignore: true)
  @override
  _$SeriesDoseCopyWith<_SeriesDose> get copyWith =>
      __$SeriesDoseCopyWithImpl<_SeriesDose>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeriesDoseToJson(this);
  }
}

abstract class _SeriesDose implements SeriesDose {
  factory _SeriesDose(
      {DoseNumber? doseNumber,
      List<VaxAge>? age,
      List<Interval>? interval,
      Interval? allowableInterval,
      List<Vaccine>? preferableVaccine,
      List<Vaccine>? allowableVaccine,
      List<Vaccine>? inadvertentVaccine,
      List<ConditionalSkip>? conditionalSkip,
      Binary? recurringDose,
      SeasonalRecommendation? seasonalRecommendation}) = _$_SeriesDose;

  factory _SeriesDose.fromJson(Map<String, dynamic> json) =
      _$_SeriesDose.fromJson;

  @override
  DoseNumber? get doseNumber => throw _privateConstructorUsedError;
  @override
  List<VaxAge>? get age => throw _privateConstructorUsedError;
  @override
  List<Interval>? get interval => throw _privateConstructorUsedError;
  @override
  Interval? get allowableInterval => throw _privateConstructorUsedError;
  @override
  List<Vaccine>? get preferableVaccine => throw _privateConstructorUsedError;
  @override
  List<Vaccine>? get allowableVaccine => throw _privateConstructorUsedError;
  @override
  List<Vaccine>? get inadvertentVaccine => throw _privateConstructorUsedError;
  @override
  List<ConditionalSkip>? get conditionalSkip =>
      throw _privateConstructorUsedError;
  @override
  Binary? get recurringDose => throw _privateConstructorUsedError;
  @override
  SeasonalRecommendation? get seasonalRecommendation =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SeriesDoseCopyWith<_SeriesDose> get copyWith =>
      throw _privateConstructorUsedError;
}
