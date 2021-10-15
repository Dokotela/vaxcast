// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cvx_to_antigen_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CvxToAntigenMap _$CvxToAntigenMapFromJson(Map<String, dynamic> json) {
  return _CvxToAntigenMap.fromJson(json);
}

/// @nodoc
class _$CvxToAntigenMapTearOff {
  const _$CvxToAntigenMapTearOff();

  _CvxToAntigenMap call({List<CvxMap>? cvxMap}) {
    return _CvxToAntigenMap(
      cvxMap: cvxMap,
    );
  }

  CvxToAntigenMap fromJson(Map<String, Object> json) {
    return CvxToAntigenMap.fromJson(json);
  }
}

/// @nodoc
const $CvxToAntigenMap = _$CvxToAntigenMapTearOff();

/// @nodoc
mixin _$CvxToAntigenMap {
  List<CvxMap>? get cvxMap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CvxToAntigenMapCopyWith<CvxToAntigenMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CvxToAntigenMapCopyWith<$Res> {
  factory $CvxToAntigenMapCopyWith(
          CvxToAntigenMap value, $Res Function(CvxToAntigenMap) then) =
      _$CvxToAntigenMapCopyWithImpl<$Res>;
  $Res call({List<CvxMap>? cvxMap});
}

/// @nodoc
class _$CvxToAntigenMapCopyWithImpl<$Res>
    implements $CvxToAntigenMapCopyWith<$Res> {
  _$CvxToAntigenMapCopyWithImpl(this._value, this._then);

  final CvxToAntigenMap _value;
  // ignore: unused_field
  final $Res Function(CvxToAntigenMap) _then;

  @override
  $Res call({
    Object? cvxMap = freezed,
  }) {
    return _then(_value.copyWith(
      cvxMap: cvxMap == freezed
          ? _value.cvxMap
          : cvxMap // ignore: cast_nullable_to_non_nullable
              as List<CvxMap>?,
    ));
  }
}

/// @nodoc
abstract class _$CvxToAntigenMapCopyWith<$Res>
    implements $CvxToAntigenMapCopyWith<$Res> {
  factory _$CvxToAntigenMapCopyWith(
          _CvxToAntigenMap value, $Res Function(_CvxToAntigenMap) then) =
      __$CvxToAntigenMapCopyWithImpl<$Res>;
  @override
  $Res call({List<CvxMap>? cvxMap});
}

/// @nodoc
class __$CvxToAntigenMapCopyWithImpl<$Res>
    extends _$CvxToAntigenMapCopyWithImpl<$Res>
    implements _$CvxToAntigenMapCopyWith<$Res> {
  __$CvxToAntigenMapCopyWithImpl(
      _CvxToAntigenMap _value, $Res Function(_CvxToAntigenMap) _then)
      : super(_value, (v) => _then(v as _CvxToAntigenMap));

  @override
  _CvxToAntigenMap get _value => super._value as _CvxToAntigenMap;

  @override
  $Res call({
    Object? cvxMap = freezed,
  }) {
    return _then(_CvxToAntigenMap(
      cvxMap: cvxMap == freezed
          ? _value.cvxMap
          : cvxMap // ignore: cast_nullable_to_non_nullable
              as List<CvxMap>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CvxToAntigenMap implements _CvxToAntigenMap {
  _$_CvxToAntigenMap({this.cvxMap});

  factory _$_CvxToAntigenMap.fromJson(Map<String, dynamic> json) =>
      _$$_CvxToAntigenMapFromJson(json);

  @override
  final List<CvxMap>? cvxMap;

  @override
  String toString() {
    return 'CvxToAntigenMap(cvxMap: $cvxMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CvxToAntigenMap &&
            (identical(other.cvxMap, cvxMap) ||
                const DeepCollectionEquality().equals(other.cvxMap, cvxMap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cvxMap);

  @JsonKey(ignore: true)
  @override
  _$CvxToAntigenMapCopyWith<_CvxToAntigenMap> get copyWith =>
      __$CvxToAntigenMapCopyWithImpl<_CvxToAntigenMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CvxToAntigenMapToJson(this);
  }
}

abstract class _CvxToAntigenMap implements CvxToAntigenMap {
  factory _CvxToAntigenMap({List<CvxMap>? cvxMap}) = _$_CvxToAntigenMap;

  factory _CvxToAntigenMap.fromJson(Map<String, dynamic> json) =
      _$_CvxToAntigenMap.fromJson;

  @override
  List<CvxMap>? get cvxMap => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CvxToAntigenMapCopyWith<_CvxToAntigenMap> get copyWith =>
      throw _privateConstructorUsedError;
}

CvxMap _$CvxMapFromJson(Map<String, dynamic> json) {
  return _CvxMap.fromJson(json);
}

/// @nodoc
class _$CvxMapTearOff {
  const _$CvxMapTearOff();

  _CvxMap call(
      {Cvx? cvx, String? shortDescription, List<Association>? association}) {
    return _CvxMap(
      cvx: cvx,
      shortDescription: shortDescription,
      association: association,
    );
  }

  CvxMap fromJson(Map<String, Object> json) {
    return CvxMap.fromJson(json);
  }
}

/// @nodoc
const $CvxMap = _$CvxMapTearOff();

/// @nodoc
mixin _$CvxMap {
  Cvx? get cvx => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  List<Association>? get association => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CvxMapCopyWith<CvxMap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CvxMapCopyWith<$Res> {
  factory $CvxMapCopyWith(CvxMap value, $Res Function(CvxMap) then) =
      _$CvxMapCopyWithImpl<$Res>;
  $Res call(
      {Cvx? cvx, String? shortDescription, List<Association>? association});
}

/// @nodoc
class _$CvxMapCopyWithImpl<$Res> implements $CvxMapCopyWith<$Res> {
  _$CvxMapCopyWithImpl(this._value, this._then);

  final CvxMap _value;
  // ignore: unused_field
  final $Res Function(CvxMap) _then;

  @override
  $Res call({
    Object? cvx = freezed,
    Object? shortDescription = freezed,
    Object? association = freezed,
  }) {
    return _then(_value.copyWith(
      cvx: cvx == freezed
          ? _value.cvx
          : cvx // ignore: cast_nullable_to_non_nullable
              as Cvx?,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      association: association == freezed
          ? _value.association
          : association // ignore: cast_nullable_to_non_nullable
              as List<Association>?,
    ));
  }
}

/// @nodoc
abstract class _$CvxMapCopyWith<$Res> implements $CvxMapCopyWith<$Res> {
  factory _$CvxMapCopyWith(_CvxMap value, $Res Function(_CvxMap) then) =
      __$CvxMapCopyWithImpl<$Res>;
  @override
  $Res call(
      {Cvx? cvx, String? shortDescription, List<Association>? association});
}

/// @nodoc
class __$CvxMapCopyWithImpl<$Res> extends _$CvxMapCopyWithImpl<$Res>
    implements _$CvxMapCopyWith<$Res> {
  __$CvxMapCopyWithImpl(_CvxMap _value, $Res Function(_CvxMap) _then)
      : super(_value, (v) => _then(v as _CvxMap));

  @override
  _CvxMap get _value => super._value as _CvxMap;

  @override
  $Res call({
    Object? cvx = freezed,
    Object? shortDescription = freezed,
    Object? association = freezed,
  }) {
    return _then(_CvxMap(
      cvx: cvx == freezed
          ? _value.cvx
          : cvx // ignore: cast_nullable_to_non_nullable
              as Cvx?,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      association: association == freezed
          ? _value.association
          : association // ignore: cast_nullable_to_non_nullable
              as List<Association>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CvxMap implements _CvxMap {
  _$_CvxMap({this.cvx, this.shortDescription, this.association});

  factory _$_CvxMap.fromJson(Map<String, dynamic> json) =>
      _$$_CvxMapFromJson(json);

  @override
  final Cvx? cvx;
  @override
  final String? shortDescription;
  @override
  final List<Association>? association;

  @override
  String toString() {
    return 'CvxMap(cvx: $cvx, shortDescription: $shortDescription, association: $association)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CvxMap &&
            (identical(other.cvx, cvx) ||
                const DeepCollectionEquality().equals(other.cvx, cvx)) &&
            (identical(other.shortDescription, shortDescription) ||
                const DeepCollectionEquality()
                    .equals(other.shortDescription, shortDescription)) &&
            (identical(other.association, association) ||
                const DeepCollectionEquality()
                    .equals(other.association, association)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cvx) ^
      const DeepCollectionEquality().hash(shortDescription) ^
      const DeepCollectionEquality().hash(association);

  @JsonKey(ignore: true)
  @override
  _$CvxMapCopyWith<_CvxMap> get copyWith =>
      __$CvxMapCopyWithImpl<_CvxMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CvxMapToJson(this);
  }
}

abstract class _CvxMap implements CvxMap {
  factory _CvxMap(
      {Cvx? cvx,
      String? shortDescription,
      List<Association>? association}) = _$_CvxMap;

  factory _CvxMap.fromJson(Map<String, dynamic> json) = _$_CvxMap.fromJson;

  @override
  Cvx? get cvx => throw _privateConstructorUsedError;
  @override
  String? get shortDescription => throw _privateConstructorUsedError;
  @override
  List<Association>? get association => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CvxMapCopyWith<_CvxMap> get copyWith => throw _privateConstructorUsedError;
}

Association _$AssociationFromJson(Map<String, dynamic> json) {
  return _Association.fromJson(json);
}

/// @nodoc
class _$AssociationTearOff {
  const _$AssociationTearOff();

  _Association call(
      {TargetDisease? antigen,
      String? associationBeginAge,
      String? associationEndAge}) {
    return _Association(
      antigen: antigen,
      associationBeginAge: associationBeginAge,
      associationEndAge: associationEndAge,
    );
  }

  Association fromJson(Map<String, Object> json) {
    return Association.fromJson(json);
  }
}

/// @nodoc
const $Association = _$AssociationTearOff();

/// @nodoc
mixin _$Association {
  TargetDisease? get antigen => throw _privateConstructorUsedError;
  String? get associationBeginAge => throw _privateConstructorUsedError;
  String? get associationEndAge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssociationCopyWith<Association> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssociationCopyWith<$Res> {
  factory $AssociationCopyWith(
          Association value, $Res Function(Association) then) =
      _$AssociationCopyWithImpl<$Res>;
  $Res call(
      {TargetDisease? antigen,
      String? associationBeginAge,
      String? associationEndAge});
}

/// @nodoc
class _$AssociationCopyWithImpl<$Res> implements $AssociationCopyWith<$Res> {
  _$AssociationCopyWithImpl(this._value, this._then);

  final Association _value;
  // ignore: unused_field
  final $Res Function(Association) _then;

  @override
  $Res call({
    Object? antigen = freezed,
    Object? associationBeginAge = freezed,
    Object? associationEndAge = freezed,
  }) {
    return _then(_value.copyWith(
      antigen: antigen == freezed
          ? _value.antigen
          : antigen // ignore: cast_nullable_to_non_nullable
              as TargetDisease?,
      associationBeginAge: associationBeginAge == freezed
          ? _value.associationBeginAge
          : associationBeginAge // ignore: cast_nullable_to_non_nullable
              as String?,
      associationEndAge: associationEndAge == freezed
          ? _value.associationEndAge
          : associationEndAge // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AssociationCopyWith<$Res>
    implements $AssociationCopyWith<$Res> {
  factory _$AssociationCopyWith(
          _Association value, $Res Function(_Association) then) =
      __$AssociationCopyWithImpl<$Res>;
  @override
  $Res call(
      {TargetDisease? antigen,
      String? associationBeginAge,
      String? associationEndAge});
}

/// @nodoc
class __$AssociationCopyWithImpl<$Res> extends _$AssociationCopyWithImpl<$Res>
    implements _$AssociationCopyWith<$Res> {
  __$AssociationCopyWithImpl(
      _Association _value, $Res Function(_Association) _then)
      : super(_value, (v) => _then(v as _Association));

  @override
  _Association get _value => super._value as _Association;

  @override
  $Res call({
    Object? antigen = freezed,
    Object? associationBeginAge = freezed,
    Object? associationEndAge = freezed,
  }) {
    return _then(_Association(
      antigen: antigen == freezed
          ? _value.antigen
          : antigen // ignore: cast_nullable_to_non_nullable
              as TargetDisease?,
      associationBeginAge: associationBeginAge == freezed
          ? _value.associationBeginAge
          : associationBeginAge // ignore: cast_nullable_to_non_nullable
              as String?,
      associationEndAge: associationEndAge == freezed
          ? _value.associationEndAge
          : associationEndAge // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Association implements _Association {
  _$_Association(
      {this.antigen, this.associationBeginAge, this.associationEndAge});

  factory _$_Association.fromJson(Map<String, dynamic> json) =>
      _$$_AssociationFromJson(json);

  @override
  final TargetDisease? antigen;
  @override
  final String? associationBeginAge;
  @override
  final String? associationEndAge;

  @override
  String toString() {
    return 'Association(antigen: $antigen, associationBeginAge: $associationBeginAge, associationEndAge: $associationEndAge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Association &&
            (identical(other.antigen, antigen) ||
                const DeepCollectionEquality()
                    .equals(other.antigen, antigen)) &&
            (identical(other.associationBeginAge, associationBeginAge) ||
                const DeepCollectionEquality()
                    .equals(other.associationBeginAge, associationBeginAge)) &&
            (identical(other.associationEndAge, associationEndAge) ||
                const DeepCollectionEquality()
                    .equals(other.associationEndAge, associationEndAge)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(antigen) ^
      const DeepCollectionEquality().hash(associationBeginAge) ^
      const DeepCollectionEquality().hash(associationEndAge);

  @JsonKey(ignore: true)
  @override
  _$AssociationCopyWith<_Association> get copyWith =>
      __$AssociationCopyWithImpl<_Association>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssociationToJson(this);
  }
}

abstract class _Association implements Association {
  factory _Association(
      {TargetDisease? antigen,
      String? associationBeginAge,
      String? associationEndAge}) = _$_Association;

  factory _Association.fromJson(Map<String, dynamic> json) =
      _$_Association.fromJson;

  @override
  TargetDisease? get antigen => throw _privateConstructorUsedError;
  @override
  String? get associationBeginAge => throw _privateConstructorUsedError;
  @override
  String? get associationEndAge => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AssociationCopyWith<_Association> get copyWith =>
      throw _privateConstructorUsedError;
}
