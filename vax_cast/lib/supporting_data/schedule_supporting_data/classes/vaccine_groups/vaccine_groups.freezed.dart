// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vaccine_groups.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VaccineGroups _$VaccineGroupsFromJson(Map<String, dynamic> json) {
  return _VaccineGroups.fromJson(json);
}

/// @nodoc
class _$VaccineGroupsTearOff {
  const _$VaccineGroupsTearOff();

  _VaccineGroups call({List<VaccineGroup>? vaccineGroup}) {
    return _VaccineGroups(
      vaccineGroup: vaccineGroup,
    );
  }

  VaccineGroups fromJson(Map<String, Object> json) {
    return VaccineGroups.fromJson(json);
  }
}

/// @nodoc
const $VaccineGroups = _$VaccineGroupsTearOff();

/// @nodoc
mixin _$VaccineGroups {
  List<VaccineGroup>? get vaccineGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineGroupsCopyWith<VaccineGroups> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineGroupsCopyWith<$Res> {
  factory $VaccineGroupsCopyWith(
          VaccineGroups value, $Res Function(VaccineGroups) then) =
      _$VaccineGroupsCopyWithImpl<$Res>;
  $Res call({List<VaccineGroup>? vaccineGroup});
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
    Object? vaccineGroup = freezed,
  }) {
    return _then(_value.copyWith(
      vaccineGroup: vaccineGroup == freezed
          ? _value.vaccineGroup
          : vaccineGroup // ignore: cast_nullable_to_non_nullable
              as List<VaccineGroup>?,
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
  $Res call({List<VaccineGroup>? vaccineGroup});
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
    Object? vaccineGroup = freezed,
  }) {
    return _then(_VaccineGroups(
      vaccineGroup: vaccineGroup == freezed
          ? _value.vaccineGroup
          : vaccineGroup // ignore: cast_nullable_to_non_nullable
              as List<VaccineGroup>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaccineGroups implements _VaccineGroups {
  _$_VaccineGroups({this.vaccineGroup});

  factory _$_VaccineGroups.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineGroupsFromJson(json);

  @override
  final List<VaccineGroup>? vaccineGroup;

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

  @JsonKey(ignore: true)
  @override
  _$VaccineGroupsCopyWith<_VaccineGroups> get copyWith =>
      __$VaccineGroupsCopyWithImpl<_VaccineGroups>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineGroupsToJson(this);
  }
}

abstract class _VaccineGroups implements VaccineGroups {
  factory _VaccineGroups({List<VaccineGroup>? vaccineGroup}) = _$_VaccineGroups;

  factory _VaccineGroups.fromJson(Map<String, dynamic> json) =
      _$_VaccineGroups.fromJson;

  @override
  List<VaccineGroup>? get vaccineGroup => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VaccineGroupsCopyWith<_VaccineGroups> get copyWith =>
      throw _privateConstructorUsedError;
}

VaccineGroup _$VaccineGroupFromJson(Map<String, dynamic> json) {
  return _VaccineGroup.fromJson(json);
}

/// @nodoc
class _$VaccineGroupTearOff {
  const _$VaccineGroupTearOff();

  _VaccineGroup call(
      {VaccineGroupName? name, Binary? administerFullVaccineGroup}) {
    return _VaccineGroup(
      name: name,
      administerFullVaccineGroup: administerFullVaccineGroup,
    );
  }

  VaccineGroup fromJson(Map<String, Object> json) {
    return VaccineGroup.fromJson(json);
  }
}

/// @nodoc
const $VaccineGroup = _$VaccineGroupTearOff();

/// @nodoc
mixin _$VaccineGroup {
  VaccineGroupName? get name => throw _privateConstructorUsedError;
  Binary? get administerFullVaccineGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineGroupCopyWith<VaccineGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineGroupCopyWith<$Res> {
  factory $VaccineGroupCopyWith(
          VaccineGroup value, $Res Function(VaccineGroup) then) =
      _$VaccineGroupCopyWithImpl<$Res>;
  $Res call({VaccineGroupName? name, Binary? administerFullVaccineGroup});
}

/// @nodoc
class _$VaccineGroupCopyWithImpl<$Res> implements $VaccineGroupCopyWith<$Res> {
  _$VaccineGroupCopyWithImpl(this._value, this._then);

  final VaccineGroup _value;
  // ignore: unused_field
  final $Res Function(VaccineGroup) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? administerFullVaccineGroup = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as VaccineGroupName?,
      administerFullVaccineGroup: administerFullVaccineGroup == freezed
          ? _value.administerFullVaccineGroup
          : administerFullVaccineGroup // ignore: cast_nullable_to_non_nullable
              as Binary?,
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
  $Res call({VaccineGroupName? name, Binary? administerFullVaccineGroup});
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
    Object? name = freezed,
    Object? administerFullVaccineGroup = freezed,
  }) {
    return _then(_VaccineGroup(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as VaccineGroupName?,
      administerFullVaccineGroup: administerFullVaccineGroup == freezed
          ? _value.administerFullVaccineGroup
          : administerFullVaccineGroup // ignore: cast_nullable_to_non_nullable
              as Binary?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaccineGroup implements _VaccineGroup {
  _$_VaccineGroup({this.name, this.administerFullVaccineGroup});

  factory _$_VaccineGroup.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineGroupFromJson(json);

  @override
  final VaccineGroupName? name;
  @override
  final Binary? administerFullVaccineGroup;

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

  @JsonKey(ignore: true)
  @override
  _$VaccineGroupCopyWith<_VaccineGroup> get copyWith =>
      __$VaccineGroupCopyWithImpl<_VaccineGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineGroupToJson(this);
  }
}

abstract class _VaccineGroup implements VaccineGroup {
  factory _VaccineGroup(
      {VaccineGroupName? name,
      Binary? administerFullVaccineGroup}) = _$_VaccineGroup;

  factory _VaccineGroup.fromJson(Map<String, dynamic> json) =
      _$_VaccineGroup.fromJson;

  @override
  VaccineGroupName? get name => throw _privateConstructorUsedError;
  @override
  Binary? get administerFullVaccineGroup => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VaccineGroupCopyWith<_VaccineGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
