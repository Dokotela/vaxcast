// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'date_of_birth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DateOfBirth _$DateOfBirthFromJson(Map<String, dynamic> json) {
  return _DateOfBirth.fromJson(json);
}

class _$DateOfBirthTearOff {
  const _$DateOfBirthTearOff();

// ignore: unused_element
  _DateOfBirth call(
      {String immunityBirthDate,
      String birthCountry,
      List<Exclusion> exclusion}) {
    return _DateOfBirth(
      immunityBirthDate: immunityBirthDate,
      birthCountry: birthCountry,
      exclusion: exclusion,
    );
  }
}

// ignore: unused_element
const $DateOfBirth = _$DateOfBirthTearOff();

mixin _$DateOfBirth {
  String get immunityBirthDate;
  String get birthCountry;
  List<Exclusion> get exclusion;

  Map<String, dynamic> toJson();
  $DateOfBirthCopyWith<DateOfBirth> get copyWith;
}

abstract class $DateOfBirthCopyWith<$Res> {
  factory $DateOfBirthCopyWith(
          DateOfBirth value, $Res Function(DateOfBirth) then) =
      _$DateOfBirthCopyWithImpl<$Res>;
  $Res call(
      {String immunityBirthDate,
      String birthCountry,
      List<Exclusion> exclusion});
}

class _$DateOfBirthCopyWithImpl<$Res> implements $DateOfBirthCopyWith<$Res> {
  _$DateOfBirthCopyWithImpl(this._value, this._then);

  final DateOfBirth _value;
  // ignore: unused_field
  final $Res Function(DateOfBirth) _then;

  @override
  $Res call({
    Object immunityBirthDate = freezed,
    Object birthCountry = freezed,
    Object exclusion = freezed,
  }) {
    return _then(_value.copyWith(
      immunityBirthDate: immunityBirthDate == freezed
          ? _value.immunityBirthDate
          : immunityBirthDate as String,
      birthCountry: birthCountry == freezed
          ? _value.birthCountry
          : birthCountry as String,
      exclusion: exclusion == freezed
          ? _value.exclusion
          : exclusion as List<Exclusion>,
    ));
  }
}

abstract class _$DateOfBirthCopyWith<$Res>
    implements $DateOfBirthCopyWith<$Res> {
  factory _$DateOfBirthCopyWith(
          _DateOfBirth value, $Res Function(_DateOfBirth) then) =
      __$DateOfBirthCopyWithImpl<$Res>;
  @override
  $Res call(
      {String immunityBirthDate,
      String birthCountry,
      List<Exclusion> exclusion});
}

class __$DateOfBirthCopyWithImpl<$Res> extends _$DateOfBirthCopyWithImpl<$Res>
    implements _$DateOfBirthCopyWith<$Res> {
  __$DateOfBirthCopyWithImpl(
      _DateOfBirth _value, $Res Function(_DateOfBirth) _then)
      : super(_value, (v) => _then(v as _DateOfBirth));

  @override
  _DateOfBirth get _value => super._value as _DateOfBirth;

  @override
  $Res call({
    Object immunityBirthDate = freezed,
    Object birthCountry = freezed,
    Object exclusion = freezed,
  }) {
    return _then(_DateOfBirth(
      immunityBirthDate: immunityBirthDate == freezed
          ? _value.immunityBirthDate
          : immunityBirthDate as String,
      birthCountry: birthCountry == freezed
          ? _value.birthCountry
          : birthCountry as String,
      exclusion: exclusion == freezed
          ? _value.exclusion
          : exclusion as List<Exclusion>,
    ));
  }
}

@JsonSerializable()
class _$_DateOfBirth implements _DateOfBirth {
  _$_DateOfBirth({this.immunityBirthDate, this.birthCountry, this.exclusion});

  factory _$_DateOfBirth.fromJson(Map<String, dynamic> json) =>
      _$_$_DateOfBirthFromJson(json);

  @override
  final String immunityBirthDate;
  @override
  final String birthCountry;
  @override
  final List<Exclusion> exclusion;

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
      {String immunityBirthDate,
      String birthCountry,
      List<Exclusion> exclusion}) = _$_DateOfBirth;

  factory _DateOfBirth.fromJson(Map<String, dynamic> json) =
      _$_DateOfBirth.fromJson;

  @override
  String get immunityBirthDate;
  @override
  String get birthCountry;
  @override
  List<Exclusion> get exclusion;
  @override
  _$DateOfBirthCopyWith<_DateOfBirth> get copyWith;
}
