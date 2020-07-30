// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contraindications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Contraindications _$ContraindicationsFromJson(Map<String, dynamic> json) {
  return _Contraindications.fromJson(json);
}

class _$ContraindicationsTearOff {
  const _$ContraindicationsTearOff();

// ignore: unused_element
  _Contraindications call(
      {VaccineGroupContraindications vaccineGroup,
      VaccineContraindications vaccine}) {
    return _Contraindications(
      vaccineGroup: vaccineGroup,
      vaccine: vaccine,
    );
  }
}

// ignore: unused_element
const $Contraindications = _$ContraindicationsTearOff();

mixin _$Contraindications {
  VaccineGroupContraindications get vaccineGroup;
  VaccineContraindications get vaccine;

  Map<String, dynamic> toJson();
  $ContraindicationsCopyWith<Contraindications> get copyWith;
}

abstract class $ContraindicationsCopyWith<$Res> {
  factory $ContraindicationsCopyWith(
          Contraindications value, $Res Function(Contraindications) then) =
      _$ContraindicationsCopyWithImpl<$Res>;
  $Res call(
      {VaccineGroupContraindications vaccineGroup,
      VaccineContraindications vaccine});

  $VaccineGroupContraindicationsCopyWith<$Res> get vaccineGroup;
  $VaccineContraindicationsCopyWith<$Res> get vaccine;
}

class _$ContraindicationsCopyWithImpl<$Res>
    implements $ContraindicationsCopyWith<$Res> {
  _$ContraindicationsCopyWithImpl(this._value, this._then);

  final Contraindications _value;
  // ignore: unused_field
  final $Res Function(Contraindications) _then;

  @override
  $Res call({
    Object vaccineGroup = freezed,
    Object vaccine = freezed,
  }) {
    return _then(_value.copyWith(
      vaccineGroup: vaccineGroup == freezed
          ? _value.vaccineGroup
          : vaccineGroup as VaccineGroupContraindications,
      vaccine: vaccine == freezed
          ? _value.vaccine
          : vaccine as VaccineContraindications,
    ));
  }

  @override
  $VaccineGroupContraindicationsCopyWith<$Res> get vaccineGroup {
    if (_value.vaccineGroup == null) {
      return null;
    }
    return $VaccineGroupContraindicationsCopyWith<$Res>(_value.vaccineGroup,
        (value) {
      return _then(_value.copyWith(vaccineGroup: value));
    });
  }

  @override
  $VaccineContraindicationsCopyWith<$Res> get vaccine {
    if (_value.vaccine == null) {
      return null;
    }
    return $VaccineContraindicationsCopyWith<$Res>(_value.vaccine, (value) {
      return _then(_value.copyWith(vaccine: value));
    });
  }
}

abstract class _$ContraindicationsCopyWith<$Res>
    implements $ContraindicationsCopyWith<$Res> {
  factory _$ContraindicationsCopyWith(
          _Contraindications value, $Res Function(_Contraindications) then) =
      __$ContraindicationsCopyWithImpl<$Res>;
  @override
  $Res call(
      {VaccineGroupContraindications vaccineGroup,
      VaccineContraindications vaccine});

  @override
  $VaccineGroupContraindicationsCopyWith<$Res> get vaccineGroup;
  @override
  $VaccineContraindicationsCopyWith<$Res> get vaccine;
}

class __$ContraindicationsCopyWithImpl<$Res>
    extends _$ContraindicationsCopyWithImpl<$Res>
    implements _$ContraindicationsCopyWith<$Res> {
  __$ContraindicationsCopyWithImpl(
      _Contraindications _value, $Res Function(_Contraindications) _then)
      : super(_value, (v) => _then(v as _Contraindications));

  @override
  _Contraindications get _value => super._value as _Contraindications;

  @override
  $Res call({
    Object vaccineGroup = freezed,
    Object vaccine = freezed,
  }) {
    return _then(_Contraindications(
      vaccineGroup: vaccineGroup == freezed
          ? _value.vaccineGroup
          : vaccineGroup as VaccineGroupContraindications,
      vaccine: vaccine == freezed
          ? _value.vaccine
          : vaccine as VaccineContraindications,
    ));
  }
}

@JsonSerializable()
class _$_Contraindications implements _Contraindications {
  _$_Contraindications({this.vaccineGroup, this.vaccine});

  factory _$_Contraindications.fromJson(Map<String, dynamic> json) =>
      _$_$_ContraindicationsFromJson(json);

  @override
  final VaccineGroupContraindications vaccineGroup;
  @override
  final VaccineContraindications vaccine;

  @override
  String toString() {
    return 'Contraindications(vaccineGroup: $vaccineGroup, vaccine: $vaccine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Contraindications &&
            (identical(other.vaccineGroup, vaccineGroup) ||
                const DeepCollectionEquality()
                    .equals(other.vaccineGroup, vaccineGroup)) &&
            (identical(other.vaccine, vaccine) ||
                const DeepCollectionEquality().equals(other.vaccine, vaccine)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(vaccineGroup) ^
      const DeepCollectionEquality().hash(vaccine);

  @override
  _$ContraindicationsCopyWith<_Contraindications> get copyWith =>
      __$ContraindicationsCopyWithImpl<_Contraindications>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ContraindicationsToJson(this);
  }
}

abstract class _Contraindications implements Contraindications {
  factory _Contraindications(
      {VaccineGroupContraindications vaccineGroup,
      VaccineContraindications vaccine}) = _$_Contraindications;

  factory _Contraindications.fromJson(Map<String, dynamic> json) =
      _$_Contraindications.fromJson;

  @override
  VaccineGroupContraindications get vaccineGroup;
  @override
  VaccineContraindications get vaccine;
  @override
  _$ContraindicationsCopyWith<_Contraindications> get copyWith;
}
