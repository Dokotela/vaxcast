// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'immunity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Immunity _$ImmunityFromJson(Map<String, dynamic> json) {
  return _Immunity.fromJson(json);
}

/// @nodoc
class _$ImmunityTearOff {
  const _$ImmunityTearOff();

  _Immunity call(
      {List<ClinicalHistory>? clinicalHistory, DateOfBirth? dateOfBirth}) {
    return _Immunity(
      clinicalHistory: clinicalHistory,
      dateOfBirth: dateOfBirth,
    );
  }

  Immunity fromJson(Map<String, Object> json) {
    return Immunity.fromJson(json);
  }
}

/// @nodoc
const $Immunity = _$ImmunityTearOff();

/// @nodoc
mixin _$Immunity {
  List<ClinicalHistory>? get clinicalHistory =>
      throw _privateConstructorUsedError;
  DateOfBirth? get dateOfBirth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImmunityCopyWith<Immunity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImmunityCopyWith<$Res> {
  factory $ImmunityCopyWith(Immunity value, $Res Function(Immunity) then) =
      _$ImmunityCopyWithImpl<$Res>;
  $Res call({List<ClinicalHistory>? clinicalHistory, DateOfBirth? dateOfBirth});

  $DateOfBirthCopyWith<$Res>? get dateOfBirth;
}

/// @nodoc
class _$ImmunityCopyWithImpl<$Res> implements $ImmunityCopyWith<$Res> {
  _$ImmunityCopyWithImpl(this._value, this._then);

  final Immunity _value;
  // ignore: unused_field
  final $Res Function(Immunity) _then;

  @override
  $Res call({
    Object? clinicalHistory = freezed,
    Object? dateOfBirth = freezed,
  }) {
    return _then(_value.copyWith(
      clinicalHistory: clinicalHistory == freezed
          ? _value.clinicalHistory
          : clinicalHistory // ignore: cast_nullable_to_non_nullable
              as List<ClinicalHistory>?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateOfBirth?,
    ));
  }

  @override
  $DateOfBirthCopyWith<$Res>? get dateOfBirth {
    if (_value.dateOfBirth == null) {
      return null;
    }

    return $DateOfBirthCopyWith<$Res>(_value.dateOfBirth!, (value) {
      return _then(_value.copyWith(dateOfBirth: value));
    });
  }
}

/// @nodoc
abstract class _$ImmunityCopyWith<$Res> implements $ImmunityCopyWith<$Res> {
  factory _$ImmunityCopyWith(_Immunity value, $Res Function(_Immunity) then) =
      __$ImmunityCopyWithImpl<$Res>;
  @override
  $Res call({List<ClinicalHistory>? clinicalHistory, DateOfBirth? dateOfBirth});

  @override
  $DateOfBirthCopyWith<$Res>? get dateOfBirth;
}

/// @nodoc
class __$ImmunityCopyWithImpl<$Res> extends _$ImmunityCopyWithImpl<$Res>
    implements _$ImmunityCopyWith<$Res> {
  __$ImmunityCopyWithImpl(_Immunity _value, $Res Function(_Immunity) _then)
      : super(_value, (v) => _then(v as _Immunity));

  @override
  _Immunity get _value => super._value as _Immunity;

  @override
  $Res call({
    Object? clinicalHistory = freezed,
    Object? dateOfBirth = freezed,
  }) {
    return _then(_Immunity(
      clinicalHistory: clinicalHistory == freezed
          ? _value.clinicalHistory
          : clinicalHistory // ignore: cast_nullable_to_non_nullable
              as List<ClinicalHistory>?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateOfBirth?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Immunity implements _Immunity {
  _$_Immunity({this.clinicalHistory, this.dateOfBirth});

  factory _$_Immunity.fromJson(Map<String, dynamic> json) =>
      _$_$_ImmunityFromJson(json);

  @override
  final List<ClinicalHistory>? clinicalHistory;
  @override
  final DateOfBirth? dateOfBirth;

  @override
  String toString() {
    return 'Immunity(clinicalHistory: $clinicalHistory, dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Immunity &&
            (identical(other.clinicalHistory, clinicalHistory) ||
                const DeepCollectionEquality()
                    .equals(other.clinicalHistory, clinicalHistory)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(clinicalHistory) ^
      const DeepCollectionEquality().hash(dateOfBirth);

  @JsonKey(ignore: true)
  @override
  _$ImmunityCopyWith<_Immunity> get copyWith =>
      __$ImmunityCopyWithImpl<_Immunity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImmunityToJson(this);
  }
}

abstract class _Immunity implements Immunity {
  factory _Immunity(
      {List<ClinicalHistory>? clinicalHistory,
      DateOfBirth? dateOfBirth}) = _$_Immunity;

  factory _Immunity.fromJson(Map<String, dynamic> json) = _$_Immunity.fromJson;

  @override
  List<ClinicalHistory>? get clinicalHistory =>
      throw _privateConstructorUsedError;
  @override
  DateOfBirth? get dateOfBirth => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImmunityCopyWith<_Immunity> get copyWith =>
      throw _privateConstructorUsedError;
}
