// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'indication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Indication _$IndicationFromJson(Map<String, dynamic> json) {
  return _Indication.fromJson(json);
}

class _$IndicationTearOff {
  const _$IndicationTearOff();

// ignore: unused_element
  _Indication call(
      {ObservationCode observationCode,
      String description,
      String beginAge,
      String endAge,
      String guidance}) {
    return _Indication(
      observationCode: observationCode,
      description: description,
      beginAge: beginAge,
      endAge: endAge,
      guidance: guidance,
    );
  }
}

// ignore: unused_element
const $Indication = _$IndicationTearOff();

mixin _$Indication {
  ObservationCode get observationCode;
  String get description;
  String get beginAge;
  String get endAge;
  String get guidance;

  Map<String, dynamic> toJson();
  $IndicationCopyWith<Indication> get copyWith;
}

abstract class $IndicationCopyWith<$Res> {
  factory $IndicationCopyWith(
          Indication value, $Res Function(Indication) then) =
      _$IndicationCopyWithImpl<$Res>;
  $Res call(
      {ObservationCode observationCode,
      String description,
      String beginAge,
      String endAge,
      String guidance});

  $ObservationCodeCopyWith<$Res> get observationCode;
}

class _$IndicationCopyWithImpl<$Res> implements $IndicationCopyWith<$Res> {
  _$IndicationCopyWithImpl(this._value, this._then);

  final Indication _value;
  // ignore: unused_field
  final $Res Function(Indication) _then;

  @override
  $Res call({
    Object observationCode = freezed,
    Object description = freezed,
    Object beginAge = freezed,
    Object endAge = freezed,
    Object guidance = freezed,
  }) {
    return _then(_value.copyWith(
      observationCode: observationCode == freezed
          ? _value.observationCode
          : observationCode as ObservationCode,
      description:
          description == freezed ? _value.description : description as String,
      beginAge: beginAge == freezed ? _value.beginAge : beginAge as String,
      endAge: endAge == freezed ? _value.endAge : endAge as String,
      guidance: guidance == freezed ? _value.guidance : guidance as String,
    ));
  }

  @override
  $ObservationCodeCopyWith<$Res> get observationCode {
    if (_value.observationCode == null) {
      return null;
    }
    return $ObservationCodeCopyWith<$Res>(_value.observationCode, (value) {
      return _then(_value.copyWith(observationCode: value));
    });
  }
}

abstract class _$IndicationCopyWith<$Res> implements $IndicationCopyWith<$Res> {
  factory _$IndicationCopyWith(
          _Indication value, $Res Function(_Indication) then) =
      __$IndicationCopyWithImpl<$Res>;
  @override
  $Res call(
      {ObservationCode observationCode,
      String description,
      String beginAge,
      String endAge,
      String guidance});

  @override
  $ObservationCodeCopyWith<$Res> get observationCode;
}

class __$IndicationCopyWithImpl<$Res> extends _$IndicationCopyWithImpl<$Res>
    implements _$IndicationCopyWith<$Res> {
  __$IndicationCopyWithImpl(
      _Indication _value, $Res Function(_Indication) _then)
      : super(_value, (v) => _then(v as _Indication));

  @override
  _Indication get _value => super._value as _Indication;

  @override
  $Res call({
    Object observationCode = freezed,
    Object description = freezed,
    Object beginAge = freezed,
    Object endAge = freezed,
    Object guidance = freezed,
  }) {
    return _then(_Indication(
      observationCode: observationCode == freezed
          ? _value.observationCode
          : observationCode as ObservationCode,
      description:
          description == freezed ? _value.description : description as String,
      beginAge: beginAge == freezed ? _value.beginAge : beginAge as String,
      endAge: endAge == freezed ? _value.endAge : endAge as String,
      guidance: guidance == freezed ? _value.guidance : guidance as String,
    ));
  }
}

@JsonSerializable()
class _$_Indication implements _Indication {
  _$_Indication(
      {this.observationCode,
      this.description,
      this.beginAge,
      this.endAge,
      this.guidance});

  factory _$_Indication.fromJson(Map<String, dynamic> json) =>
      _$_$_IndicationFromJson(json);

  @override
  final ObservationCode observationCode;
  @override
  final String description;
  @override
  final String beginAge;
  @override
  final String endAge;
  @override
  final String guidance;

  @override
  String toString() {
    return 'Indication(observationCode: $observationCode, description: $description, beginAge: $beginAge, endAge: $endAge, guidance: $guidance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Indication &&
            (identical(other.observationCode, observationCode) ||
                const DeepCollectionEquality()
                    .equals(other.observationCode, observationCode)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.beginAge, beginAge) ||
                const DeepCollectionEquality()
                    .equals(other.beginAge, beginAge)) &&
            (identical(other.endAge, endAge) ||
                const DeepCollectionEquality().equals(other.endAge, endAge)) &&
            (identical(other.guidance, guidance) ||
                const DeepCollectionEquality()
                    .equals(other.guidance, guidance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(observationCode) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(beginAge) ^
      const DeepCollectionEquality().hash(endAge) ^
      const DeepCollectionEquality().hash(guidance);

  @override
  _$IndicationCopyWith<_Indication> get copyWith =>
      __$IndicationCopyWithImpl<_Indication>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IndicationToJson(this);
  }
}

abstract class _Indication implements Indication {
  factory _Indication(
      {ObservationCode observationCode,
      String description,
      String beginAge,
      String endAge,
      String guidance}) = _$_Indication;

  factory _Indication.fromJson(Map<String, dynamic> json) =
      _$_Indication.fromJson;

  @override
  ObservationCode get observationCode;
  @override
  String get description;
  @override
  String get beginAge;
  @override
  String get endAge;
  @override
  String get guidance;
  @override
  _$IndicationCopyWith<_Indication> get copyWith;
}
