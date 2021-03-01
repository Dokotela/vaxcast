// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vaccine_groups.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
VaccineGroups _$VaccineGroupsFromJson(Map<String, dynamic> json) {
  return _VaccineGroups.fromJson(json);
}

/// @nodoc
class _$VaccineGroupsTearOff {
  const _$VaccineGroupsTearOff();

// ignore: unused_element
  _VaccineGroups call({List<VaccineGroup> vaccineGroup}) {
    return _VaccineGroups(
      vaccineGroup: vaccineGroup,
    );
  }

// ignore: unused_element
  VaccineGroups fromJson(Map<String, Object> json) {
    return VaccineGroups.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $VaccineGroups = _$VaccineGroupsTearOff();

/// @nodoc
mixin _$VaccineGroups {
  List<VaccineGroup> get vaccineGroup;

  Map<String, dynamic> toJson();
  $VaccineGroupsCopyWith<VaccineGroups> get copyWith;
}

/// @nodoc
abstract class $VaccineGroupsCopyWith<$Res> {
  factory $VaccineGroupsCopyWith(
          VaccineGroups value, $Res Function(VaccineGroups) then) =
      _$VaccineGroupsCopyWithImpl<$Res>;
  $Res call({List<VaccineGroup> vaccineGroup});
}

/// @nodoc
class _$VaccineGroupsCopyWithImpl<$Res>
    implements $VaccineGroupsCopyWith<$Res> {
  _$VaccineGroupsCopyWithImpl(this._value, this._then);

  final VaccineGroups _value;
  // ignore: unused_field
  final $Res Function(VaccineGroups) _then;

  @override
  $Res call({
    Object vaccineGroup = freezed,
  }) {
    return _then(_value.copyWith(
      vaccineGroup: vaccineGroup == freezed
          ? _value.vaccineGroup
          : vaccineGroup as List<VaccineGroup>,
    ));
  }
}

/// @nodoc
abstract class _$VaccineGroupsCopyWith<$Res>
    implements $VaccineGroupsCopyWith<$Res> {
  factory _$VaccineGroupsCopyWith(
          _VaccineGroups value, $Res Function(_VaccineGroups) then) =
      __$VaccineGroupsCopyWithImpl<$Res>;
  @override
  $Res call({List<VaccineGroup> vaccineGroup});
}

/// @nodoc
class __$VaccineGroupsCopyWithImpl<$Res>
    extends _$VaccineGroupsCopyWithImpl<$Res>
    implements _$VaccineGroupsCopyWith<$Res> {
  __$VaccineGroupsCopyWithImpl(
      _VaccineGroups _value, $Res Function(_VaccineGroups) _then)
      : super(_value, (v) => _then(v as _VaccineGroups));

  @override
  _VaccineGroups get _value => super._value as _VaccineGroups;

  @override
  $Res call({
    Object vaccineGroup = freezed,
  }) {
    return _then(_VaccineGroups(
      vaccineGroup: vaccineGroup == freezed
          ? _value.vaccineGroup
          : vaccineGroup as List<VaccineGroup>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_VaccineGroups implements _VaccineGroups {
  _$_VaccineGroups({this.vaccineGroup});

  factory _$_VaccineGroups.fromJson(Map<String, dynamic> json) =>
      _$_$_VaccineGroupsFromJson(json);

  @override
  final List<VaccineGroup> vaccineGroup;

  @override
  String toString() {
    return 'VaccineGroups(vaccineGroup: $vaccineGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccineGroups &&
            (identical(other.vaccineGroup, vaccineGroup) ||
                const DeepCollectionEquality()
                    .equals(other.vaccineGroup, vaccineGroup)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(vaccineGroup);

  @override
  _$VaccineGroupsCopyWith<_VaccineGroups> get copyWith =>
      __$VaccineGroupsCopyWithImpl<_VaccineGroups>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VaccineGroupsToJson(this);
  }
}

abstract class _VaccineGroups implements VaccineGroups {
  factory _VaccineGroups({List<VaccineGroup> vaccineGroup}) = _$_VaccineGroups;

  factory _VaccineGroups.fromJson(Map<String, dynamic> json) =
      _$_VaccineGroups.fromJson;

  @override
  List<VaccineGroup> get vaccineGroup;
  @override
  _$VaccineGroupsCopyWith<_VaccineGroups> get copyWith;
}

VaccineGroup _$VaccineGroupFromJson(Map<String, dynamic> json) {
  return _VaccineGroup.fromJson(json);
}

/// @nodoc
class _$VaccineGroupTearOff {
  const _$VaccineGroupTearOff();

// ignore: unused_element
  _VaccineGroup call(
      {VaccineGroupName name, Binary administerFullVaccineGroup}) {
    return _VaccineGroup(
      name: name,
      administerFullVaccineGroup: administerFullVaccineGroup,
    );
  }

// ignore: unused_element
  VaccineGroup fromJson(Map<String, Object> json) {
    return VaccineGroup.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $VaccineGroup = _$VaccineGroupTearOff();

/// @nodoc
mixin _$VaccineGroup {
  VaccineGroupName get name;
  Binary get administerFullVaccineGroup;

  Map<String, dynamic> toJson();
  $VaccineGroupCopyWith<VaccineGroup> get copyWith;
}

/// @nodoc
abstract class $VaccineGroupCopyWith<$Res> {
  factory $VaccineGroupCopyWith(
          VaccineGroup value, $Res Function(VaccineGroup) then) =
      _$VaccineGroupCopyWithImpl<$Res>;
  $Res call({VaccineGroupName name, Binary administerFullVaccineGroup});
}

/// @nodoc
class _$VaccineGroupCopyWithImpl<$Res> implements $VaccineGroupCopyWith<$Res> {
  _$VaccineGroupCopyWithImpl(this._value, this._then);

  final VaccineGroup _value;
  // ignore: unused_field
  final $Res Function(VaccineGroup) _then;

  @override
  $Res call({
    Object name = freezed,
    Object administerFullVaccineGroup = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as VaccineGroupName,
      administerFullVaccineGroup: administerFullVaccineGroup == freezed
          ? _value.administerFullVaccineGroup
          : administerFullVaccineGroup as Binary,
    ));
  }
}

/// @nodoc
abstract class _$VaccineGroupCopyWith<$Res>
    implements $VaccineGroupCopyWith<$Res> {
  factory _$VaccineGroupCopyWith(
          _VaccineGroup value, $Res Function(_VaccineGroup) then) =
      __$VaccineGroupCopyWithImpl<$Res>;
  @override
  $Res call({VaccineGroupName name, Binary administerFullVaccineGroup});
}

/// @nodoc
class __$VaccineGroupCopyWithImpl<$Res> extends _$VaccineGroupCopyWithImpl<$Res>
    implements _$VaccineGroupCopyWith<$Res> {
  __$VaccineGroupCopyWithImpl(
      _VaccineGroup _value, $Res Function(_VaccineGroup) _then)
      : super(_value, (v) => _then(v as _VaccineGroup));

  @override
  _VaccineGroup get _value => super._value as _VaccineGroup;

  @override
  $Res call({
    Object name = freezed,
    Object administerFullVaccineGroup = freezed,
  }) {
    return _then(_VaccineGroup(
      name: name == freezed ? _value.name : name as VaccineGroupName,
      administerFullVaccineGroup: administerFullVaccineGroup == freezed
          ? _value.administerFullVaccineGroup
          : administerFullVaccineGroup as Binary,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_VaccineGroup implements _VaccineGroup {
  _$_VaccineGroup({this.name, this.administerFullVaccineGroup});

  factory _$_VaccineGroup.fromJson(Map<String, dynamic> json) =>
      _$_$_VaccineGroupFromJson(json);

  @override
  final VaccineGroupName name;
  @override
  final Binary administerFullVaccineGroup;

  @override
  String toString() {
    return 'VaccineGroup(name: $name, administerFullVaccineGroup: $administerFullVaccineGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccineGroup &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.administerFullVaccineGroup,
                    administerFullVaccineGroup) ||
                const DeepCollectionEquality().equals(
                    other.administerFullVaccineGroup,
                    administerFullVaccineGroup)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(administerFullVaccineGroup);

  @override
  _$VaccineGroupCopyWith<_VaccineGroup> get copyWith =>
      __$VaccineGroupCopyWithImpl<_VaccineGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VaccineGroupToJson(this);
  }
}

abstract class _VaccineGroup implements VaccineGroup {
  factory _VaccineGroup(
      {VaccineGroupName name,
      Binary administerFullVaccineGroup}) = _$_VaccineGroup;

  factory _VaccineGroup.fromJson(Map<String, dynamic> json) =
      _$_VaccineGroup.fromJson;

  @override
  VaccineGroupName get name;
  @override
  Binary get administerFullVaccineGroup;
  @override
  _$VaccineGroupCopyWith<_VaccineGroup> get copyWith;
}
