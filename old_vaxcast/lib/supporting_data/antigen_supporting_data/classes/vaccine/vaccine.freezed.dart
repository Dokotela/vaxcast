// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vaccine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Vaccine _$VaccineFromJson(Map<String, dynamic> json) {
  return _Vaccine.fromJson(json);
}

class _$VaccineTearOff {
  const _$VaccineTearOff();

// ignore: unused_element
  _Vaccine call(
      {String vaccineType,
      Cvx cvx,
      String beginAge,
      String endAge,
      String tradeName,
      String mvx,
      String volume,
      String forecastVaccineType}) {
    return _Vaccine(
      vaccineType: vaccineType,
      cvx: cvx,
      beginAge: beginAge,
      endAge: endAge,
      tradeName: tradeName,
      mvx: mvx,
      volume: volume,
      forecastVaccineType: forecastVaccineType,
    );
  }
}

// ignore: unused_element
const $Vaccine = _$VaccineTearOff();

mixin _$Vaccine {
  String get vaccineType;
  Cvx get cvx;
  String get beginAge;
  String get endAge;
  String get tradeName;
  String get mvx;
  String get volume;
  String get forecastVaccineType;

  Map<String, dynamic> toJson();
  $VaccineCopyWith<Vaccine> get copyWith;
}

abstract class $VaccineCopyWith<$Res> {
  factory $VaccineCopyWith(Vaccine value, $Res Function(Vaccine) then) =
      _$VaccineCopyWithImpl<$Res>;
  $Res call(
      {String vaccineType,
      Cvx cvx,
      String beginAge,
      String endAge,
      String tradeName,
      String mvx,
      String volume,
      String forecastVaccineType});
}

class _$VaccineCopyWithImpl<$Res> implements $VaccineCopyWith<$Res> {
  _$VaccineCopyWithImpl(this._value, this._then);

  final Vaccine _value;
  // ignore: unused_field
  final $Res Function(Vaccine) _then;

  @override
  $Res call({
    Object vaccineType = freezed,
    Object cvx = freezed,
    Object beginAge = freezed,
    Object endAge = freezed,
    Object tradeName = freezed,
    Object mvx = freezed,
    Object volume = freezed,
    Object forecastVaccineType = freezed,
  }) {
    return _then(_value.copyWith(
      vaccineType:
          vaccineType == freezed ? _value.vaccineType : vaccineType as String,
      cvx: cvx == freezed ? _value.cvx : cvx as Cvx,
      beginAge: beginAge == freezed ? _value.beginAge : beginAge as String,
      endAge: endAge == freezed ? _value.endAge : endAge as String,
      tradeName: tradeName == freezed ? _value.tradeName : tradeName as String,
      mvx: mvx == freezed ? _value.mvx : mvx as String,
      volume: volume == freezed ? _value.volume : volume as String,
      forecastVaccineType: forecastVaccineType == freezed
          ? _value.forecastVaccineType
          : forecastVaccineType as String,
    ));
  }
}

abstract class _$VaccineCopyWith<$Res> implements $VaccineCopyWith<$Res> {
  factory _$VaccineCopyWith(_Vaccine value, $Res Function(_Vaccine) then) =
      __$VaccineCopyWithImpl<$Res>;
  @override
  $Res call(
      {String vaccineType,
      Cvx cvx,
      String beginAge,
      String endAge,
      String tradeName,
      String mvx,
      String volume,
      String forecastVaccineType});
}

class __$VaccineCopyWithImpl<$Res> extends _$VaccineCopyWithImpl<$Res>
    implements _$VaccineCopyWith<$Res> {
  __$VaccineCopyWithImpl(_Vaccine _value, $Res Function(_Vaccine) _then)
      : super(_value, (v) => _then(v as _Vaccine));

  @override
  _Vaccine get _value => super._value as _Vaccine;

  @override
  $Res call({
    Object vaccineType = freezed,
    Object cvx = freezed,
    Object beginAge = freezed,
    Object endAge = freezed,
    Object tradeName = freezed,
    Object mvx = freezed,
    Object volume = freezed,
    Object forecastVaccineType = freezed,
  }) {
    return _then(_Vaccine(
      vaccineType:
          vaccineType == freezed ? _value.vaccineType : vaccineType as String,
      cvx: cvx == freezed ? _value.cvx : cvx as Cvx,
      beginAge: beginAge == freezed ? _value.beginAge : beginAge as String,
      endAge: endAge == freezed ? _value.endAge : endAge as String,
      tradeName: tradeName == freezed ? _value.tradeName : tradeName as String,
      mvx: mvx == freezed ? _value.mvx : mvx as String,
      volume: volume == freezed ? _value.volume : volume as String,
      forecastVaccineType: forecastVaccineType == freezed
          ? _value.forecastVaccineType
          : forecastVaccineType as String,
    ));
  }
}

@JsonSerializable()
class _$_Vaccine implements _Vaccine {
  _$_Vaccine(
      {this.vaccineType,
      this.cvx,
      this.beginAge,
      this.endAge,
      this.tradeName,
      this.mvx,
      this.volume,
      this.forecastVaccineType});

  factory _$_Vaccine.fromJson(Map<String, dynamic> json) =>
      _$_$_VaccineFromJson(json);

  @override
  final String vaccineType;
  @override
  final Cvx cvx;
  @override
  final String beginAge;
  @override
  final String endAge;
  @override
  final String tradeName;
  @override
  final String mvx;
  @override
  final String volume;
  @override
  final String forecastVaccineType;

  @override
  String toString() {
    return 'Vaccine(vaccineType: $vaccineType, cvx: $cvx, beginAge: $beginAge, endAge: $endAge, tradeName: $tradeName, mvx: $mvx, volume: $volume, forecastVaccineType: $forecastVaccineType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Vaccine &&
            (identical(other.vaccineType, vaccineType) ||
                const DeepCollectionEquality()
                    .equals(other.vaccineType, vaccineType)) &&
            (identical(other.cvx, cvx) ||
                const DeepCollectionEquality().equals(other.cvx, cvx)) &&
            (identical(other.beginAge, beginAge) ||
                const DeepCollectionEquality()
                    .equals(other.beginAge, beginAge)) &&
            (identical(other.endAge, endAge) ||
                const DeepCollectionEquality().equals(other.endAge, endAge)) &&
            (identical(other.tradeName, tradeName) ||
                const DeepCollectionEquality()
                    .equals(other.tradeName, tradeName)) &&
            (identical(other.mvx, mvx) ||
                const DeepCollectionEquality().equals(other.mvx, mvx)) &&
            (identical(other.volume, volume) ||
                const DeepCollectionEquality().equals(other.volume, volume)) &&
            (identical(other.forecastVaccineType, forecastVaccineType) ||
                const DeepCollectionEquality()
                    .equals(other.forecastVaccineType, forecastVaccineType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(vaccineType) ^
      const DeepCollectionEquality().hash(cvx) ^
      const DeepCollectionEquality().hash(beginAge) ^
      const DeepCollectionEquality().hash(endAge) ^
      const DeepCollectionEquality().hash(tradeName) ^
      const DeepCollectionEquality().hash(mvx) ^
      const DeepCollectionEquality().hash(volume) ^
      const DeepCollectionEquality().hash(forecastVaccineType);

  @override
  _$VaccineCopyWith<_Vaccine> get copyWith =>
      __$VaccineCopyWithImpl<_Vaccine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VaccineToJson(this);
  }
}

abstract class _Vaccine implements Vaccine {
  factory _Vaccine(
      {String vaccineType,
      Cvx cvx,
      String beginAge,
      String endAge,
      String tradeName,
      String mvx,
      String volume,
      String forecastVaccineType}) = _$_Vaccine;

  factory _Vaccine.fromJson(Map<String, dynamic> json) = _$_Vaccine.fromJson;

  @override
  String get vaccineType;
  @override
  Cvx get cvx;
  @override
  String get beginAge;
  @override
  String get endAge;
  @override
  String get tradeName;
  @override
  String get mvx;
  @override
  String get volume;
  @override
  String get forecastVaccineType;
  @override
  _$VaccineCopyWith<_Vaccine> get copyWith;
}
