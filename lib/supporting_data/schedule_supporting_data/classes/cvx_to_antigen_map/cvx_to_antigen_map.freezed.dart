// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cvx_to_antigen_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CvxToAntigenMap _$CvxToAntigenMapFromJson(Map<String, dynamic> json) {
  return _CvxToAntigenMap.fromJson(json);
}

class _$CvxToAntigenMapTearOff {
  const _$CvxToAntigenMapTearOff();

// ignore: unused_element
  _CvxToAntigenMap call({List<CvxMap> cvxMap}) {
    return _CvxToAntigenMap(
      cvxMap: cvxMap,
    );
  }
}

// ignore: unused_element
const $CvxToAntigenMap = _$CvxToAntigenMapTearOff();

mixin _$CvxToAntigenMap {
  List<CvxMap> get cvxMap;

  Map<String, dynamic> toJson();
  $CvxToAntigenMapCopyWith<CvxToAntigenMap> get copyWith;
}

abstract class $CvxToAntigenMapCopyWith<$Res> {
  factory $CvxToAntigenMapCopyWith(
          CvxToAntigenMap value, $Res Function(CvxToAntigenMap) then) =
      _$CvxToAntigenMapCopyWithImpl<$Res>;
  $Res call({List<CvxMap> cvxMap});
}

class _$CvxToAntigenMapCopyWithImpl<$Res>
    implements $CvxToAntigenMapCopyWith<$Res> {
  _$CvxToAntigenMapCopyWithImpl(this._value, this._then);

  final CvxToAntigenMap _value;
  // ignore: unused_field
  final $Res Function(CvxToAntigenMap) _then;

  @override
  $Res call({
    Object cvxMap = freezed,
  }) {
    return _then(_value.copyWith(
      cvxMap: cvxMap == freezed ? _value.cvxMap : cvxMap as List<CvxMap>,
    ));
  }
}

abstract class _$CvxToAntigenMapCopyWith<$Res>
    implements $CvxToAntigenMapCopyWith<$Res> {
  factory _$CvxToAntigenMapCopyWith(
          _CvxToAntigenMap value, $Res Function(_CvxToAntigenMap) then) =
      __$CvxToAntigenMapCopyWithImpl<$Res>;
  @override
  $Res call({List<CvxMap> cvxMap});
}

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
    Object cvxMap = freezed,
  }) {
    return _then(_CvxToAntigenMap(
      cvxMap: cvxMap == freezed ? _value.cvxMap : cvxMap as List<CvxMap>,
    ));
  }
}

@JsonSerializable()
class _$_CvxToAntigenMap implements _CvxToAntigenMap {
  _$_CvxToAntigenMap({this.cvxMap});

  factory _$_CvxToAntigenMap.fromJson(Map<String, dynamic> json) =>
      _$_$_CvxToAntigenMapFromJson(json);

  @override
  final List<CvxMap> cvxMap;

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

  @override
  _$CvxToAntigenMapCopyWith<_CvxToAntigenMap> get copyWith =>
      __$CvxToAntigenMapCopyWithImpl<_CvxToAntigenMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CvxToAntigenMapToJson(this);
  }
}

abstract class _CvxToAntigenMap implements CvxToAntigenMap {
  factory _CvxToAntigenMap({List<CvxMap> cvxMap}) = _$_CvxToAntigenMap;

  factory _CvxToAntigenMap.fromJson(Map<String, dynamic> json) =
      _$_CvxToAntigenMap.fromJson;

  @override
  List<CvxMap> get cvxMap;
  @override
  _$CvxToAntigenMapCopyWith<_CvxToAntigenMap> get copyWith;
}

CvxMap _$CvxMapFromJson(Map<String, dynamic> json) {
  return _CvxMap.fromJson(json);
}

class _$CvxMapTearOff {
  const _$CvxMapTearOff();

// ignore: unused_element
  _CvxMap call(
      {Cvx cvx, String shortDescription, List<Association> association}) {
    return _CvxMap(
      cvx: cvx,
      shortDescription: shortDescription,
      association: association,
    );
  }
}

// ignore: unused_element
const $CvxMap = _$CvxMapTearOff();

mixin _$CvxMap {
  Cvx get cvx;
  String get shortDescription;
  List<Association> get association;

  Map<String, dynamic> toJson();
  $CvxMapCopyWith<CvxMap> get copyWith;
}

abstract class $CvxMapCopyWith<$Res> {
  factory $CvxMapCopyWith(CvxMap value, $Res Function(CvxMap) then) =
      _$CvxMapCopyWithImpl<$Res>;
  $Res call({Cvx cvx, String shortDescription, List<Association> association});
}

class _$CvxMapCopyWithImpl<$Res> implements $CvxMapCopyWith<$Res> {
  _$CvxMapCopyWithImpl(this._value, this._then);

  final CvxMap _value;
  // ignore: unused_field
  final $Res Function(CvxMap) _then;

  @override
  $Res call({
    Object cvx = freezed,
    Object shortDescription = freezed,
    Object association = freezed,
  }) {
    return _then(_value.copyWith(
      cvx: cvx == freezed ? _value.cvx : cvx as Cvx,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription as String,
      association: association == freezed
          ? _value.association
          : association as List<Association>,
    ));
  }
}

abstract class _$CvxMapCopyWith<$Res> implements $CvxMapCopyWith<$Res> {
  factory _$CvxMapCopyWith(_CvxMap value, $Res Function(_CvxMap) then) =
      __$CvxMapCopyWithImpl<$Res>;
  @override
  $Res call({Cvx cvx, String shortDescription, List<Association> association});
}

class __$CvxMapCopyWithImpl<$Res> extends _$CvxMapCopyWithImpl<$Res>
    implements _$CvxMapCopyWith<$Res> {
  __$CvxMapCopyWithImpl(_CvxMap _value, $Res Function(_CvxMap) _then)
      : super(_value, (v) => _then(v as _CvxMap));

  @override
  _CvxMap get _value => super._value as _CvxMap;

  @override
  $Res call({
    Object cvx = freezed,
    Object shortDescription = freezed,
    Object association = freezed,
  }) {
    return _then(_CvxMap(
      cvx: cvx == freezed ? _value.cvx : cvx as Cvx,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription as String,
      association: association == freezed
          ? _value.association
          : association as List<Association>,
    ));
  }
}

@JsonSerializable()
class _$_CvxMap implements _CvxMap {
  _$_CvxMap({this.cvx, this.shortDescription, this.association});

  factory _$_CvxMap.fromJson(Map<String, dynamic> json) =>
      _$_$_CvxMapFromJson(json);

  @override
  final Cvx cvx;
  @override
  final String shortDescription;
  @override
  final List<Association> association;

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

  @override
  _$CvxMapCopyWith<_CvxMap> get copyWith =>
      __$CvxMapCopyWithImpl<_CvxMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CvxMapToJson(this);
  }
}

abstract class _CvxMap implements CvxMap {
  factory _CvxMap(
      {Cvx cvx,
      String shortDescription,
      List<Association> association}) = _$_CvxMap;

  factory _CvxMap.fromJson(Map<String, dynamic> json) = _$_CvxMap.fromJson;

  @override
  Cvx get cvx;
  @override
  String get shortDescription;
  @override
  List<Association> get association;
  @override
  _$CvxMapCopyWith<_CvxMap> get copyWith;
}

Association _$AssociationFromJson(Map<String, dynamic> json) {
  return _Association.fromJson(json);
}

class _$AssociationTearOff {
  const _$AssociationTearOff();

// ignore: unused_element
  _Association call(
      {TargetDisease antigen,
      String associationBeginAge,
      String associationEndAge}) {
    return _Association(
      antigen: antigen,
      associationBeginAge: associationBeginAge,
      associationEndAge: associationEndAge,
    );
  }
}

// ignore: unused_element
const $Association = _$AssociationTearOff();

mixin _$Association {
  TargetDisease get antigen;
  String get associationBeginAge;
  String get associationEndAge;

  Map<String, dynamic> toJson();
  $AssociationCopyWith<Association> get copyWith;
}

abstract class $AssociationCopyWith<$Res> {
  factory $AssociationCopyWith(
          Association value, $Res Function(Association) then) =
      _$AssociationCopyWithImpl<$Res>;
  $Res call(
      {TargetDisease antigen,
      String associationBeginAge,
      String associationEndAge});
}

class _$AssociationCopyWithImpl<$Res> implements $AssociationCopyWith<$Res> {
  _$AssociationCopyWithImpl(this._value, this._then);

  final Association _value;
  // ignore: unused_field
  final $Res Function(Association) _then;

  @override
  $Res call({
    Object antigen = freezed,
    Object associationBeginAge = freezed,
    Object associationEndAge = freezed,
  }) {
    return _then(_value.copyWith(
      antigen: antigen == freezed ? _value.antigen : antigen as TargetDisease,
      associationBeginAge: associationBeginAge == freezed
          ? _value.associationBeginAge
          : associationBeginAge as String,
      associationEndAge: associationEndAge == freezed
          ? _value.associationEndAge
          : associationEndAge as String,
    ));
  }
}

abstract class _$AssociationCopyWith<$Res>
    implements $AssociationCopyWith<$Res> {
  factory _$AssociationCopyWith(
          _Association value, $Res Function(_Association) then) =
      __$AssociationCopyWithImpl<$Res>;
  @override
  $Res call(
      {TargetDisease antigen,
      String associationBeginAge,
      String associationEndAge});
}

class __$AssociationCopyWithImpl<$Res> extends _$AssociationCopyWithImpl<$Res>
    implements _$AssociationCopyWith<$Res> {
  __$AssociationCopyWithImpl(
      _Association _value, $Res Function(_Association) _then)
      : super(_value, (v) => _then(v as _Association));

  @override
  _Association get _value => super._value as _Association;

  @override
  $Res call({
    Object antigen = freezed,
    Object associationBeginAge = freezed,
    Object associationEndAge = freezed,
  }) {
    return _then(_Association(
      antigen: antigen == freezed ? _value.antigen : antigen as TargetDisease,
      associationBeginAge: associationBeginAge == freezed
          ? _value.associationBeginAge
          : associationBeginAge as String,
      associationEndAge: associationEndAge == freezed
          ? _value.associationEndAge
          : associationEndAge as String,
    ));
  }
}

@JsonSerializable()
class _$_Association implements _Association {
  _$_Association(
      {this.antigen, this.associationBeginAge, this.associationEndAge});

  factory _$_Association.fromJson(Map<String, dynamic> json) =>
      _$_$_AssociationFromJson(json);

  @override
  final TargetDisease antigen;
  @override
  final String associationBeginAge;
  @override
  final String associationEndAge;

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

  @override
  _$AssociationCopyWith<_Association> get copyWith =>
      __$AssociationCopyWithImpl<_Association>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AssociationToJson(this);
  }
}

abstract class _Association implements Association {
  factory _Association(
      {TargetDisease antigen,
      String associationBeginAge,
      String associationEndAge}) = _$_Association;

  factory _Association.fromJson(Map<String, dynamic> json) =
      _$_Association.fromJson;

  @override
  TargetDisease get antigen;
  @override
  String get associationBeginAge;
  @override
  String get associationEndAge;
  @override
  _$AssociationCopyWith<_Association> get copyWith;
}
