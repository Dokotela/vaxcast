// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vax_age.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
VaxAge _$VaxAgeFromJson(Map<String, dynamic> json) {
  return _VaxAge.fromJson(json);
}

/// @nodoc
class _$VaxAgeTearOff {
  const _$VaxAgeTearOff();

// ignore: unused_element
  _VaxAge call(
      {String absMinAge,
      String minAge,
      String earliestRecAge,
      String latestRecAge,
      String maxAge,
      String effectiveDate,
      String cessationDate}) {
    return _VaxAge(
      absMinAge: absMinAge,
      minAge: minAge,
      earliestRecAge: earliestRecAge,
      latestRecAge: latestRecAge,
      maxAge: maxAge,
      effectiveDate: effectiveDate,
      cessationDate: cessationDate,
    );
  }

// ignore: unused_element
  VaxAge fromJson(Map<String, Object> json) {
    return VaxAge.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $VaxAge = _$VaxAgeTearOff();

/// @nodoc
mixin _$VaxAge {
  String get absMinAge;
  String get minAge;
  String get earliestRecAge;
  String get latestRecAge;
  String get maxAge;
  String get effectiveDate;
  String get cessationDate;

  Map<String, dynamic> toJson();
  $VaxAgeCopyWith<VaxAge> get copyWith;
}

/// @nodoc
abstract class $VaxAgeCopyWith<$Res> {
  factory $VaxAgeCopyWith(VaxAge value, $Res Function(VaxAge) then) =
      _$VaxAgeCopyWithImpl<$Res>;
  $Res call(
      {String absMinAge,
      String minAge,
      String earliestRecAge,
      String latestRecAge,
      String maxAge,
      String effectiveDate,
      String cessationDate});
}

/// @nodoc
class _$VaxAgeCopyWithImpl<$Res> implements $VaxAgeCopyWith<$Res> {
  _$VaxAgeCopyWithImpl(this._value, this._then);

  final VaxAge _value;
  // ignore: unused_field
  final $Res Function(VaxAge) _then;

  @override
  $Res call({
    Object absMinAge = freezed,
    Object minAge = freezed,
    Object earliestRecAge = freezed,
    Object latestRecAge = freezed,
    Object maxAge = freezed,
    Object effectiveDate = freezed,
    Object cessationDate = freezed,
  }) {
    return _then(_value.copyWith(
      absMinAge: absMinAge == freezed ? _value.absMinAge : absMinAge as String,
      minAge: minAge == freezed ? _value.minAge : minAge as String,
      earliestRecAge: earliestRecAge == freezed
          ? _value.earliestRecAge
          : earliestRecAge as String,
      latestRecAge: latestRecAge == freezed
          ? _value.latestRecAge
          : latestRecAge as String,
      maxAge: maxAge == freezed ? _value.maxAge : maxAge as String,
      effectiveDate: effectiveDate == freezed
          ? _value.effectiveDate
          : effectiveDate as String,
      cessationDate: cessationDate == freezed
          ? _value.cessationDate
          : cessationDate as String,
    ));
  }
}

/// @nodoc
abstract class _$VaxAgeCopyWith<$Res> implements $VaxAgeCopyWith<$Res> {
  factory _$VaxAgeCopyWith(_VaxAge value, $Res Function(_VaxAge) then) =
      __$VaxAgeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String absMinAge,
      String minAge,
      String earliestRecAge,
      String latestRecAge,
      String maxAge,
      String effectiveDate,
      String cessationDate});
}

/// @nodoc
class __$VaxAgeCopyWithImpl<$Res> extends _$VaxAgeCopyWithImpl<$Res>
    implements _$VaxAgeCopyWith<$Res> {
  __$VaxAgeCopyWithImpl(_VaxAge _value, $Res Function(_VaxAge) _then)
      : super(_value, (v) => _then(v as _VaxAge));

  @override
  _VaxAge get _value => super._value as _VaxAge;

  @override
  $Res call({
    Object absMinAge = freezed,
    Object minAge = freezed,
    Object earliestRecAge = freezed,
    Object latestRecAge = freezed,
    Object maxAge = freezed,
    Object effectiveDate = freezed,
    Object cessationDate = freezed,
  }) {
    return _then(_VaxAge(
      absMinAge: absMinAge == freezed ? _value.absMinAge : absMinAge as String,
      minAge: minAge == freezed ? _value.minAge : minAge as String,
      earliestRecAge: earliestRecAge == freezed
          ? _value.earliestRecAge
          : earliestRecAge as String,
      latestRecAge: latestRecAge == freezed
          ? _value.latestRecAge
          : latestRecAge as String,
      maxAge: maxAge == freezed ? _value.maxAge : maxAge as String,
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
class _$_VaxAge implements _VaxAge {
  _$_VaxAge(
      {this.absMinAge,
      this.minAge,
      this.earliestRecAge,
      this.latestRecAge,
      this.maxAge,
      this.effectiveDate,
      this.cessationDate});

  factory _$_VaxAge.fromJson(Map<String, dynamic> json) =>
      _$_$_VaxAgeFromJson(json);

  @override
  final String absMinAge;
  @override
  final String minAge;
  @override
  final String earliestRecAge;
  @override
  final String latestRecAge;
  @override
  final String maxAge;
  @override
  final String effectiveDate;
  @override
  final String cessationDate;

  @override
  String toString() {
    return 'VaxAge(absMinAge: $absMinAge, minAge: $minAge, earliestRecAge: $earliestRecAge, latestRecAge: $latestRecAge, maxAge: $maxAge, effectiveDate: $effectiveDate, cessationDate: $cessationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaxAge &&
            (identical(other.absMinAge, absMinAge) ||
                const DeepCollectionEquality()
                    .equals(other.absMinAge, absMinAge)) &&
            (identical(other.minAge, minAge) ||
                const DeepCollectionEquality().equals(other.minAge, minAge)) &&
            (identical(other.earliestRecAge, earliestRecAge) ||
                const DeepCollectionEquality()
                    .equals(other.earliestRecAge, earliestRecAge)) &&
            (identical(other.latestRecAge, latestRecAge) ||
                const DeepCollectionEquality()
                    .equals(other.latestRecAge, latestRecAge)) &&
            (identical(other.maxAge, maxAge) ||
                const DeepCollectionEquality().equals(other.maxAge, maxAge)) &&
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
      const DeepCollectionEquality().hash(absMinAge) ^
      const DeepCollectionEquality().hash(minAge) ^
      const DeepCollectionEquality().hash(earliestRecAge) ^
      const DeepCollectionEquality().hash(latestRecAge) ^
      const DeepCollectionEquality().hash(maxAge) ^
      const DeepCollectionEquality().hash(effectiveDate) ^
      const DeepCollectionEquality().hash(cessationDate);

  @override
  _$VaxAgeCopyWith<_VaxAge> get copyWith =>
      __$VaxAgeCopyWithImpl<_VaxAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VaxAgeToJson(this);
  }
}

abstract class _VaxAge implements VaxAge {
  factory _VaxAge(
      {String absMinAge,
      String minAge,
      String earliestRecAge,
      String latestRecAge,
      String maxAge,
      String effectiveDate,
      String cessationDate}) = _$_VaxAge;

  factory _VaxAge.fromJson(Map<String, dynamic> json) = _$_VaxAge.fromJson;

  @override
  String get absMinAge;
  @override
  String get minAge;
  @override
  String get earliestRecAge;
  @override
  String get latestRecAge;
  @override
  String get maxAge;
  @override
  String get effectiveDate;
  @override
  String get cessationDate;
  @override
  _$VaxAgeCopyWith<_VaxAge> get copyWith;
}
