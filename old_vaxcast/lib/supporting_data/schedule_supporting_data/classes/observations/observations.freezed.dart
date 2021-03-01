// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'observations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Observations _$ObservationsFromJson(Map<String, dynamic> json) {
  return _Observations.fromJson(json);
}

class _$ObservationsTearOff {
  const _$ObservationsTearOff();

// ignore: unused_element
  _Observations call({List<Observation> observation}) {
    return _Observations(
      observation: observation,
    );
  }
}

// ignore: unused_element
const $Observations = _$ObservationsTearOff();

mixin _$Observations {
  List<Observation> get observation;

  Map<String, dynamic> toJson();
  $ObservationsCopyWith<Observations> get copyWith;
}

abstract class $ObservationsCopyWith<$Res> {
  factory $ObservationsCopyWith(
          Observations value, $Res Function(Observations) then) =
      _$ObservationsCopyWithImpl<$Res>;
  $Res call({List<Observation> observation});
}

class _$ObservationsCopyWithImpl<$Res> implements $ObservationsCopyWith<$Res> {
  _$ObservationsCopyWithImpl(this._value, this._then);

  final Observations _value;
  // ignore: unused_field
  final $Res Function(Observations) _then;

  @override
  $Res call({
    Object observation = freezed,
  }) {
    return _then(_value.copyWith(
      observation: observation == freezed
          ? _value.observation
          : observation as List<Observation>,
    ));
  }
}

abstract class _$ObservationsCopyWith<$Res>
    implements $ObservationsCopyWith<$Res> {
  factory _$ObservationsCopyWith(
          _Observations value, $Res Function(_Observations) then) =
      __$ObservationsCopyWithImpl<$Res>;
  @override
  $Res call({List<Observation> observation});
}

class __$ObservationsCopyWithImpl<$Res> extends _$ObservationsCopyWithImpl<$Res>
    implements _$ObservationsCopyWith<$Res> {
  __$ObservationsCopyWithImpl(
      _Observations _value, $Res Function(_Observations) _then)
      : super(_value, (v) => _then(v as _Observations));

  @override
  _Observations get _value => super._value as _Observations;

  @override
  $Res call({
    Object observation = freezed,
  }) {
    return _then(_Observations(
      observation: observation == freezed
          ? _value.observation
          : observation as List<Observation>,
    ));
  }
}

@JsonSerializable()
class _$_Observations implements _Observations {
  _$_Observations({this.observation});

  factory _$_Observations.fromJson(Map<String, dynamic> json) =>
      _$_$_ObservationsFromJson(json);

  @override
  final List<Observation> observation;

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

  @override
  _$ObservationsCopyWith<_Observations> get copyWith =>
      __$ObservationsCopyWithImpl<_Observations>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ObservationsToJson(this);
  }
}

abstract class _Observations implements Observations {
  factory _Observations({List<Observation> observation}) = _$_Observations;

  factory _Observations.fromJson(Map<String, dynamic> json) =
      _$_Observations.fromJson;

  @override
  List<Observation> get observation;
  @override
  _$ObservationsCopyWith<_Observations> get copyWith;
}

Observation _$ObservationFromJson(Map<String, dynamic> json) {
  return _Observation.fromJson(json);
}

class _$ObservationTearOff {
  const _$ObservationTearOff();

// ignore: unused_element
  _Observation call(
      {Obs observationCode,
      String observationTitle,
      String group,
      String indicationText,
      String contraindicationText,
      String clarifyingText,
      CodedValues codedValues}) {
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
}

// ignore: unused_element
const $Observation = _$ObservationTearOff();

mixin _$Observation {
  Obs get observationCode;
  String get observationTitle;
  String get group;
  String get indicationText;
  String get contraindicationText;
  String get clarifyingText;
  CodedValues get codedValues;

  Map<String, dynamic> toJson();
  $ObservationCopyWith<Observation> get copyWith;
}

abstract class $ObservationCopyWith<$Res> {
  factory $ObservationCopyWith(
          Observation value, $Res Function(Observation) then) =
      _$ObservationCopyWithImpl<$Res>;
  $Res call(
      {Obs observationCode,
      String observationTitle,
      String group,
      String indicationText,
      String contraindicationText,
      String clarifyingText,
      CodedValues codedValues});

  $CodedValuesCopyWith<$Res> get codedValues;
}

class _$ObservationCopyWithImpl<$Res> implements $ObservationCopyWith<$Res> {
  _$ObservationCopyWithImpl(this._value, this._then);

  final Observation _value;
  // ignore: unused_field
  final $Res Function(Observation) _then;

  @override
  $Res call({
    Object observationCode = freezed,
    Object observationTitle = freezed,
    Object group = freezed,
    Object indicationText = freezed,
    Object contraindicationText = freezed,
    Object clarifyingText = freezed,
    Object codedValues = freezed,
  }) {
    return _then(_value.copyWith(
      observationCode: observationCode == freezed
          ? _value.observationCode
          : observationCode as Obs,
      observationTitle: observationTitle == freezed
          ? _value.observationTitle
          : observationTitle as String,
      group: group == freezed ? _value.group : group as String,
      indicationText: indicationText == freezed
          ? _value.indicationText
          : indicationText as String,
      contraindicationText: contraindicationText == freezed
          ? _value.contraindicationText
          : contraindicationText as String,
      clarifyingText: clarifyingText == freezed
          ? _value.clarifyingText
          : clarifyingText as String,
      codedValues: codedValues == freezed
          ? _value.codedValues
          : codedValues as CodedValues,
    ));
  }

  @override
  $CodedValuesCopyWith<$Res> get codedValues {
    if (_value.codedValues == null) {
      return null;
    }
    return $CodedValuesCopyWith<$Res>(_value.codedValues, (value) {
      return _then(_value.copyWith(codedValues: value));
    });
  }
}

abstract class _$ObservationCopyWith<$Res>
    implements $ObservationCopyWith<$Res> {
  factory _$ObservationCopyWith(
          _Observation value, $Res Function(_Observation) then) =
      __$ObservationCopyWithImpl<$Res>;
  @override
  $Res call(
      {Obs observationCode,
      String observationTitle,
      String group,
      String indicationText,
      String contraindicationText,
      String clarifyingText,
      CodedValues codedValues});

  @override
  $CodedValuesCopyWith<$Res> get codedValues;
}

class __$ObservationCopyWithImpl<$Res> extends _$ObservationCopyWithImpl<$Res>
    implements _$ObservationCopyWith<$Res> {
  __$ObservationCopyWithImpl(
      _Observation _value, $Res Function(_Observation) _then)
      : super(_value, (v) => _then(v as _Observation));

  @override
  _Observation get _value => super._value as _Observation;

  @override
  $Res call({
    Object observationCode = freezed,
    Object observationTitle = freezed,
    Object group = freezed,
    Object indicationText = freezed,
    Object contraindicationText = freezed,
    Object clarifyingText = freezed,
    Object codedValues = freezed,
  }) {
    return _then(_Observation(
      observationCode: observationCode == freezed
          ? _value.observationCode
          : observationCode as Obs,
      observationTitle: observationTitle == freezed
          ? _value.observationTitle
          : observationTitle as String,
      group: group == freezed ? _value.group : group as String,
      indicationText: indicationText == freezed
          ? _value.indicationText
          : indicationText as String,
      contraindicationText: contraindicationText == freezed
          ? _value.contraindicationText
          : contraindicationText as String,
      clarifyingText: clarifyingText == freezed
          ? _value.clarifyingText
          : clarifyingText as String,
      codedValues: codedValues == freezed
          ? _value.codedValues
          : codedValues as CodedValues,
    ));
  }
}

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
  final Obs observationCode;
  @override
  final String observationTitle;
  @override
  final String group;
  @override
  final String indicationText;
  @override
  final String contraindicationText;
  @override
  final String clarifyingText;
  @override
  final CodedValues codedValues;

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
      {Obs observationCode,
      String observationTitle,
      String group,
      String indicationText,
      String contraindicationText,
      String clarifyingText,
      CodedValues codedValues}) = _$_Observation;

  factory _Observation.fromJson(Map<String, dynamic> json) =
      _$_Observation.fromJson;

  @override
  Obs get observationCode;
  @override
  String get observationTitle;
  @override
  String get group;
  @override
  String get indicationText;
  @override
  String get contraindicationText;
  @override
  String get clarifyingText;
  @override
  CodedValues get codedValues;
  @override
  _$ObservationCopyWith<_Observation> get copyWith;
}

CodedValues _$CodedValuesFromJson(Map<String, dynamic> json) {
  return _CodedValues.fromJson(json);
}

class _$CodedValuesTearOff {
  const _$CodedValuesTearOff();

// ignore: unused_element
  _CodedValues call({List<CodedValue> codedValue}) {
    return _CodedValues(
      codedValue: codedValue,
    );
  }
}

// ignore: unused_element
const $CodedValues = _$CodedValuesTearOff();

mixin _$CodedValues {
  List<CodedValue> get codedValue;

  Map<String, dynamic> toJson();
  $CodedValuesCopyWith<CodedValues> get copyWith;
}

abstract class $CodedValuesCopyWith<$Res> {
  factory $CodedValuesCopyWith(
          CodedValues value, $Res Function(CodedValues) then) =
      _$CodedValuesCopyWithImpl<$Res>;
  $Res call({List<CodedValue> codedValue});
}

class _$CodedValuesCopyWithImpl<$Res> implements $CodedValuesCopyWith<$Res> {
  _$CodedValuesCopyWithImpl(this._value, this._then);

  final CodedValues _value;
  // ignore: unused_field
  final $Res Function(CodedValues) _then;

  @override
  $Res call({
    Object codedValue = freezed,
  }) {
    return _then(_value.copyWith(
      codedValue: codedValue == freezed
          ? _value.codedValue
          : codedValue as List<CodedValue>,
    ));
  }
}

abstract class _$CodedValuesCopyWith<$Res>
    implements $CodedValuesCopyWith<$Res> {
  factory _$CodedValuesCopyWith(
          _CodedValues value, $Res Function(_CodedValues) then) =
      __$CodedValuesCopyWithImpl<$Res>;
  @override
  $Res call({List<CodedValue> codedValue});
}

class __$CodedValuesCopyWithImpl<$Res> extends _$CodedValuesCopyWithImpl<$Res>
    implements _$CodedValuesCopyWith<$Res> {
  __$CodedValuesCopyWithImpl(
      _CodedValues _value, $Res Function(_CodedValues) _then)
      : super(_value, (v) => _then(v as _CodedValues));

  @override
  _CodedValues get _value => super._value as _CodedValues;

  @override
  $Res call({
    Object codedValue = freezed,
  }) {
    return _then(_CodedValues(
      codedValue: codedValue == freezed
          ? _value.codedValue
          : codedValue as List<CodedValue>,
    ));
  }
}

@JsonSerializable()
class _$_CodedValues implements _CodedValues {
  _$_CodedValues({this.codedValue});

  factory _$_CodedValues.fromJson(Map<String, dynamic> json) =>
      _$_$_CodedValuesFromJson(json);

  @override
  final List<CodedValue> codedValue;

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

  @override
  _$CodedValuesCopyWith<_CodedValues> get copyWith =>
      __$CodedValuesCopyWithImpl<_CodedValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CodedValuesToJson(this);
  }
}

abstract class _CodedValues implements CodedValues {
  factory _CodedValues({List<CodedValue> codedValue}) = _$_CodedValues;

  factory _CodedValues.fromJson(Map<String, dynamic> json) =
      _$_CodedValues.fromJson;

  @override
  List<CodedValue> get codedValue;
  @override
  _$CodedValuesCopyWith<_CodedValues> get copyWith;
}

CodedValue _$CodedValueFromJson(Map<String, dynamic> json) {
  return _CodedValue.fromJson(json);
}

class _$CodedValueTearOff {
  const _$CodedValueTearOff();

// ignore: unused_element
  _CodedValue call({String code, String codeSystem, String text}) {
    return _CodedValue(
      code: code,
      codeSystem: codeSystem,
      text: text,
    );
  }
}

// ignore: unused_element
const $CodedValue = _$CodedValueTearOff();

mixin _$CodedValue {
  String get code;
  String get codeSystem;
  String get text;

  Map<String, dynamic> toJson();
  $CodedValueCopyWith<CodedValue> get copyWith;
}

abstract class $CodedValueCopyWith<$Res> {
  factory $CodedValueCopyWith(
          CodedValue value, $Res Function(CodedValue) then) =
      _$CodedValueCopyWithImpl<$Res>;
  $Res call({String code, String codeSystem, String text});
}

class _$CodedValueCopyWithImpl<$Res> implements $CodedValueCopyWith<$Res> {
  _$CodedValueCopyWithImpl(this._value, this._then);

  final CodedValue _value;
  // ignore: unused_field
  final $Res Function(CodedValue) _then;

  @override
  $Res call({
    Object code = freezed,
    Object codeSystem = freezed,
    Object text = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as String,
      codeSystem:
          codeSystem == freezed ? _value.codeSystem : codeSystem as String,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

abstract class _$CodedValueCopyWith<$Res> implements $CodedValueCopyWith<$Res> {
  factory _$CodedValueCopyWith(
          _CodedValue value, $Res Function(_CodedValue) then) =
      __$CodedValueCopyWithImpl<$Res>;
  @override
  $Res call({String code, String codeSystem, String text});
}

class __$CodedValueCopyWithImpl<$Res> extends _$CodedValueCopyWithImpl<$Res>
    implements _$CodedValueCopyWith<$Res> {
  __$CodedValueCopyWithImpl(
      _CodedValue _value, $Res Function(_CodedValue) _then)
      : super(_value, (v) => _then(v as _CodedValue));

  @override
  _CodedValue get _value => super._value as _CodedValue;

  @override
  $Res call({
    Object code = freezed,
    Object codeSystem = freezed,
    Object text = freezed,
  }) {
    return _then(_CodedValue(
      code: code == freezed ? _value.code : code as String,
      codeSystem:
          codeSystem == freezed ? _value.codeSystem : codeSystem as String,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

@JsonSerializable()
class _$_CodedValue implements _CodedValue {
  _$_CodedValue({this.code, this.codeSystem, this.text});

  factory _$_CodedValue.fromJson(Map<String, dynamic> json) =>
      _$_$_CodedValueFromJson(json);

  @override
  final String code;
  @override
  final String codeSystem;
  @override
  final String text;

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

  @override
  _$CodedValueCopyWith<_CodedValue> get copyWith =>
      __$CodedValueCopyWithImpl<_CodedValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CodedValueToJson(this);
  }
}

abstract class _CodedValue implements CodedValue {
  factory _CodedValue({String code, String codeSystem, String text}) =
      _$_CodedValue;

  factory _CodedValue.fromJson(Map<String, dynamic> json) =
      _$_CodedValue.fromJson;

  @override
  String get code;
  @override
  String get codeSystem;
  @override
  String get text;
  @override
  _$CodedValueCopyWith<_CodedValue> get copyWith;
}
