// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'supporting_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupportingData _$SupportingDataFromJson(Map<String, dynamic> json) {
  return _SupportingData.fromJson(json);
}

/// @nodoc
class _$SupportingDataTearOff {
  const _$SupportingDataTearOff();

  _SupportingData call(
      {List<AntigenSupportingData?>? antigenSupportingData,
      ScheduleSupportingData? scheduleSupportingData}) {
    return _SupportingData(
      antigenSupportingData: antigenSupportingData,
      scheduleSupportingData: scheduleSupportingData,
    );
  }

  SupportingData fromJson(Map<String, Object> json) {
    return SupportingData.fromJson(json);
  }
}

/// @nodoc
const $SupportingData = _$SupportingDataTearOff();

/// @nodoc
mixin _$SupportingData {
  List<AntigenSupportingData?>? get antigenSupportingData =>
      throw _privateConstructorUsedError;
  ScheduleSupportingData? get scheduleSupportingData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportingDataCopyWith<SupportingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportingDataCopyWith<$Res> {
  factory $SupportingDataCopyWith(
          SupportingData value, $Res Function(SupportingData) then) =
      _$SupportingDataCopyWithImpl<$Res>;
  $Res call(
      {List<AntigenSupportingData?>? antigenSupportingData,
      ScheduleSupportingData? scheduleSupportingData});

  $ScheduleSupportingDataCopyWith<$Res>? get scheduleSupportingData;
}

/// @nodoc
class _$SupportingDataCopyWithImpl<$Res>
    implements $SupportingDataCopyWith<$Res> {
  _$SupportingDataCopyWithImpl(this._value, this._then);

  final SupportingData _value;
  // ignore: unused_field
  final $Res Function(SupportingData) _then;

  @override
  $Res call({
    Object? antigenSupportingData = freezed,
    Object? scheduleSupportingData = freezed,
  }) {
    return _then(_value.copyWith(
      antigenSupportingData: antigenSupportingData == freezed
          ? _value.antigenSupportingData
          : antigenSupportingData // ignore: cast_nullable_to_non_nullable
              as List<AntigenSupportingData?>?,
      scheduleSupportingData: scheduleSupportingData == freezed
          ? _value.scheduleSupportingData
          : scheduleSupportingData // ignore: cast_nullable_to_non_nullable
              as ScheduleSupportingData?,
    ));
  }

  @override
  $ScheduleSupportingDataCopyWith<$Res>? get scheduleSupportingData {
    if (_value.scheduleSupportingData == null) {
      return null;
    }

    return $ScheduleSupportingDataCopyWith<$Res>(_value.scheduleSupportingData!,
        (value) {
      return _then(_value.copyWith(scheduleSupportingData: value));
    });
  }
}

/// @nodoc
abstract class _$SupportingDataCopyWith<$Res>
    implements $SupportingDataCopyWith<$Res> {
  factory _$SupportingDataCopyWith(
          _SupportingData value, $Res Function(_SupportingData) then) =
      __$SupportingDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<AntigenSupportingData?>? antigenSupportingData,
      ScheduleSupportingData? scheduleSupportingData});

  @override
  $ScheduleSupportingDataCopyWith<$Res>? get scheduleSupportingData;
}

/// @nodoc
class __$SupportingDataCopyWithImpl<$Res>
    extends _$SupportingDataCopyWithImpl<$Res>
    implements _$SupportingDataCopyWith<$Res> {
  __$SupportingDataCopyWithImpl(
      _SupportingData _value, $Res Function(_SupportingData) _then)
      : super(_value, (v) => _then(v as _SupportingData));

  @override
  _SupportingData get _value => super._value as _SupportingData;

  @override
  $Res call({
    Object? antigenSupportingData = freezed,
    Object? scheduleSupportingData = freezed,
  }) {
    return _then(_SupportingData(
      antigenSupportingData: antigenSupportingData == freezed
          ? _value.antigenSupportingData
          : antigenSupportingData // ignore: cast_nullable_to_non_nullable
              as List<AntigenSupportingData?>?,
      scheduleSupportingData: scheduleSupportingData == freezed
          ? _value.scheduleSupportingData
          : scheduleSupportingData // ignore: cast_nullable_to_non_nullable
              as ScheduleSupportingData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupportingData extends _SupportingData {
  _$_SupportingData({this.antigenSupportingData, this.scheduleSupportingData})
      : super._();

  factory _$_SupportingData.fromJson(Map<String, dynamic> json) =>
      _$$_SupportingDataFromJson(json);

  @override
  final List<AntigenSupportingData?>? antigenSupportingData;
  @override
  final ScheduleSupportingData? scheduleSupportingData;

  @override
  String toString() {
    return 'SupportingData(antigenSupportingData: $antigenSupportingData, scheduleSupportingData: $scheduleSupportingData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SupportingData &&
            (identical(other.antigenSupportingData, antigenSupportingData) ||
                const DeepCollectionEquality().equals(
                    other.antigenSupportingData, antigenSupportingData)) &&
            (identical(other.scheduleSupportingData, scheduleSupportingData) ||
                const DeepCollectionEquality().equals(
                    other.scheduleSupportingData, scheduleSupportingData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(antigenSupportingData) ^
      const DeepCollectionEquality().hash(scheduleSupportingData);

  @JsonKey(ignore: true)
  @override
  _$SupportingDataCopyWith<_SupportingData> get copyWith =>
      __$SupportingDataCopyWithImpl<_SupportingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportingDataToJson(this);
  }
}

abstract class _SupportingData extends SupportingData {
  factory _SupportingData(
      {List<AntigenSupportingData?>? antigenSupportingData,
      ScheduleSupportingData? scheduleSupportingData}) = _$_SupportingData;
  _SupportingData._() : super._();

  factory _SupportingData.fromJson(Map<String, dynamic> json) =
      _$_SupportingData.fromJson;

  @override
  List<AntigenSupportingData?>? get antigenSupportingData =>
      throw _privateConstructorUsedError;
  @override
  ScheduleSupportingData? get scheduleSupportingData =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SupportingDataCopyWith<_SupportingData> get copyWith =>
      throw _privateConstructorUsedError;
}
