// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vax_age.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VaxAge _$VaxAgeFromJson(Map<String, dynamic> json) {
  return _VaxAge.fromJson(json);
}

/// @nodoc
class _$VaxAgeTearOff {
  const _$VaxAgeTearOff();

  _VaxAge call(
      {String? absMinAge,
      String? minAge,
      String? earliestRecAge,
      String? latestRecAge,
      String? maxAge,
      String? effectiveDate,
      String? cessationDate}) {
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

  VaxAge fromJson(Map<String, Object> json) {
    return VaxAge.fromJson(json);
  }
}

/// @nodoc
const $VaxAge = _$VaxAgeTearOff();

/// @nodoc
mixin _$VaxAge {
  String? get absMinAge => throw _privateConstructorUsedError;
  String? get minAge => throw _privateConstructorUsedError;
  String? get earliestRecAge => throw _privateConstructorUsedError;
  String? get latestRecAge => throw _privateConstructorUsedError;
  String? get maxAge => throw _privateConstructorUsedError;
  String? get effectiveDate => throw _privateConstructorUsedError;
  String? get cessationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaxAgeCopyWith<VaxAge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaxAgeCopyWith<$Res> {
  factory $VaxAgeCopyWith(VaxAge value, $Res Function(VaxAge) then) =
      _$VaxAgeCopyWithImpl<$Res>;
  $Res call(
      {String? absMinAge,
      String? minAge,
      String? earliestRecAge,
      String? latestRecAge,
      String? maxAge,
      String? effectiveDate,
      String? cessationDate});
}

/// @nodoc
class _$VaxAgeCopyWithImpl<$Res> implements $VaxAgeCopyWith<$Res> {
  _$VaxAgeCopyWithImpl(this._value, this._then);

  final VaxAge _value;
  // ignore: unused_field
  final $Res Function(VaxAge) _then;

  @override
  $Res call({
    Object? absMinAge = freezed,
    Object? minAge = freezed,
    Object? earliestRecAge = freezed,
    Object? latestRecAge = freezed,
    Object? maxAge = freezed,
    Object? effectiveDate = freezed,
    Object? cessationDate = freezed,
  }) {
    return _then(_value.copyWith(
      absMinAge: absMinAge == freezed
          ? _value.absMinAge
          : absMinAge // ignore: cast_nullable_to_non_nullable
              as String?,
      minAge: minAge == freezed
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as String?,
      earliestRecAge: earliestRecAge == freezed
          ? _value.earliestRecAge
          : earliestRecAge // ignore: cast_nullable_to_non_nullable
              as String?,
      latestRecAge: latestRecAge == freezed
          ? _value.latestRecAge
          : latestRecAge // ignore: cast_nullable_to_non_nullable
              as String?,
      maxAge: maxAge == freezed
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
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
abstract class _$VaxAgeCopyWith<$Res> implements $VaxAgeCopyWith<$Res> {
  factory _$VaxAgeCopyWith(_VaxAge value, $Res Function(_VaxAge) then) =
      __$VaxAgeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? absMinAge,
      String? minAge,
      String? earliestRecAge,
      String? latestRecAge,
      String? maxAge,
      String? effectiveDate,
      String? cessationDate});
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
    Object? absMinAge = freezed,
    Object? minAge = freezed,
    Object? earliestRecAge = freezed,
    Object? latestRecAge = freezed,
    Object? maxAge = freezed,
    Object? effectiveDate = freezed,
    Object? cessationDate = freezed,
  }) {
    return _then(_VaxAge(
      absMinAge: absMinAge == freezed
          ? _value.absMinAge
          : absMinAge // ignore: cast_nullable_to_non_nullable
              as String?,
      minAge: minAge == freezed
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as String?,
      earliestRecAge: earliestRecAge == freezed
          ? _value.earliestRecAge
          : earliestRecAge // ignore: cast_nullable_to_non_nullable
              as String?,
      latestRecAge: latestRecAge == freezed
          ? _value.latestRecAge
          : latestRecAge // ignore: cast_nullable_to_non_nullable
              as String?,
      maxAge: maxAge == freezed
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
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
      _$$_VaxAgeFromJson(json);

  @override
  final String? absMinAge;
  @override
  final String? minAge;
  @override
  final String? earliestRecAge;
  @override
  final String? latestRecAge;
  @override
  final String? maxAge;
  @override
  final String? effectiveDate;
  @override
  final String? cessationDate;

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

  @JsonKey(ignore: true)
  @override
  _$VaxAgeCopyWith<_VaxAge> get copyWith =>
      __$VaxAgeCopyWithImpl<_VaxAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaxAgeToJson(this);
  }
}

abstract class _VaxAge implements VaxAge {
  factory _VaxAge(
      {String? absMinAge,
      String? minAge,
      String? earliestRecAge,
      String? latestRecAge,
      String? maxAge,
      String? effectiveDate,
      String? cessationDate}) = _$_VaxAge;

  factory _VaxAge.fromJson(Map<String, dynamic> json) = _$_VaxAge.fromJson;

  @override
  String? get absMinAge => throw _privateConstructorUsedError;
  @override
  String? get minAge => throw _privateConstructorUsedError;
  @override
  String? get earliestRecAge => throw _privateConstructorUsedError;
  @override
  String? get latestRecAge => throw _privateConstructorUsedError;
  @override
  String? get maxAge => throw _privateConstructorUsedError;
  @override
  String? get effectiveDate => throw _privateConstructorUsedError;
  @override
  String? get cessationDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VaxAgeCopyWith<_VaxAge> get copyWith => throw _privateConstructorUsedError;
}
