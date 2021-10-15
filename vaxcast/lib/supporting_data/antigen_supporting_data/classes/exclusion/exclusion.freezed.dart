// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exclusion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Exclusion _$ExclusionFromJson(Map<String, dynamic> json) {
  return _Exclusion.fromJson(json);
}

/// @nodoc
class _$ExclusionTearOff {
  const _$ExclusionTearOff();

  _Exclusion call({Obs? exclusionCode, String? exclusionTitle}) {
    return _Exclusion(
      exclusionCode: exclusionCode,
      exclusionTitle: exclusionTitle,
    );
  }

  Exclusion fromJson(Map<String, Object> json) {
    return Exclusion.fromJson(json);
  }
}

/// @nodoc
const $Exclusion = _$ExclusionTearOff();

/// @nodoc
mixin _$Exclusion {
  Obs? get exclusionCode => throw _privateConstructorUsedError;
  String? get exclusionTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExclusionCopyWith<Exclusion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExclusionCopyWith<$Res> {
  factory $ExclusionCopyWith(Exclusion value, $Res Function(Exclusion) then) =
      _$ExclusionCopyWithImpl<$Res>;
  $Res call({Obs? exclusionCode, String? exclusionTitle});
}

/// @nodoc
class _$ExclusionCopyWithImpl<$Res> implements $ExclusionCopyWith<$Res> {
  _$ExclusionCopyWithImpl(this._value, this._then);

  final Exclusion _value;
  // ignore: unused_field
  final $Res Function(Exclusion) _then;

  @override
  $Res call({
    Object? exclusionCode = freezed,
    Object? exclusionTitle = freezed,
  }) {
    return _then(_value.copyWith(
      exclusionCode: exclusionCode == freezed
          ? _value.exclusionCode
          : exclusionCode // ignore: cast_nullable_to_non_nullable
              as Obs?,
      exclusionTitle: exclusionTitle == freezed
          ? _value.exclusionTitle
          : exclusionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ExclusionCopyWith<$Res> implements $ExclusionCopyWith<$Res> {
  factory _$ExclusionCopyWith(
          _Exclusion value, $Res Function(_Exclusion) then) =
      __$ExclusionCopyWithImpl<$Res>;
  @override
  $Res call({Obs? exclusionCode, String? exclusionTitle});
}

/// @nodoc
class __$ExclusionCopyWithImpl<$Res> extends _$ExclusionCopyWithImpl<$Res>
    implements _$ExclusionCopyWith<$Res> {
  __$ExclusionCopyWithImpl(_Exclusion _value, $Res Function(_Exclusion) _then)
      : super(_value, (v) => _then(v as _Exclusion));

  @override
  _Exclusion get _value => super._value as _Exclusion;

  @override
  $Res call({
    Object? exclusionCode = freezed,
    Object? exclusionTitle = freezed,
  }) {
    return _then(_Exclusion(
      exclusionCode: exclusionCode == freezed
          ? _value.exclusionCode
          : exclusionCode // ignore: cast_nullable_to_non_nullable
              as Obs?,
      exclusionTitle: exclusionTitle == freezed
          ? _value.exclusionTitle
          : exclusionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Exclusion extends _Exclusion {
  _$_Exclusion({this.exclusionCode, this.exclusionTitle}) : super._();

  factory _$_Exclusion.fromJson(Map<String, dynamic> json) =>
      _$$_ExclusionFromJson(json);

  @override
  final Obs? exclusionCode;
  @override
  final String? exclusionTitle;

  @override
  String toString() {
    return 'Exclusion(exclusionCode: $exclusionCode, exclusionTitle: $exclusionTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exclusion &&
            (identical(other.exclusionCode, exclusionCode) ||
                const DeepCollectionEquality()
                    .equals(other.exclusionCode, exclusionCode)) &&
            (identical(other.exclusionTitle, exclusionTitle) ||
                const DeepCollectionEquality()
                    .equals(other.exclusionTitle, exclusionTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exclusionCode) ^
      const DeepCollectionEquality().hash(exclusionTitle);

  @JsonKey(ignore: true)
  @override
  _$ExclusionCopyWith<_Exclusion> get copyWith =>
      __$ExclusionCopyWithImpl<_Exclusion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExclusionToJson(this);
  }
}

abstract class _Exclusion extends Exclusion {
  factory _Exclusion({Obs? exclusionCode, String? exclusionTitle}) =
      _$_Exclusion;
  _Exclusion._() : super._();

  factory _Exclusion.fromJson(Map<String, dynamic> json) =
      _$_Exclusion.fromJson;

  @override
  Obs? get exclusionCode => throw _privateConstructorUsedError;
  @override
  String? get exclusionTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExclusionCopyWith<_Exclusion> get copyWith =>
      throw _privateConstructorUsedError;
}
