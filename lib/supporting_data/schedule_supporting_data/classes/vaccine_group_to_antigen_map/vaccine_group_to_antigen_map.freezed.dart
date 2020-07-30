// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vaccine_group_to_antigen_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
VaccineGroupToAntigenMap _$VaccineGroupToAntigenMapFromJson(
    Map<String, dynamic> json) {
  return _VaccineGroupToAntigenMap.fromJson(json);
}

class _$VaccineGroupToAntigenMapTearOff {
  const _$VaccineGroupToAntigenMapTearOff();

// ignore: unused_element
  _VaccineGroupToAntigenMap call({List<VaccineGroupMap> vaccineGroupMap}) {
    return _VaccineGroupToAntigenMap(
      vaccineGroupMap: vaccineGroupMap,
    );
  }
}

// ignore: unused_element
const $VaccineGroupToAntigenMap = _$VaccineGroupToAntigenMapTearOff();

mixin _$VaccineGroupToAntigenMap {
  List<VaccineGroupMap> get vaccineGroupMap;

  Map<String, dynamic> toJson();
  $VaccineGroupToAntigenMapCopyWith<VaccineGroupToAntigenMap> get copyWith;
}

abstract class $VaccineGroupToAntigenMapCopyWith<$Res> {
  factory $VaccineGroupToAntigenMapCopyWith(VaccineGroupToAntigenMap value,
          $Res Function(VaccineGroupToAntigenMap) then) =
      _$VaccineGroupToAntigenMapCopyWithImpl<$Res>;
  $Res call({List<VaccineGroupMap> vaccineGroupMap});
}

class _$VaccineGroupToAntigenMapCopyWithImpl<$Res>
    implements $VaccineGroupToAntigenMapCopyWith<$Res> {
  _$VaccineGroupToAntigenMapCopyWithImpl(this._value, this._then);

  final VaccineGroupToAntigenMap _value;
  // ignore: unused_field
  final $Res Function(VaccineGroupToAntigenMap) _then;

  @override
  $Res call({
    Object vaccineGroupMap = freezed,
  }) {
    return _then(_value.copyWith(
      vaccineGroupMap: vaccineGroupMap == freezed
          ? _value.vaccineGroupMap
          : vaccineGroupMap as List<VaccineGroupMap>,
    ));
  }
}

abstract class _$VaccineGroupToAntigenMapCopyWith<$Res>
    implements $VaccineGroupToAntigenMapCopyWith<$Res> {
  factory _$VaccineGroupToAntigenMapCopyWith(_VaccineGroupToAntigenMap value,
          $Res Function(_VaccineGroupToAntigenMap) then) =
      __$VaccineGroupToAntigenMapCopyWithImpl<$Res>;
  @override
  $Res call({List<VaccineGroupMap> vaccineGroupMap});
}

class __$VaccineGroupToAntigenMapCopyWithImpl<$Res>
    extends _$VaccineGroupToAntigenMapCopyWithImpl<$Res>
    implements _$VaccineGroupToAntigenMapCopyWith<$Res> {
  __$VaccineGroupToAntigenMapCopyWithImpl(_VaccineGroupToAntigenMap _value,
      $Res Function(_VaccineGroupToAntigenMap) _then)
      : super(_value, (v) => _then(v as _VaccineGroupToAntigenMap));

  @override
  _VaccineGroupToAntigenMap get _value =>
      super._value as _VaccineGroupToAntigenMap;

  @override
  $Res call({
    Object vaccineGroupMap = freezed,
  }) {
    return _then(_VaccineGroupToAntigenMap(
      vaccineGroupMap: vaccineGroupMap == freezed
          ? _value.vaccineGroupMap
          : vaccineGroupMap as List<VaccineGroupMap>,
    ));
  }
}

@JsonSerializable()
class _$_VaccineGroupToAntigenMap implements _VaccineGroupToAntigenMap {
  _$_VaccineGroupToAntigenMap({this.vaccineGroupMap});

  factory _$_VaccineGroupToAntigenMap.fromJson(Map<String, dynamic> json) =>
      _$_$_VaccineGroupToAntigenMapFromJson(json);

  @override
  final List<VaccineGroupMap> vaccineGroupMap;

  @override
  String toString() {
    return 'VaccineGroupToAntigenMap(vaccineGroupMap: $vaccineGroupMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccineGroupToAntigenMap &&
            (identical(other.vaccineGroupMap, vaccineGroupMap) ||
                const DeepCollectionEquality()
                    .equals(other.vaccineGroupMap, vaccineGroupMap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(vaccineGroupMap);

  @override
  _$VaccineGroupToAntigenMapCopyWith<_VaccineGroupToAntigenMap> get copyWith =>
      __$VaccineGroupToAntigenMapCopyWithImpl<_VaccineGroupToAntigenMap>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VaccineGroupToAntigenMapToJson(this);
  }
}

abstract class _VaccineGroupToAntigenMap implements VaccineGroupToAntigenMap {
  factory _VaccineGroupToAntigenMap({List<VaccineGroupMap> vaccineGroupMap}) =
      _$_VaccineGroupToAntigenMap;

  factory _VaccineGroupToAntigenMap.fromJson(Map<String, dynamic> json) =
      _$_VaccineGroupToAntigenMap.fromJson;

  @override
  List<VaccineGroupMap> get vaccineGroupMap;
  @override
  _$VaccineGroupToAntigenMapCopyWith<_VaccineGroupToAntigenMap> get copyWith;
}

VaccineGroupMap _$VaccineGroupMapFromJson(Map<String, dynamic> json) {
  return _VaccineGroupMap.fromJson(json);
}

class _$VaccineGroupMapTearOff {
  const _$VaccineGroupMapTearOff();

// ignore: unused_element
  _VaccineGroupMap call({VaccineGroupName name, List<TargetDisease> antigen}) {
    return _VaccineGroupMap(
      name: name,
      antigen: antigen,
    );
  }
}

// ignore: unused_element
const $VaccineGroupMap = _$VaccineGroupMapTearOff();

mixin _$VaccineGroupMap {
  VaccineGroupName get name;
  List<TargetDisease> get antigen;

  Map<String, dynamic> toJson();
  $VaccineGroupMapCopyWith<VaccineGroupMap> get copyWith;
}

abstract class $VaccineGroupMapCopyWith<$Res> {
  factory $VaccineGroupMapCopyWith(
          VaccineGroupMap value, $Res Function(VaccineGroupMap) then) =
      _$VaccineGroupMapCopyWithImpl<$Res>;
  $Res call({VaccineGroupName name, List<TargetDisease> antigen});
}

class _$VaccineGroupMapCopyWithImpl<$Res>
    implements $VaccineGroupMapCopyWith<$Res> {
  _$VaccineGroupMapCopyWithImpl(this._value, this._then);

  final VaccineGroupMap _value;
  // ignore: unused_field
  final $Res Function(VaccineGroupMap) _then;

  @override
  $Res call({
    Object name = freezed,
    Object antigen = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as VaccineGroupName,
      antigen:
          antigen == freezed ? _value.antigen : antigen as List<TargetDisease>,
    ));
  }
}

abstract class _$VaccineGroupMapCopyWith<$Res>
    implements $VaccineGroupMapCopyWith<$Res> {
  factory _$VaccineGroupMapCopyWith(
          _VaccineGroupMap value, $Res Function(_VaccineGroupMap) then) =
      __$VaccineGroupMapCopyWithImpl<$Res>;
  @override
  $Res call({VaccineGroupName name, List<TargetDisease> antigen});
}

class __$VaccineGroupMapCopyWithImpl<$Res>
    extends _$VaccineGroupMapCopyWithImpl<$Res>
    implements _$VaccineGroupMapCopyWith<$Res> {
  __$VaccineGroupMapCopyWithImpl(
      _VaccineGroupMap _value, $Res Function(_VaccineGroupMap) _then)
      : super(_value, (v) => _then(v as _VaccineGroupMap));

  @override
  _VaccineGroupMap get _value => super._value as _VaccineGroupMap;

  @override
  $Res call({
    Object name = freezed,
    Object antigen = freezed,
  }) {
    return _then(_VaccineGroupMap(
      name: name == freezed ? _value.name : name as VaccineGroupName,
      antigen:
          antigen == freezed ? _value.antigen : antigen as List<TargetDisease>,
    ));
  }
}

@JsonSerializable()
class _$_VaccineGroupMap implements _VaccineGroupMap {
  _$_VaccineGroupMap({this.name, this.antigen});

  factory _$_VaccineGroupMap.fromJson(Map<String, dynamic> json) =>
      _$_$_VaccineGroupMapFromJson(json);

  @override
  final VaccineGroupName name;
  @override
  final List<TargetDisease> antigen;

  @override
  String toString() {
    return 'VaccineGroupMap(name: $name, antigen: $antigen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccineGroupMap &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.antigen, antigen) ||
                const DeepCollectionEquality().equals(other.antigen, antigen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(antigen);

  @override
  _$VaccineGroupMapCopyWith<_VaccineGroupMap> get copyWith =>
      __$VaccineGroupMapCopyWithImpl<_VaccineGroupMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VaccineGroupMapToJson(this);
  }
}

abstract class _VaccineGroupMap implements VaccineGroupMap {
  factory _VaccineGroupMap(
      {VaccineGroupName name,
      List<TargetDisease> antigen}) = _$_VaccineGroupMap;

  factory _VaccineGroupMap.fromJson(Map<String, dynamic> json) =
      _$_VaccineGroupMap.fromJson;

  @override
  VaccineGroupName get name;
  @override
  List<TargetDisease> get antigen;
  @override
  _$VaccineGroupMapCopyWith<_VaccineGroupMap> get copyWith;
}
