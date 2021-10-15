// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vaccine_contraindications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VaccineContraindications _$VaccineContraindicationsFromJson(
    Map<String, dynamic> json) {
  return _VaccineContraindications.fromJson(json);
}

/// @nodoc
class _$VaccineContraindicationsTearOff {
  const _$VaccineContraindicationsTearOff();

  _VaccineContraindications call(
      {List<VaccineContraindication>? contraindication}) {
    return _VaccineContraindications(
      contraindication: contraindication,
    );
  }

  VaccineContraindications fromJson(Map<String, Object> json) {
    return VaccineContraindications.fromJson(json);
  }
}

/// @nodoc
const $VaccineContraindications = _$VaccineContraindicationsTearOff();

/// @nodoc
mixin _$VaccineContraindications {
  List<VaccineContraindication>? get contraindication =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineContraindicationsCopyWith<VaccineContraindications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineContraindicationsCopyWith<$Res> {
  factory $VaccineContraindicationsCopyWith(VaccineContraindications value,
          $Res Function(VaccineContraindications) then) =
      _$VaccineContraindicationsCopyWithImpl<$Res>;
  $Res call({List<VaccineContraindication>? contraindication});
}

/// @nodoc
class _$VaccineContraindicationsCopyWithImpl<$Res>
    implements $VaccineContraindicationsCopyWith<$Res> {
  _$VaccineContraindicationsCopyWithImpl(this._value, this._then);

  final VaccineContraindications _value;
  // ignore: unused_field
  final $Res Function(VaccineContraindications) _then;

  @override
  $Res call({
    Object? contraindication = freezed,
  }) {
    return _then(_value.copyWith(
      contraindication: contraindication == freezed
          ? _value.contraindication
          : contraindication // ignore: cast_nullable_to_non_nullable
              as List<VaccineContraindication>?,
    ));
  }
}

/// @nodoc
abstract class _$VaccineContraindicationsCopyWith<$Res>
    implements $VaccineContraindicationsCopyWith<$Res> {
  factory _$VaccineContraindicationsCopyWith(_VaccineContraindications value,
          $Res Function(_VaccineContraindications) then) =
      __$VaccineContraindicationsCopyWithImpl<$Res>;
  @override
  $Res call({List<VaccineContraindication>? contraindication});
}

/// @nodoc
class __$VaccineContraindicationsCopyWithImpl<$Res>
    extends _$VaccineContraindicationsCopyWithImpl<$Res>
    implements _$VaccineContraindicationsCopyWith<$Res> {
  __$VaccineContraindicationsCopyWithImpl(_VaccineContraindications _value,
      $Res Function(_VaccineContraindications) _then)
      : super(_value, (v) => _then(v as _VaccineContraindications));

  @override
  _VaccineContraindications get _value =>
      super._value as _VaccineContraindications;

  @override
  $Res call({
    Object? contraindication = freezed,
  }) {
    return _then(_VaccineContraindications(
      contraindication: contraindication == freezed
          ? _value.contraindication
          : contraindication // ignore: cast_nullable_to_non_nullable
              as List<VaccineContraindication>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaccineContraindications implements _VaccineContraindications {
  _$_VaccineContraindications({this.contraindication});

  factory _$_VaccineContraindications.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineContraindicationsFromJson(json);

  @override
  final List<VaccineContraindication>? contraindication;

  @override
  String toString() {
    return 'VaccineContraindications(contraindication: $contraindication)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccineContraindications &&
            (identical(other.contraindication, contraindication) ||
                const DeepCollectionEquality()
                    .equals(other.contraindication, contraindication)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contraindication);

  @JsonKey(ignore: true)
  @override
  _$VaccineContraindicationsCopyWith<_VaccineContraindications> get copyWith =>
      __$VaccineContraindicationsCopyWithImpl<_VaccineContraindications>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineContraindicationsToJson(this);
  }
}

abstract class _VaccineContraindications implements VaccineContraindications {
  factory _VaccineContraindications(
          {List<VaccineContraindication>? contraindication}) =
      _$_VaccineContraindications;

  factory _VaccineContraindications.fromJson(Map<String, dynamic> json) =
      _$_VaccineContraindications.fromJson;

  @override
  List<VaccineContraindication>? get contraindication =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VaccineContraindicationsCopyWith<_VaccineContraindications> get copyWith =>
      throw _privateConstructorUsedError;
}

VaccineContraindication _$VaccineContraindicationFromJson(
    Map<String, dynamic> json) {
  return _VaccineContraindication.fromJson(json);
}

/// @nodoc
class _$VaccineContraindicationTearOff {
  const _$VaccineContraindicationTearOff();

  _VaccineContraindication call(
      {Obs? observationCode,
      String? observationTitle,
      String? contraindicationText,
      String? contraindicationGuidance,
      List<Vaccine>? contraindicatedVaccine}) {
    return _VaccineContraindication(
      observationCode: observationCode,
      observationTitle: observationTitle,
      contraindicationText: contraindicationText,
      contraindicationGuidance: contraindicationGuidance,
      contraindicatedVaccine: contraindicatedVaccine,
    );
  }

  VaccineContraindication fromJson(Map<String, Object> json) {
    return VaccineContraindication.fromJson(json);
  }
}

/// @nodoc
const $VaccineContraindication = _$VaccineContraindicationTearOff();

/// @nodoc
mixin _$VaccineContraindication {
  Obs? get observationCode => throw _privateConstructorUsedError;
  String? get observationTitle => throw _privateConstructorUsedError;
  String? get contraindicationText => throw _privateConstructorUsedError;
  String? get contraindicationGuidance => throw _privateConstructorUsedError;
  List<Vaccine>? get contraindicatedVaccine =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineContraindicationCopyWith<VaccineContraindication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineContraindicationCopyWith<$Res> {
  factory $VaccineContraindicationCopyWith(VaccineContraindication value,
          $Res Function(VaccineContraindication) then) =
      _$VaccineContraindicationCopyWithImpl<$Res>;
  $Res call(
      {Obs? observationCode,
      String? observationTitle,
      String? contraindicationText,
      String? contraindicationGuidance,
      List<Vaccine>? contraindicatedVaccine});
}

/// @nodoc
class _$VaccineContraindicationCopyWithImpl<$Res>
    implements $VaccineContraindicationCopyWith<$Res> {
  _$VaccineContraindicationCopyWithImpl(this._value, this._then);

  final VaccineContraindication _value;
  // ignore: unused_field
  final $Res Function(VaccineContraindication) _then;

  @override
  $Res call({
    Object? observationCode = freezed,
    Object? observationTitle = freezed,
    Object? contraindicationText = freezed,
    Object? contraindicationGuidance = freezed,
    Object? contraindicatedVaccine = freezed,
  }) {
    return _then(_value.copyWith(
      observationCode: observationCode == freezed
          ? _value.observationCode
          : observationCode // ignore: cast_nullable_to_non_nullable
              as Obs?,
      observationTitle: observationTitle == freezed
          ? _value.observationTitle
          : observationTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      contraindicationText: contraindicationText == freezed
          ? _value.contraindicationText
          : contraindicationText // ignore: cast_nullable_to_non_nullable
              as String?,
      contraindicationGuidance: contraindicationGuidance == freezed
          ? _value.contraindicationGuidance
          : contraindicationGuidance // ignore: cast_nullable_to_non_nullable
              as String?,
      contraindicatedVaccine: contraindicatedVaccine == freezed
          ? _value.contraindicatedVaccine
          : contraindicatedVaccine // ignore: cast_nullable_to_non_nullable
              as List<Vaccine>?,
    ));
  }
}

/// @nodoc
abstract class _$VaccineContraindicationCopyWith<$Res>
    implements $VaccineContraindicationCopyWith<$Res> {
  factory _$VaccineContraindicationCopyWith(_VaccineContraindication value,
          $Res Function(_VaccineContraindication) then) =
      __$VaccineContraindicationCopyWithImpl<$Res>;
  @override
  $Res call(
      {Obs? observationCode,
      String? observationTitle,
      String? contraindicationText,
      String? contraindicationGuidance,
      List<Vaccine>? contraindicatedVaccine});
}

/// @nodoc
class __$VaccineContraindicationCopyWithImpl<$Res>
    extends _$VaccineContraindicationCopyWithImpl<$Res>
    implements _$VaccineContraindicationCopyWith<$Res> {
  __$VaccineContraindicationCopyWithImpl(_VaccineContraindication _value,
      $Res Function(_VaccineContraindication) _then)
      : super(_value, (v) => _then(v as _VaccineContraindication));

  @override
  _VaccineContraindication get _value =>
      super._value as _VaccineContraindication;

  @override
  $Res call({
    Object? observationCode = freezed,
    Object? observationTitle = freezed,
    Object? contraindicationText = freezed,
    Object? contraindicationGuidance = freezed,
    Object? contraindicatedVaccine = freezed,
  }) {
    return _then(_VaccineContraindication(
      observationCode: observationCode == freezed
          ? _value.observationCode
          : observationCode // ignore: cast_nullable_to_non_nullable
              as Obs?,
      observationTitle: observationTitle == freezed
          ? _value.observationTitle
          : observationTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      contraindicationText: contraindicationText == freezed
          ? _value.contraindicationText
          : contraindicationText // ignore: cast_nullable_to_non_nullable
              as String?,
      contraindicationGuidance: contraindicationGuidance == freezed
          ? _value.contraindicationGuidance
          : contraindicationGuidance // ignore: cast_nullable_to_non_nullable
              as String?,
      contraindicatedVaccine: contraindicatedVaccine == freezed
          ? _value.contraindicatedVaccine
          : contraindicatedVaccine // ignore: cast_nullable_to_non_nullable
              as List<Vaccine>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaccineContraindication implements _VaccineContraindication {
  _$_VaccineContraindication(
      {this.observationCode,
      this.observationTitle,
      this.contraindicationText,
      this.contraindicationGuidance,
      this.contraindicatedVaccine});

  factory _$_VaccineContraindication.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineContraindicationFromJson(json);

  @override
  final Obs? observationCode;
  @override
  final String? observationTitle;
  @override
  final String? contraindicationText;
  @override
  final String? contraindicationGuidance;
  @override
  final List<Vaccine>? contraindicatedVaccine;

  @override
  String toString() {
    return 'VaccineContraindication(observationCode: $observationCode, observationTitle: $observationTitle, contraindicationText: $contraindicationText, contraindicationGuidance: $contraindicationGuidance, contraindicatedVaccine: $contraindicatedVaccine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccineContraindication &&
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
            (identical(other.contraindicatedVaccine, contraindicatedVaccine) ||
                const DeepCollectionEquality().equals(
                    other.contraindicatedVaccine, contraindicatedVaccine)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(observationCode) ^
      const DeepCollectionEquality().hash(observationTitle) ^
      const DeepCollectionEquality().hash(contraindicationText) ^
      const DeepCollectionEquality().hash(contraindicationGuidance) ^
      const DeepCollectionEquality().hash(contraindicatedVaccine);

  @JsonKey(ignore: true)
  @override
  _$VaccineContraindicationCopyWith<_VaccineContraindication> get copyWith =>
      __$VaccineContraindicationCopyWithImpl<_VaccineContraindication>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineContraindicationToJson(this);
  }
}

abstract class _VaccineContraindication implements VaccineContraindication {
  factory _VaccineContraindication(
      {Obs? observationCode,
      String? observationTitle,
      String? contraindicationText,
      String? contraindicationGuidance,
      List<Vaccine>? contraindicatedVaccine}) = _$_VaccineContraindication;

  factory _VaccineContraindication.fromJson(Map<String, dynamic> json) =
      _$_VaccineContraindication.fromJson;

  @override
  Obs? get observationCode => throw _privateConstructorUsedError;
  @override
  String? get observationTitle => throw _privateConstructorUsedError;
  @override
  String? get contraindicationText => throw _privateConstructorUsedError;
  @override
  String? get contraindicationGuidance => throw _privateConstructorUsedError;
  @override
  List<Vaccine>? get contraindicatedVaccine =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VaccineContraindicationCopyWith<_VaccineContraindication> get copyWith =>
      throw _privateConstructorUsedError;
}
