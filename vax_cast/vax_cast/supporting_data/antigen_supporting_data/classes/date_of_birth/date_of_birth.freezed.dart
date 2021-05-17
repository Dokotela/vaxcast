// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'date_of_birth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DateOfBirth _$DateOfBirthFromJson(Map<String, dynamic> json) {
  return _DateOfBirth.fromJson(json);
}

/// @nodoc
class _$DateOfBirthTearOff {
  const _$DateOfBirthTearOff();

  _DateOfBirth call(
      {String? immunityBirthDate,
      String? birthCountry,
      List<Exclusion>? exclusion}) {
    return _DateOfBirth(
      immunityBirthDate: immunityBirthDate,
      birthCountry: birthCountry,
      exclusion: exclusion,
    );
  }

  DateOfBirth fromJson(Map<String, Object> json) {
    return DateOfBirth.fromJson(json);
  }
}

/// @nodoc
const $DateOfBirth = _$DateOfBirthTearOff();

/// @nodoc
mixin _$DateOfBirth {
  String? get immunityBirthDate => throw _privateConstructorUsedError;
  String? get birthCountry => throw _privateConstructorUsedError;
  List<Exclusion>? get exclusion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateOfBirthCopyWith<DateOfBirth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateOfBirthCopyWith<$Res> {
  factory $DateOfBirthCopyWith(
          DateOfBirth value, $Res Function(DateOfBirth) then) =
      _$DateOfBirthCopyWithImpl<$Res>;
  $Res call(
      {String? immunityBirthDate,
      String? birthCountry,
      List<Exclusion>? exclusion});
}

/// @nodoc
class _$DateOfBirthCopyWithImpl<$Res> implements $DateOfBirthCopyWith<$Res> {
  _$DateOfBirthCopyWithImpl(this._value, this._then);

  final DateOfBirth _value;
  // ignore: unused_field
  final $Res Function(DateOfBirth) _then;

  @override
  $Res call({
    Object? immunityBirthDate = freezed,
    Object? birthCountry = freezed,
    Object? exclusion = freezed,
  }) {
    return _then(_value.copyWith(
      immunityBirthDate: immunityBirthDate == freezed
          ? _value.immunityBirthDate
          : immunityBirthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      birthCountry: birthCountry == freezed
          ? _value.birthCountry
          : birthCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      exclusion: exclusion == freezed
          ? _value.exclusion
          : exclusion // ignore: cast_nullable_to_non_nullable
              as List<Exclusion>?,
    ));
  }
}

/// @nodoc
abstract class _$DateOfBirthCopyWith<$Res>
    implements $DateOfBirthCopyWith<$Res> {
  factory _$DateOfBirthCopyWith(
          _DateOfBirth value, $Res Function(_DateOfBirth) then) =
      __$DateOfBirthCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? immunityBirthDate,
      String? birthCountry,
      List<Exclusion>? exclusion});
}

/// @nodoc
class __$DateOfBirthCopyWithImpl<$Res> extends _$DateOfBirthCopyWithImpl<$Res>
    implements _$DateOfBirthCopyWith<$Res> {
  __$DateOfBirthCopyWithImpl(
      _DateOfBirth _value, $Res Function(_DateOfBirth) _then)
      : super(_value, (v) => _then(v as _DateOfBirth));

  @override
  _DateOfBirth get _value => super._value as _DateOfBirth;

  @override
  $Res call({
    Object? immunityBirthDate = freezed,
    Object? birthCountry = freezed,
    Object? exclusion = freezed,
  }) {
    return _then(_DateOfBirth(
      immunityBirthDate: immunityBirthDate == freezed
          ? _value.immunityBirthDate
          : immunityBirthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      birthCountry: birthCountry == freezed
          ? _value.birthCountry
          : birthCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      exclusion: exclusion == freezed
          ? _value.exclusion
          : exclusion // ignore: cast_nullable_to_non_nullable
              as List<Exclusion>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DateOfBirth implements _DateOfBirth {
  _$_DateOfBirth({this.immunityBirthDate, this.birthCountry, this.exclusion});

  factory _$_DateOfBirth.fromJson(Map<String, dynamic> json) =>
      _$_$_DateOfBirthFromJson(json);

  @override
  final String? immunityBirthDate;
  @override
  final String? birthCountry;
  @override
  final List<Exclusion>? exclusion;

  @override
  String toString() {
    return 'DateOfBirth(immunityBirthDate: $immunityBirthDate, birthCountry: $birthCountry, exclusion: $exclusion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DateOfBirth &&
            (identical(other.immunityBirthDate, immunityBirthDate) ||
                const DeepCollectionEquality()
                    .equals(other.immunityBirthDate, immunityBirthDate)) &&
            (identical(other.birthCountry, birthCountry) ||
                const DeepCollectionEquality()
                    .equals(other.birthCountry, birthCountry)) &&
            (identical(other.exclusion, exclusion) ||
                const DeepCollectionEquality()
                    .equals(other.exclusion, exclusion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(immunityBirthDate) ^
      const DeepCollectionEquality().hash(birthCountry) ^
      const DeepCollectionEquality().hash(exclusion);

  @JsonKey(ignore: true)
  @override
  _$DateOfBirthCopyWith<_DateOfBirth> get copyWith =>
      __$DateOfBirthCopyWithImpl<_DateOfBirth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DateOfBirthToJson(this);
  }
}

abstract class _DateOfBirth implements DateOfBirth {
  factory _DateOfBirth(
      {String? immunityBirthDate,
      String? birthCountry,
      List<Exclusion>? exclusion}) = _$_DateOfBirth;

  factory _DateOfBirth.fromJson(Map<String, dynamic> json) =
      _$_DateOfBirth.fromJson;

  @override
  String? get immunityBirthDate => throw _privateConstructorUsedError;
  @override
  String? get birthCountry => throw _privateConstructorUsedError;
  @override
  List<Exclusion>? get exclusion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DateOfBirthCopyWith<_DateOfBirth> get copyWith =>
      throw _privateConstructorUsedError;
}
