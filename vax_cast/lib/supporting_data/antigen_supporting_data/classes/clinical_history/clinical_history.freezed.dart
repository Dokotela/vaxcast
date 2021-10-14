// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clinical_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClinicalHistory _$ClinicalHistoryFromJson(Map<String, dynamic> json) {
  return _ClinicalHistory.fromJson(json);
}

/// @nodoc
class _$ClinicalHistoryTearOff {
  const _$ClinicalHistoryTearOff();

  _ClinicalHistory call({Obs? guidelineCode, String? guidelineTitle}) {
    return _ClinicalHistory(
      guidelineCode: guidelineCode,
      guidelineTitle: guidelineTitle,
    );
  }

  ClinicalHistory fromJson(Map<String, Object> json) {
    return ClinicalHistory.fromJson(json);
  }
}

/// @nodoc
const $ClinicalHistory = _$ClinicalHistoryTearOff();

/// @nodoc
mixin _$ClinicalHistory {
  Obs? get guidelineCode => throw _privateConstructorUsedError;
  String? get guidelineTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicalHistoryCopyWith<ClinicalHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicalHistoryCopyWith<$Res> {
  factory $ClinicalHistoryCopyWith(
          ClinicalHistory value, $Res Function(ClinicalHistory) then) =
      _$ClinicalHistoryCopyWithImpl<$Res>;
  $Res call({Obs? guidelineCode, String? guidelineTitle});
}

/// @nodoc
class _$ClinicalHistoryCopyWithImpl<$Res>
    implements $ClinicalHistoryCopyWith<$Res> {
  _$ClinicalHistoryCopyWithImpl(this._value, this._then);

  final ClinicalHistory _value;
  // ignore: unused_field
  final $Res Function(ClinicalHistory) _then;

  @override
  $Res call({
    Object? guidelineCode = freezed,
    Object? guidelineTitle = freezed,
  }) {
    return _then(_value.copyWith(
      guidelineCode: guidelineCode == freezed
          ? _value.guidelineCode
          : guidelineCode // ignore: cast_nullable_to_non_nullable
              as Obs?,
      guidelineTitle: guidelineTitle == freezed
          ? _value.guidelineTitle
          : guidelineTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ClinicalHistoryCopyWith<$Res>
    implements $ClinicalHistoryCopyWith<$Res> {
  factory _$ClinicalHistoryCopyWith(
          _ClinicalHistory value, $Res Function(_ClinicalHistory) then) =
      __$ClinicalHistoryCopyWithImpl<$Res>;
  @override
  $Res call({Obs? guidelineCode, String? guidelineTitle});
}

/// @nodoc
class __$ClinicalHistoryCopyWithImpl<$Res>
    extends _$ClinicalHistoryCopyWithImpl<$Res>
    implements _$ClinicalHistoryCopyWith<$Res> {
  __$ClinicalHistoryCopyWithImpl(
      _ClinicalHistory _value, $Res Function(_ClinicalHistory) _then)
      : super(_value, (v) => _then(v as _ClinicalHistory));

  @override
  _ClinicalHistory get _value => super._value as _ClinicalHistory;

  @override
  $Res call({
    Object? guidelineCode = freezed,
    Object? guidelineTitle = freezed,
  }) {
    return _then(_ClinicalHistory(
      guidelineCode: guidelineCode == freezed
          ? _value.guidelineCode
          : guidelineCode // ignore: cast_nullable_to_non_nullable
              as Obs?,
      guidelineTitle: guidelineTitle == freezed
          ? _value.guidelineTitle
          : guidelineTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClinicalHistory implements _ClinicalHistory {
  _$_ClinicalHistory({this.guidelineCode, this.guidelineTitle});

  factory _$_ClinicalHistory.fromJson(Map<String, dynamic> json) =>
      _$$_ClinicalHistoryFromJson(json);

  @override
  final Obs? guidelineCode;
  @override
  final String? guidelineTitle;

  @override
  String toString() {
    return 'ClinicalHistory(guidelineCode: $guidelineCode, guidelineTitle: $guidelineTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClinicalHistory &&
            (identical(other.guidelineCode, guidelineCode) ||
                const DeepCollectionEquality()
                    .equals(other.guidelineCode, guidelineCode)) &&
            (identical(other.guidelineTitle, guidelineTitle) ||
                const DeepCollectionEquality()
                    .equals(other.guidelineTitle, guidelineTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(guidelineCode) ^
      const DeepCollectionEquality().hash(guidelineTitle);

  @JsonKey(ignore: true)
  @override
  _$ClinicalHistoryCopyWith<_ClinicalHistory> get copyWith =>
      __$ClinicalHistoryCopyWithImpl<_ClinicalHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClinicalHistoryToJson(this);
  }
}

abstract class _ClinicalHistory implements ClinicalHistory {
  factory _ClinicalHistory({Obs? guidelineCode, String? guidelineTitle}) =
      _$_ClinicalHistory;

  factory _ClinicalHistory.fromJson(Map<String, dynamic> json) =
      _$_ClinicalHistory.fromJson;

  @override
  Obs? get guidelineCode => throw _privateConstructorUsedError;
  @override
  String? get guidelineTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClinicalHistoryCopyWith<_ClinicalHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
