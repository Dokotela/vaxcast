// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vaccine_group_contraindications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
VaccineGroupContraindications _$VaccineGroupContraindicationsFromJson(
    Map<String, dynamic> json) {
  return _VaccineGroupContraindications.fromJson(json);
}

/// @nodoc
class _$VaccineGroupContraindicationsTearOff {
  const _$VaccineGroupContraindicationsTearOff();

// ignore: unused_element
  _VaccineGroupContraindications call(
      {List<GroupContraindication> contraindication}) {
    return _VaccineGroupContraindications(
      contraindication: contraindication,
    );
  }

// ignore: unused_element
  VaccineGroupContraindications fromJson(Map<String, Object> json) {
    return VaccineGroupContraindications.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $VaccineGroupContraindications = _$VaccineGroupContraindicationsTearOff();

/// @nodoc
mixin _$VaccineGroupContraindications {
  List<GroupContraindication> get contraindication;

  Map<String, dynamic> toJson();
  $VaccineGroupContraindicationsCopyWith<VaccineGroupContraindications>
      get copyWith;
}

/// @nodoc
abstract class $VaccineGroupContraindicationsCopyWith<$Res> {
  factory $VaccineGroupContraindicationsCopyWith(
          VaccineGroupContraindications value,
          $Res Function(VaccineGroupContraindications) then) =
      _$VaccineGroupContraindicationsCopyWithImpl<$Res>;
  $Res call({List<GroupContraindication> contraindication});
}

/// @nodoc
class _$VaccineGroupContraindicationsCopyWithImpl<$Res>
    implements $VaccineGroupContraindicationsCopyWith<$Res> {
  _$VaccineGroupContraindicationsCopyWithImpl(this._value, this._then);

  final VaccineGroupContraindications _value;
  // ignore: unused_field
  final $Res Function(VaccineGroupContraindications) _then;

  @override
  $Res call({
    Object contraindication = freezed,
  }) {
    return _then(_value.copyWith(
      contraindication: contraindication == freezed
          ? _value.contraindication
          : contraindication as List<GroupContraindication>,
    ));
  }
}

/// @nodoc
abstract class _$VaccineGroupContraindicationsCopyWith<$Res>
    implements $VaccineGroupContraindicationsCopyWith<$Res> {
  factory _$VaccineGroupContraindicationsCopyWith(
          _VaccineGroupContraindications value,
          $Res Function(_VaccineGroupContraindications) then) =
      __$VaccineGroupContraindicationsCopyWithImpl<$Res>;
  @override
  $Res call({List<GroupContraindication> contraindication});
}

/// @nodoc
class __$VaccineGroupContraindicationsCopyWithImpl<$Res>
    extends _$VaccineGroupContraindicationsCopyWithImpl<$Res>
    implements _$VaccineGroupContraindicationsCopyWith<$Res> {
  __$VaccineGroupContraindicationsCopyWithImpl(
      _VaccineGroupContraindications _value,
      $Res Function(_VaccineGroupContraindications) _then)
      : super(_value, (v) => _then(v as _VaccineGroupContraindications));

  @override
  _VaccineGroupContraindications get _value =>
      super._value as _VaccineGroupContraindications;

  @override
  $Res call({
    Object contraindication = freezed,
  }) {
    return _then(_VaccineGroupContraindications(
      contraindication: contraindication == freezed
          ? _value.contraindication
          : contraindication as List<GroupContraindication>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_VaccineGroupContraindications
    implements _VaccineGroupContraindications {
  _$_VaccineGroupContraindications({this.contraindication});

  factory _$_VaccineGroupContraindications.fromJson(
          Map<String, dynamic> json) =>
      _$_$_VaccineGroupContraindicationsFromJson(json);

  @override
  final List<GroupContraindication> contraindication;

  @override
  String toString() {
    return 'VaccineGroupContraindications(contraindication: $contraindication)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccineGroupContraindications &&
            (identical(other.contraindication, contraindication) ||
                const DeepCollectionEquality()
                    .equals(other.contraindication, contraindication)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contraindication);

  @override
  _$VaccineGroupContraindicationsCopyWith<_VaccineGroupContraindications>
      get copyWith => __$VaccineGroupContraindicationsCopyWithImpl<
          _VaccineGroupContraindications>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VaccineGroupContraindicationsToJson(this);
  }
}

abstract class _VaccineGroupContraindications
    implements VaccineGroupContraindications {
  factory _VaccineGroupContraindications(
          {List<GroupContraindication> contraindication}) =
      _$_VaccineGroupContraindications;

  factory _VaccineGroupContraindications.fromJson(Map<String, dynamic> json) =
      _$_VaccineGroupContraindications.fromJson;

  @override
  List<GroupContraindication> get contraindication;
  @override
  _$VaccineGroupContraindicationsCopyWith<_VaccineGroupContraindications>
      get copyWith;
}

GroupContraindication _$GroupContraindicationFromJson(
    Map<String, dynamic> json) {
  return _GroupContraindication.fromJson(json);
}

/// @nodoc
class _$GroupContraindicationTearOff {
  const _$GroupContraindicationTearOff();

// ignore: unused_element
  _GroupContraindication call(
      {Obs observationCode,
      String observationTitle,
      String contraindicationText,
      String contraindicationGuidance,
      String beginAge,
      String endAge}) {
    return _GroupContraindication(
      observationCode: observationCode,
      observationTitle: observationTitle,
      contraindicationText: contraindicationText,
      contraindicationGuidance: contraindicationGuidance,
      beginAge: beginAge,
      endAge: endAge,
    );
  }

// ignore: unused_element
  GroupContraindication fromJson(Map<String, Object> json) {
    return GroupContraindication.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GroupContraindication = _$GroupContraindicationTearOff();

/// @nodoc
mixin _$GroupContraindication {
  Obs get observationCode;
  String get observationTitle;
  String get contraindicationText;
  String get contraindicationGuidance;
  String get beginAge;
  String get endAge;

  Map<String, dynamic> toJson();
  $GroupContraindicationCopyWith<GroupContraindication> get copyWith;
}

/// @nodoc
abstract class $GroupContraindicationCopyWith<$Res> {
  factory $GroupContraindicationCopyWith(GroupContraindication value,
          $Res Function(GroupContraindication) then) =
      _$GroupContraindicationCopyWithImpl<$Res>;
  $Res call(
      {Obs observationCode,
      String observationTitle,
      String contraindicationText,
      String contraindicationGuidance,
      String beginAge,
      String endAge});
}

/// @nodoc
class _$GroupContraindicationCopyWithImpl<$Res>
    implements $GroupContraindicationCopyWith<$Res> {
  _$GroupContraindicationCopyWithImpl(this._value, this._then);

  final GroupContraindication _value;
  // ignore: unused_field
  final $Res Function(GroupContraindication) _then;

  @override
  $Res call({
    Object observationCode = freezed,
    Object observationTitle = freezed,
    Object contraindicationText = freezed,
    Object contraindicationGuidance = freezed,
    Object beginAge = freezed,
    Object endAge = freezed,
  }) {
    return _then(_value.copyWith(
      observationCode: observationCode == freezed
          ? _value.observationCode
          : observationCode as Obs,
      observationTitle: observationTitle == freezed
          ? _value.observationTitle
          : observationTitle as String,
      contraindicationText: contraindicationText == freezed
          ? _value.contraindicationText
          : contraindicationText as String,
      contraindicationGuidance: contraindicationGuidance == freezed
          ? _value.contraindicationGuidance
          : contraindicationGuidance as String,
      beginAge: beginAge == freezed ? _value.beginAge : beginAge as String,
      endAge: endAge == freezed ? _value.endAge : endAge as String,
    ));
  }
}

/// @nodoc
abstract class _$GroupContraindicationCopyWith<$Res>
    implements $GroupContraindicationCopyWith<$Res> {
  factory _$GroupContraindicationCopyWith(_GroupContraindication value,
          $Res Function(_GroupContraindication) then) =
      __$GroupContraindicationCopyWithImpl<$Res>;
  @override
  $Res call(
      {Obs observationCode,
      String observationTitle,
      String contraindicationText,
      String contraindicationGuidance,
      String beginAge,
      String endAge});
}

/// @nodoc
class __$GroupContraindicationCopyWithImpl<$Res>
    extends _$GroupContraindicationCopyWithImpl<$Res>
    implements _$GroupContraindicationCopyWith<$Res> {
  __$GroupContraindicationCopyWithImpl(_GroupContraindication _value,
      $Res Function(_GroupContraindication) _then)
      : super(_value, (v) => _then(v as _GroupContraindication));

  @override
  _GroupContraindication get _value => super._value as _GroupContraindication;

  @override
  $Res call({
    Object observationCode = freezed,
    Object observationTitle = freezed,
    Object contraindicationText = freezed,
    Object contraindicationGuidance = freezed,
    Object beginAge = freezed,
    Object endAge = freezed,
  }) {
    return _then(_GroupContraindication(
      observationCode: observationCode == freezed
          ? _value.observationCode
          : observationCode as Obs,
      observationTitle: observationTitle == freezed
          ? _value.observationTitle
          : observationTitle as String,
      contraindicationText: contraindicationText == freezed
          ? _value.contraindicationText
          : contraindicationText as String,
      contraindicationGuidance: contraindicationGuidance == freezed
          ? _value.contraindicationGuidance
          : contraindicationGuidance as String,
      beginAge: beginAge == freezed ? _value.beginAge : beginAge as String,
      endAge: endAge == freezed ? _value.endAge : endAge as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GroupContraindication implements _GroupContraindication {
  _$_GroupContraindication(
      {this.observationCode,
      this.observationTitle,
      this.contraindicationText,
      this.contraindicationGuidance,
      this.beginAge,
      this.endAge});

  factory _$_GroupContraindication.fromJson(Map<String, dynamic> json) =>
      _$_$_GroupContraindicationFromJson(json);

  @override
  final Obs observationCode;
  @override
  final String observationTitle;
  @override
  final String contraindicationText;
  @override
  final String contraindicationGuidance;
  @override
  final String beginAge;
  @override
  final String endAge;

  @override
  String toString() {
    return 'GroupContraindication(observationCode: $observationCode, observationTitle: $observationTitle, contraindicationText: $contraindicationText, contraindicationGuidance: $contraindicationGuidance, beginAge: $beginAge, endAge: $endAge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupContraindication &&
            (identical(other.observationCode, observationCode) ||
                const DeepCollectionEquality()
                    .equals(other.observationCode, observationCode)) &&
            (identical(other.observationTitle, observationTitle) ||
                const DeepCollectionEquality()
                    .equals(other.observationTitle, observationTitle)) &&
            (identical(other.contraindicationText, contraindicationText) ||
                const DeepCollectionEquality().equals(
                    other.contraindicationText, contraindicationText)) &&
            (identical(
                    other.contraindicationGuidance, contraindicationGuidance) ||
                const DeepCollectionEquality().equals(
                    other.contraindicationGuidance,
                    contraindicationGuidance)) &&
            (identical(other.beginAge, beginAge) ||
                const DeepCollectionEquality()
                    .equals(other.beginAge, beginAge)) &&
            (identical(other.endAge, endAge) ||
                const DeepCollectionEquality().equals(other.endAge, endAge)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(observationCode) ^
      const DeepCollectionEquality().hash(observationTitle) ^
      const DeepCollectionEquality().hash(contraindicationText) ^
      const DeepCollectionEquality().hash(contraindicationGuidance) ^
      const DeepCollectionEquality().hash(beginAge) ^
      const DeepCollectionEquality().hash(endAge);

  @override
  _$GroupContraindicationCopyWith<_GroupContraindication> get copyWith =>
      __$GroupContraindicationCopyWithImpl<_GroupContraindication>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroupContraindicationToJson(this);
  }
}

abstract class _GroupContraindication implements GroupContraindication {
  factory _GroupContraindication(
      {Obs observationCode,
      String observationTitle,
      String contraindicationText,
      String contraindicationGuidance,
      String beginAge,
      String endAge}) = _$_GroupContraindication;

  factory _GroupContraindication.fromJson(Map<String, dynamic> json) =
      _$_GroupContraindication.fromJson;

  @override
  Obs get observationCode;
  @override
  String get observationTitle;
  @override
  String get contraindicationText;
  @override
  String get contraindicationGuidance;
  @override
  String get beginAge;
  @override
  String get endAge;
  @override
  _$GroupContraindicationCopyWith<_GroupContraindication> get copyWith;
}
