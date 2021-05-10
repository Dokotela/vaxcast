// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'observations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Observations _$ObservationsFromJson(Map<String, dynamic> json) {
  return _Observations.fromJson(json);
}

/// @nodoc
class _$ObservationsTearOff {
  const _$ObservationsTearOff();

  _Observations call({List<Observation>? observation}) {
    return _Observations(
      observation: observation,
    );
  }

  Observations fromJson(Map<String, Object> json) {
    return Observations.fromJson(json);
  }
}

/// @nodoc
const $Observations = _$ObservationsTearOff();

/// @nodoc
mixin _$Observations {
  List<Observation>? get observation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationsCopyWith<Observations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationsCopyWith<$Res> {
  factory $ObservationsCopyWith(
          Observations value, $Res Function(Observations) then) =
      _$ObservationsCopyWithImpl<$Res>;
  $Res call({List<Observation>? observation});
}

/// @nodoc
class _$ObservationsCopyWithImpl<$Res> implements $ObservationsCopyWith<$Res> {
  _$ObservationsCopyWithImpl(this._value, this._then);

  final Observations _value;
  // ignore: unused_field
  final $Res Function(Observations) _then;

  @override
  $Res call({
    Object? observation = freezed,
  }) {
    return _then(_value.copyWith(
      observation: observation == freezed
          ? _value.observation
          : observation // ignore: cast_nullable_to_non_nullable
              as List<Observation>?,
    ));
  }
}

/// @nodoc
abstract class _$ObservationsCopyWith<$Res>
    implements $ObservationsCopyWith<$Res> {
  factory _$ObservationsCopyWith(
          _Observations value, $Res Function(_Observations) then) =
      __$ObservationsCopyWithImpl<$Res>;
  @override
  $Res call({List<Observation>? observation});
}

/// @nodoc
class __$ObservationsCopyWithImpl<$Res> extends _$ObservationsCopyWithImpl<$Res>
    implements _$ObservationsCopyWith<$Res> {
  __$ObservationsCopyWithImpl(
      _Observations _value, $Res Function(_Observations) _then)
      : super(_value, (v) => _then(v as _Observations));

  @override
  _Observations get _value => super._value as _Observations;

  @override
  $Res call({
    Object? observation = freezed,
  }) {
    return _then(_Observations(
      observation: observation == freezed
          ? _value.observation
          : observation // ignore: cast_nullable_to_non_nullable
              as List<Observation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Observations implements _Observations {
  _$_Observations({this.observation});

  factory _$_Observations.fromJson(Map<String, dynamic> json) =>
      _$_$_ObservationsFromJson(json);

  @override
  final List<Observation>? observation;

  @override
  String toString() {
    return 'Observations(observation: $observation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Observations &&
            (identical(other.observation, observation) ||
                const DeepCollectionEquality()
                    .equals(other.observation, observation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(observation);

  @JsonKey(ignore: true)
  @override
  _$ObservationsCopyWith<_Observations> get copyWith =>
      __$ObservationsCopyWithImpl<_Observations>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ObservationsToJson(this);
  }
}

abstract class _Observations implements Observations {
  factory _Observations({List<Observation>? observation}) = _$_Observations;

  factory _Observations.fromJson(Map<String, dynamic> json) =
      _$_Observations.fromJson;

  @override
  List<Observation>? get observation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ObservationsCopyWith<_Observations> get copyWith =>
      throw _privateConstructorUsedError;
}

Observation _$ObservationFromJson(Map<String, dynamic> json) {
  return _Observation.fromJson(json);
}

/// @nodoc
class _$ObservationTearOff {
  const _$ObservationTearOff();

  _Observation call(
      {Obs? observationCode,
      String? observationTitle,
      String? group,
      String? indicationText,
      String? contraindicationText,
      String? clarifyingText,
      CodedValues? codedValues}) {
    return _Observation(
      observationCode: observationCode,
      observationTitle: observationTitle,
      group: group,
      indicationText: indicationText,
      contraindicationText: contraindicationText,
      clarifyingText: clarifyingText,
      codedValues: codedValues,
    );
  }

  Observation fromJson(Map<String, Object> json) {
    return Observation.fromJson(json);
  }
}

/// @nodoc
const $Observation = _$ObservationTearOff();

/// @nodoc
mixin _$Observation {
  Obs? get observationCode => throw _privateConstructorUsedError;
  String? get observationTitle => throw _privateConstructorUsedError;
  String? get group => throw _privateConstructorUsedError;
  String? get indicationText => throw _privateConstructorUsedError;
  String? get contraindicationText => throw _privateConstructorUsedError;
  String? get clarifyingText => throw _privateConstructorUsedError;
  CodedValues? get codedValues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationCopyWith<Observation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationCopyWith<$Res> {
  factory $ObservationCopyWith(
          Observation value, $Res Function(Observation) then) =
      _$ObservationCopyWithImpl<$Res>;
  $Res call(
      {Obs? observationCode,
      String? observationTitle,
      String? group,
      String? indicationText,
      String? contraindicationText,
      String? clarifyingText,
      CodedValues? codedValues});

  $CodedValuesCopyWith<$Res>? get codedValues;
}

/// @nodoc
class _$ObservationCopyWithImpl<$Res> implements $ObservationCopyWith<$Res> {
  _$ObservationCopyWithImpl(this._value, this._then);

  final Observation _value;
  // ignore: unused_field
  final $Res Function(Observation) _then;

  @override
  $Res call({
    Object? observationCode = freezed,
    Object? observationTitle = freezed,
    Object? group = freezed,
    Object? indicationText = freezed,
    Object? contraindicationText = freezed,
    Object? clarifyingText = freezed,
    Object? codedValues = freezed,
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
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      indicationText: indicationText == freezed
          ? _value.indicationText
          : indicationText // ignore: cast_nullable_to_non_nullable
              as String?,
      contraindicationText: contraindicationText == freezed
          ? _value.contraindicationText
          : contraindicationText // ignore: cast_nullable_to_non_nullable
              as String?,
      clarifyingText: clarifyingText == freezed
          ? _value.clarifyingText
          : clarifyingText // ignore: cast_nullable_to_non_nullable
              as String?,
      codedValues: codedValues == freezed
          ? _value.codedValues
          : codedValues // ignore: cast_nullable_to_non_nullable
              as CodedValues?,
    ));
  }

  @override
  $CodedValuesCopyWith<$Res>? get codedValues {
    if (_value.codedValues == null) {
      return null;
    }

    return $CodedValuesCopyWith<$Res>(_value.codedValues!, (value) {
      return _then(_value.copyWith(codedValues: value));
    });
  }
}

/// @nodoc
abstract class _$ObservationCopyWith<$Res>
    implements $ObservationCopyWith<$Res> {
  factory _$ObservationCopyWith(
          _Observation value, $Res Function(_Observation) then) =
      __$ObservationCopyWithImpl<$Res>;
  @override
  $Res call(
      {Obs? observationCode,
      String? observationTitle,
      String? group,
      String? indicationText,
      String? contraindicationText,
      String? clarifyingText,
      CodedValues? codedValues});

  @override
  $CodedValuesCopyWith<$Res>? get codedValues;
}

/// @nodoc
class __$ObservationCopyWithImpl<$Res> extends _$ObservationCopyWithImpl<$Res>
    implements _$ObservationCopyWith<$Res> {
  __$ObservationCopyWithImpl(
      _Observation _value, $Res Function(_Observation) _then)
      : super(_value, (v) => _then(v as _Observation));

  @override
  _Observation get _value => super._value as _Observation;

  @override
  $Res call({
    Object? observationCode = freezed,
    Object? observationTitle = freezed,
    Object? group = freezed,
    Object? indicationText = freezed,
    Object? contraindicationText = freezed,
    Object? clarifyingText = freezed,
    Object? codedValues = freezed,
  }) {
    return _then(_Observation(
      observationCode: observationCode == freezed
          ? _value.observationCode
          : observationCode // ignore: cast_nullable_to_non_nullable
              as Obs?,
      observationTitle: observationTitle == freezed
          ? _value.observationTitle
          : observationTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      indicationText: indicationText == freezed
          ? _value.indicationText
          : indicationText // ignore: cast_nullable_to_non_nullable
              as String?,
      contraindicationText: contraindicationText == freezed
          ? _value.contraindicationText
          : contraindicationText // ignore: cast_nullable_to_non_nullable
              as String?,
      clarifyingText: clarifyingText == freezed
          ? _value.clarifyingText
          : clarifyingText // ignore: cast_nullable_to_non_nullable
              as String?,
      codedValues: codedValues == freezed
          ? _value.codedValues
          : codedValues // ignore: cast_nullable_to_non_nullable
              as CodedValues?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Observation implements _Observation {
  _$_Observation(
      {this.observationCode,
      this.observationTitle,
      this.group,
      this.indicationText,
      this.contraindicationText,
      this.clarifyingText,
      this.codedValues});

  factory _$_Observation.fromJson(Map<String, dynamic> json) =>
      _$_$_ObservationFromJson(json);

  @override
  final Obs? observationCode;
  @override
  final String? observationTitle;
  @override
  final String? group;
  @override
  final String? indicationText;
  @override
  final String? contraindicationText;
  @override
  final String? clarifyingText;
  @override
  final CodedValues? codedValues;

  @override
  String toString() {
    return 'Observation(observationCode: $observationCode, observationTitle: $observationTitle, group: $group, indicationText: $indicationText, contraindicationText: $contraindicationText, clarifyingText: $clarifyingText, codedValues: $codedValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Observation &&
            (identical(other.observationCode, observationCode) ||
                const DeepCollectionEquality()
                    .equals(other.observationCode, observationCode)) &&
            (identical(other.observationTitle, observationTitle) ||
                const DeepCollectionEquality()
                    .equals(other.observationTitle, observationTitle)) &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.indicationText, indicationText) ||
                const DeepCollectionEquality()
                    .equals(other.indicationText, indicationText)) &&
            (identical(other.contraindicationText, contraindicationText) ||
                const DeepCollectionEquality().equals(
                    other.contraindicationText, contraindicationText)) &&
            (identical(other.clarifyingText, clarifyingText) ||
                const DeepCollectionEquality()
                    .equals(other.clarifyingText, clarifyingText)) &&
            (identical(other.codedValues, codedValues) ||
                const DeepCollectionEquality()
                    .equals(other.codedValues, codedValues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(observationCode) ^
      const DeepCollectionEquality().hash(observationTitle) ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(indicationText) ^
      const DeepCollectionEquality().hash(contraindicationText) ^
      const DeepCollectionEquality().hash(clarifyingText) ^
      const DeepCollectionEquality().hash(codedValues);

  @JsonKey(ignore: true)
  @override
  _$ObservationCopyWith<_Observation> get copyWith =>
      __$ObservationCopyWithImpl<_Observation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ObservationToJson(this);
  }
}

abstract class _Observation implements Observation {
  factory _Observation(
      {Obs? observationCode,
      String? observationTitle,
      String? group,
      String? indicationText,
      String? contraindicationText,
      String? clarifyingText,
      CodedValues? codedValues}) = _$_Observation;

  factory _Observation.fromJson(Map<String, dynamic> json) =
      _$_Observation.fromJson;

  @override
  Obs? get observationCode => throw _privateConstructorUsedError;
  @override
  String? get observationTitle => throw _privateConstructorUsedError;
  @override
  String? get group => throw _privateConstructorUsedError;
  @override
  String? get indicationText => throw _privateConstructorUsedError;
  @override
  String? get contraindicationText => throw _privateConstructorUsedError;
  @override
  String? get clarifyingText => throw _privateConstructorUsedError;
  @override
  CodedValues? get codedValues => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ObservationCopyWith<_Observation> get copyWith =>
      throw _privateConstructorUsedError;
}

CodedValues _$CodedValuesFromJson(Map<String, dynamic> json) {
  return _CodedValues.fromJson(json);
}

/// @nodoc
class _$CodedValuesTearOff {
  const _$CodedValuesTearOff();

  _CodedValues call({List<CodedValue>? codedValue}) {
    return _CodedValues(
      codedValue: codedValue,
    );
  }

  CodedValues fromJson(Map<String, Object> json) {
    return CodedValues.fromJson(json);
  }
}

/// @nodoc
const $CodedValues = _$CodedValuesTearOff();

/// @nodoc
mixin _$CodedValues {
  List<CodedValue>? get codedValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodedValuesCopyWith<CodedValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodedValuesCopyWith<$Res> {
  factory $CodedValuesCopyWith(
          CodedValues value, $Res Function(CodedValues) then) =
      _$CodedValuesCopyWithImpl<$Res>;
  $Res call({List<CodedValue>? codedValue});
}

/// @nodoc
class _$CodedValuesCopyWithImpl<$Res> implements $CodedValuesCopyWith<$Res> {
  _$CodedValuesCopyWithImpl(this._value, this._then);

  final CodedValues _value;
  // ignore: unused_field
  final $Res Function(CodedValues) _then;

  @override
  $Res call({
    Object? codedValue = freezed,
  }) {
    return _then(_value.copyWith(
      codedValue: codedValue == freezed
          ? _value.codedValue
          : codedValue // ignore: cast_nullable_to_non_nullable
              as List<CodedValue>?,
    ));
  }
}

/// @nodoc
abstract class _$CodedValuesCopyWith<$Res>
    implements $CodedValuesCopyWith<$Res> {
  factory _$CodedValuesCopyWith(
          _CodedValues value, $Res Function(_CodedValues) then) =
      __$CodedValuesCopyWithImpl<$Res>;
  @override
  $Res call({List<CodedValue>? codedValue});
}

/// @nodoc
class __$CodedValuesCopyWithImpl<$Res> extends _$CodedValuesCopyWithImpl<$Res>
    implements _$CodedValuesCopyWith<$Res> {
  __$CodedValuesCopyWithImpl(
      _CodedValues _value, $Res Function(_CodedValues) _then)
      : super(_value, (v) => _then(v as _CodedValues));

  @override
  _CodedValues get _value => super._value as _CodedValues;

  @override
  $Res call({
    Object? codedValue = freezed,
  }) {
    return _then(_CodedValues(
      codedValue: codedValue == freezed
          ? _value.codedValue
          : codedValue // ignore: cast_nullable_to_non_nullable
              as List<CodedValue>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CodedValues implements _CodedValues {
  _$_CodedValues({this.codedValue});

  factory _$_CodedValues.fromJson(Map<String, dynamic> json) =>
      _$_$_CodedValuesFromJson(json);

  @override
  final List<CodedValue>? codedValue;

  @override
  String toString() {
    return 'CodedValues(codedValue: $codedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CodedValues &&
            (identical(other.codedValue, codedValue) ||
                const DeepCollectionEquality()
                    .equals(other.codedValue, codedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(codedValue);

  @JsonKey(ignore: true)
  @override
  _$CodedValuesCopyWith<_CodedValues> get copyWith =>
      __$CodedValuesCopyWithImpl<_CodedValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CodedValuesToJson(this);
  }
}

abstract class _CodedValues implements CodedValues {
  factory _CodedValues({List<CodedValue>? codedValue}) = _$_CodedValues;

  factory _CodedValues.fromJson(Map<String, dynamic> json) =
      _$_CodedValues.fromJson;

  @override
  List<CodedValue>? get codedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CodedValuesCopyWith<_CodedValues> get copyWith =>
      throw _privateConstructorUsedError;
}

CodedValue _$CodedValueFromJson(Map<String, dynamic> json) {
  return _CodedValue.fromJson(json);
}

/// @nodoc
class _$CodedValueTearOff {
  const _$CodedValueTearOff();

  _CodedValue call({String? code, String? codeSystem, String? text}) {
    return _CodedValue(
      code: code,
      codeSystem: codeSystem,
      text: text,
    );
  }

  CodedValue fromJson(Map<String, Object> json) {
    return CodedValue.fromJson(json);
  }
}

/// @nodoc
const $CodedValue = _$CodedValueTearOff();

/// @nodoc
mixin _$CodedValue {
  String? get code => throw _privateConstructorUsedError;
  String? get codeSystem => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodedValueCopyWith<CodedValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodedValueCopyWith<$Res> {
  factory $CodedValueCopyWith(
          CodedValue value, $Res Function(CodedValue) then) =
      _$CodedValueCopyWithImpl<$Res>;
  $Res call({String? code, String? codeSystem, String? text});
}

/// @nodoc
class _$CodedValueCopyWithImpl<$Res> implements $CodedValueCopyWith<$Res> {
  _$CodedValueCopyWithImpl(this._value, this._then);

  final CodedValue _value;
  // ignore: unused_field
  final $Res Function(CodedValue) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? codeSystem = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      codeSystem: codeSystem == freezed
          ? _value.codeSystem
          : codeSystem // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CodedValueCopyWith<$Res> implements $CodedValueCopyWith<$Res> {
  factory _$CodedValueCopyWith(
          _CodedValue value, $Res Function(_CodedValue) then) =
      __$CodedValueCopyWithImpl<$Res>;
  @override
  $Res call({String? code, String? codeSystem, String? text});
}

/// @nodoc
class __$CodedValueCopyWithImpl<$Res> extends _$CodedValueCopyWithImpl<$Res>
    implements _$CodedValueCopyWith<$Res> {
  __$CodedValueCopyWithImpl(
      _CodedValue _value, $Res Function(_CodedValue) _then)
      : super(_value, (v) => _then(v as _CodedValue));

  @override
  _CodedValue get _value => super._value as _CodedValue;

  @override
  $Res call({
    Object? code = freezed,
    Object? codeSystem = freezed,
    Object? text = freezed,
  }) {
    return _then(_CodedValue(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      codeSystem: codeSystem == freezed
          ? _value.codeSystem
          : codeSystem // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CodedValue implements _CodedValue {
  _$_CodedValue({this.code, this.codeSystem, this.text});

  factory _$_CodedValue.fromJson(Map<String, dynamic> json) =>
      _$_$_CodedValueFromJson(json);

  @override
  final String? code;
  @override
  final String? codeSystem;
  @override
  final String? text;

  @override
  String toString() {
    return 'CodedValue(code: $code, codeSystem: $codeSystem, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CodedValue &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.codeSystem, codeSystem) ||
                const DeepCollectionEquality()
                    .equals(other.codeSystem, codeSystem)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(codeSystem) ^
      const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$CodedValueCopyWith<_CodedValue> get copyWith =>
      __$CodedValueCopyWithImpl<_CodedValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CodedValueToJson(this);
  }
}

abstract class _CodedValue implements CodedValue {
  factory _CodedValue({String? code, String? codeSystem, String? text}) =
      _$_CodedValue;

  factory _CodedValue.fromJson(Map<String, dynamic> json) =
      _$_CodedValue.fromJson;

  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get codeSystem => throw _privateConstructorUsedError;
  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CodedValueCopyWith<_CodedValue> get copyWith =>
      throw _privateConstructorUsedError;
}
