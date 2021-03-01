// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'immunity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Immunity _$ImmunityFromJson(Map<String, dynamic> json) {
  return _Immunity.fromJson(json);
}

class _$ImmunityTearOff {
  const _$ImmunityTearOff();

// ignore: unused_element
  _Immunity call(
      {List<ClinicalHistory> clinicalHistory, DateOfBirth dateOfBirth}) {
    return _Immunity(
      clinicalHistory: clinicalHistory,
      dateOfBirth: dateOfBirth,
    );
  }
}

// ignore: unused_element
const $Immunity = _$ImmunityTearOff();

mixin _$Immunity {
  List<ClinicalHistory> get clinicalHistory;
  DateOfBirth get dateOfBirth;

  Map<String, dynamic> toJson();
  $ImmunityCopyWith<Immunity> get copyWith;
}

abstract class $ImmunityCopyWith<$Res> {
  factory $ImmunityCopyWith(Immunity value, $Res Function(Immunity) then) =
      _$ImmunityCopyWithImpl<$Res>;
  $Res call({List<ClinicalHistory> clinicalHistory, DateOfBirth dateOfBirth});

  $DateOfBirthCopyWith<$Res> get dateOfBirth;
}

class _$ImmunityCopyWithImpl<$Res> implements $ImmunityCopyWith<$Res> {
  _$ImmunityCopyWithImpl(this._value, this._then);

  final Immunity _value;
  // ignore: unused_field
  final $Res Function(Immunity) _then;

  @override
  $Res call({
    Object clinicalHistory = freezed,
    Object dateOfBirth = freezed,
  }) {
    return _then(_value.copyWith(
      clinicalHistory: clinicalHistory == freezed
          ? _value.clinicalHistory
          : clinicalHistory as List<ClinicalHistory>,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth as DateOfBirth,
    ));
  }

  @override
  $DateOfBirthCopyWith<$Res> get dateOfBirth {
    if (_value.dateOfBirth == null) {
      return null;
    }
    return $DateOfBirthCopyWith<$Res>(_value.dateOfBirth, (value) {
      return _then(_value.copyWith(dateOfBirth: value));
    });
  }
}

abstract class _$ImmunityCopyWith<$Res> implements $ImmunityCopyWith<$Res> {
  factory _$ImmunityCopyWith(_Immunity value, $Res Function(_Immunity) then) =
      __$ImmunityCopyWithImpl<$Res>;
  @override
  $Res call({List<ClinicalHistory> clinicalHistory, DateOfBirth dateOfBirth});

  @override
  $DateOfBirthCopyWith<$Res> get dateOfBirth;
}

class __$ImmunityCopyWithImpl<$Res> extends _$ImmunityCopyWithImpl<$Res>
    implements _$ImmunityCopyWith<$Res> {
  __$ImmunityCopyWithImpl(_Immunity _value, $Res Function(_Immunity) _then)
      : super(_value, (v) => _then(v as _Immunity));

  @override
  _Immunity get _value => super._value as _Immunity;

  @override
  $Res call({
    Object clinicalHistory = freezed,
    Object dateOfBirth = freezed,
  }) {
    return _then(_Immunity(
      clinicalHistory: clinicalHistory == freezed
          ? _value.clinicalHistory
          : clinicalHistory as List<ClinicalHistory>,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth as DateOfBirth,
    ));
  }
}

@JsonSerializable()
class _$_Immunity implements _Immunity {
  _$_Immunity({this.clinicalHistory, this.dateOfBirth});

  factory _$_Immunity.fromJson(Map<String, dynamic> json) =>
      _$_$_ImmunityFromJson(json);

  @override
  final List<ClinicalHistory> clinicalHistory;
  @override
  final DateOfBirth dateOfBirth;

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
      {List<ClinicalHistory> clinicalHistory,
      DateOfBirth dateOfBirth}) = _$_Immunity;

  factory _Immunity.fromJson(Map<String, dynamic> json) = _$_Immunity.fromJson;

  @override
  List<ClinicalHistory> get clinicalHistory;
  @override
  DateOfBirth get dateOfBirth;
  @override
  _$ImmunityCopyWith<_Immunity> get copyWith;
}
