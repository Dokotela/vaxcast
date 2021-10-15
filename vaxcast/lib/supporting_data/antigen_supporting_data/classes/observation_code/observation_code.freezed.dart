// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'observation_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ObservationCode _$ObservationCodeFromJson(Map<String, dynamic> json) {
  return _ObservationCode.fromJson(json);
}

/// @nodoc
class _$ObservationCodeTearOff {
  const _$ObservationCodeTearOff();

  _ObservationCode call({String? text, Obs? code}) {
    return _ObservationCode(
      text: text,
      code: code,
    );
  }

  ObservationCode fromJson(Map<String, Object> json) {
    return ObservationCode.fromJson(json);
  }
}

/// @nodoc
const $ObservationCode = _$ObservationCodeTearOff();

/// @nodoc
mixin _$ObservationCode {
  String? get text => throw _privateConstructorUsedError;
  Obs? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationCodeCopyWith<ObservationCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationCodeCopyWith<$Res> {
  factory $ObservationCodeCopyWith(
          ObservationCode value, $Res Function(ObservationCode) then) =
      _$ObservationCodeCopyWithImpl<$Res>;
  $Res call({String? text, Obs? code});
}

/// @nodoc
class _$ObservationCodeCopyWithImpl<$Res>
    implements $ObservationCodeCopyWith<$Res> {
  _$ObservationCodeCopyWithImpl(this._value, this._then);

  final ObservationCode _value;
  // ignore: unused_field
  final $Res Function(ObservationCode) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Obs?,
    ));
  }
}

/// @nodoc
abstract class _$ObservationCodeCopyWith<$Res>
    implements $ObservationCodeCopyWith<$Res> {
  factory _$ObservationCodeCopyWith(
          _ObservationCode value, $Res Function(_ObservationCode) then) =
      __$ObservationCodeCopyWithImpl<$Res>;
  @override
  $Res call({String? text, Obs? code});
}

/// @nodoc
class __$ObservationCodeCopyWithImpl<$Res>
    extends _$ObservationCodeCopyWithImpl<$Res>
    implements _$ObservationCodeCopyWith<$Res> {
  __$ObservationCodeCopyWithImpl(
      _ObservationCode _value, $Res Function(_ObservationCode) _then)
      : super(_value, (v) => _then(v as _ObservationCode));

  @override
  _ObservationCode get _value => super._value as _ObservationCode;

  @override
  $Res call({
    Object? text = freezed,
    Object? code = freezed,
  }) {
    return _then(_ObservationCode(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Obs?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObservationCode implements _ObservationCode {
  _$_ObservationCode({this.text, this.code});

  factory _$_ObservationCode.fromJson(Map<String, dynamic> json) =>
      _$$_ObservationCodeFromJson(json);

  @override
  final String? text;
  @override
  final Obs? code;

  @override
  String toString() {
    return 'ObservationCode(text: $text, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObservationCode &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$ObservationCodeCopyWith<_ObservationCode> get copyWith =>
      __$ObservationCodeCopyWithImpl<_ObservationCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationCodeToJson(this);
  }
}

abstract class _ObservationCode implements ObservationCode {
  factory _ObservationCode({String? text, Obs? code}) = _$_ObservationCode;

  factory _ObservationCode.fromJson(Map<String, dynamic> json) =
      _$_ObservationCode.fromJson;

  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  Obs? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ObservationCodeCopyWith<_ObservationCode> get copyWith =>
      throw _privateConstructorUsedError;
}
