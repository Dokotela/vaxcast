// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_supporting_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleSupportingData _$ScheduleSupportingDataFromJson(
    Map<String, dynamic> json) {
  return _ScheduleSupportingData.fromJson(json);
}

/// @nodoc
class _$ScheduleSupportingDataTearOff {
  const _$ScheduleSupportingDataTearOff();

  _ScheduleSupportingData call(
      {LiveVirusConflicts? liveVirusConflicts,
      VaccineGroups? vaccineGroups,
      VaccineGroupToAntigenMap? vaccineGroupToAntigenMap,
      CvxToAntigenMap? cvxToAntigenMap,
      Observations? observations}) {
    return _ScheduleSupportingData(
      liveVirusConflicts: liveVirusConflicts,
      vaccineGroups: vaccineGroups,
      vaccineGroupToAntigenMap: vaccineGroupToAntigenMap,
      cvxToAntigenMap: cvxToAntigenMap,
      observations: observations,
    );
  }

  ScheduleSupportingData fromJson(Map<String, Object> json) {
    return ScheduleSupportingData.fromJson(json);
  }
}

/// @nodoc
const $ScheduleSupportingData = _$ScheduleSupportingDataTearOff();

/// @nodoc
mixin _$ScheduleSupportingData {
  LiveVirusConflicts? get liveVirusConflicts =>
      throw _privateConstructorUsedError;
  VaccineGroups? get vaccineGroups => throw _privateConstructorUsedError;
  VaccineGroupToAntigenMap? get vaccineGroupToAntigenMap =>
      throw _privateConstructorUsedError;
  CvxToAntigenMap? get cvxToAntigenMap => throw _privateConstructorUsedError;
  Observations? get observations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleSupportingDataCopyWith<ScheduleSupportingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleSupportingDataCopyWith<$Res> {
  factory $ScheduleSupportingDataCopyWith(ScheduleSupportingData value,
          $Res Function(ScheduleSupportingData) then) =
      _$ScheduleSupportingDataCopyWithImpl<$Res>;
  $Res call(
      {LiveVirusConflicts? liveVirusConflicts,
      VaccineGroups? vaccineGroups,
      VaccineGroupToAntigenMap? vaccineGroupToAntigenMap,
      CvxToAntigenMap? cvxToAntigenMap,
      Observations? observations});

  $LiveVirusConflictsCopyWith<$Res>? get liveVirusConflicts;
  $VaccineGroupsCopyWith<$Res>? get vaccineGroups;
  $VaccineGroupToAntigenMapCopyWith<$Res>? get vaccineGroupToAntigenMap;
  $CvxToAntigenMapCopyWith<$Res>? get cvxToAntigenMap;
  $ObservationsCopyWith<$Res>? get observations;
}

/// @nodoc
class _$ScheduleSupportingDataCopyWithImpl<$Res>
    implements $ScheduleSupportingDataCopyWith<$Res> {
  _$ScheduleSupportingDataCopyWithImpl(this._value, this._then);

  final ScheduleSupportingData _value;
  // ignore: unused_field
  final $Res Function(ScheduleSupportingData) _then;

  @override
  $Res call({
    Object? liveVirusConflicts = freezed,
    Object? vaccineGroups = freezed,
    Object? vaccineGroupToAntigenMap = freezed,
    Object? cvxToAntigenMap = freezed,
    Object? observations = freezed,
  }) {
    return _then(_value.copyWith(
      liveVirusConflicts: liveVirusConflicts == freezed
          ? _value.liveVirusConflicts
          : liveVirusConflicts // ignore: cast_nullable_to_non_nullable
              as LiveVirusConflicts?,
      vaccineGroups: vaccineGroups == freezed
          ? _value.vaccineGroups
          : vaccineGroups // ignore: cast_nullable_to_non_nullable
              as VaccineGroups?,
      vaccineGroupToAntigenMap: vaccineGroupToAntigenMap == freezed
          ? _value.vaccineGroupToAntigenMap
          : vaccineGroupToAntigenMap // ignore: cast_nullable_to_non_nullable
              as VaccineGroupToAntigenMap?,
      cvxToAntigenMap: cvxToAntigenMap == freezed
          ? _value.cvxToAntigenMap
          : cvxToAntigenMap // ignore: cast_nullable_to_non_nullable
              as CvxToAntigenMap?,
      observations: observations == freezed
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as Observations?,
    ));
  }

  @override
  $LiveVirusConflictsCopyWith<$Res>? get liveVirusConflicts {
    if (_value.liveVirusConflicts == null) {
      return null;
    }

    return $LiveVirusConflictsCopyWith<$Res>(_value.liveVirusConflicts!,
        (value) {
      return _then(_value.copyWith(liveVirusConflicts: value));
    });
  }

  @override
  $VaccineGroupsCopyWith<$Res>? get vaccineGroups {
    if (_value.vaccineGroups == null) {
      return null;
    }

    return $VaccineGroupsCopyWith<$Res>(_value.vaccineGroups!, (value) {
      return _then(_value.copyWith(vaccineGroups: value));
    });
  }

  @override
  $VaccineGroupToAntigenMapCopyWith<$Res>? get vaccineGroupToAntigenMap {
    if (_value.vaccineGroupToAntigenMap == null) {
      return null;
    }

    return $VaccineGroupToAntigenMapCopyWith<$Res>(
        _value.vaccineGroupToAntigenMap!, (value) {
      return _then(_value.copyWith(vaccineGroupToAntigenMap: value));
    });
  }

  @override
  $CvxToAntigenMapCopyWith<$Res>? get cvxToAntigenMap {
    if (_value.cvxToAntigenMap == null) {
      return null;
    }

    return $CvxToAntigenMapCopyWith<$Res>(_value.cvxToAntigenMap!, (value) {
      return _then(_value.copyWith(cvxToAntigenMap: value));
    });
  }

  @override
  $ObservationsCopyWith<$Res>? get observations {
    if (_value.observations == null) {
      return null;
    }

    return $ObservationsCopyWith<$Res>(_value.observations!, (value) {
      return _then(_value.copyWith(observations: value));
    });
  }
}

/// @nodoc
abstract class _$ScheduleSupportingDataCopyWith<$Res>
    implements $ScheduleSupportingDataCopyWith<$Res> {
  factory _$ScheduleSupportingDataCopyWith(_ScheduleSupportingData value,
          $Res Function(_ScheduleSupportingData) then) =
      __$ScheduleSupportingDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {LiveVirusConflicts? liveVirusConflicts,
      VaccineGroups? vaccineGroups,
      VaccineGroupToAntigenMap? vaccineGroupToAntigenMap,
      CvxToAntigenMap? cvxToAntigenMap,
      Observations? observations});

  @override
  $LiveVirusConflictsCopyWith<$Res>? get liveVirusConflicts;
  @override
  $VaccineGroupsCopyWith<$Res>? get vaccineGroups;
  @override
  $VaccineGroupToAntigenMapCopyWith<$Res>? get vaccineGroupToAntigenMap;
  @override
  $CvxToAntigenMapCopyWith<$Res>? get cvxToAntigenMap;
  @override
  $ObservationsCopyWith<$Res>? get observations;
}

/// @nodoc
class __$ScheduleSupportingDataCopyWithImpl<$Res>
    extends _$ScheduleSupportingDataCopyWithImpl<$Res>
    implements _$ScheduleSupportingDataCopyWith<$Res> {
  __$ScheduleSupportingDataCopyWithImpl(_ScheduleSupportingData _value,
      $Res Function(_ScheduleSupportingData) _then)
      : super(_value, (v) => _then(v as _ScheduleSupportingData));

  @override
  _ScheduleSupportingData get _value => super._value as _ScheduleSupportingData;

  @override
  $Res call({
    Object? liveVirusConflicts = freezed,
    Object? vaccineGroups = freezed,
    Object? vaccineGroupToAntigenMap = freezed,
    Object? cvxToAntigenMap = freezed,
    Object? observations = freezed,
  }) {
    return _then(_ScheduleSupportingData(
      liveVirusConflicts: liveVirusConflicts == freezed
          ? _value.liveVirusConflicts
          : liveVirusConflicts // ignore: cast_nullable_to_non_nullable
              as LiveVirusConflicts?,
      vaccineGroups: vaccineGroups == freezed
          ? _value.vaccineGroups
          : vaccineGroups // ignore: cast_nullable_to_non_nullable
              as VaccineGroups?,
      vaccineGroupToAntigenMap: vaccineGroupToAntigenMap == freezed
          ? _value.vaccineGroupToAntigenMap
          : vaccineGroupToAntigenMap // ignore: cast_nullable_to_non_nullable
              as VaccineGroupToAntigenMap?,
      cvxToAntigenMap: cvxToAntigenMap == freezed
          ? _value.cvxToAntigenMap
          : cvxToAntigenMap // ignore: cast_nullable_to_non_nullable
              as CvxToAntigenMap?,
      observations: observations == freezed
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as Observations?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleSupportingData extends _ScheduleSupportingData {
  _$_ScheduleSupportingData(
      {this.liveVirusConflicts,
      this.vaccineGroups,
      this.vaccineGroupToAntigenMap,
      this.cvxToAntigenMap,
      this.observations})
      : super._();

  factory _$_ScheduleSupportingData.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleSupportingDataFromJson(json);

  @override
  final LiveVirusConflicts? liveVirusConflicts;
  @override
  final VaccineGroups? vaccineGroups;
  @override
  final VaccineGroupToAntigenMap? vaccineGroupToAntigenMap;
  @override
  final CvxToAntigenMap? cvxToAntigenMap;
  @override
  final Observations? observations;

  @override
  String toString() {
    return 'ScheduleSupportingData(liveVirusConflicts: $liveVirusConflicts, vaccineGroups: $vaccineGroups, vaccineGroupToAntigenMap: $vaccineGroupToAntigenMap, cvxToAntigenMap: $cvxToAntigenMap, observations: $observations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScheduleSupportingData &&
            (identical(other.liveVirusConflicts, liveVirusConflicts) ||
                const DeepCollectionEquality()
                    .equals(other.liveVirusConflicts, liveVirusConflicts)) &&
            (identical(other.vaccineGroups, vaccineGroups) ||
                const DeepCollectionEquality()
                    .equals(other.vaccineGroups, vaccineGroups)) &&
            (identical(
                    other.vaccineGroupToAntigenMap, vaccineGroupToAntigenMap) ||
                const DeepCollectionEquality().equals(
                    other.vaccineGroupToAntigenMap,
                    vaccineGroupToAntigenMap)) &&
            (identical(other.cvxToAntigenMap, cvxToAntigenMap) ||
                const DeepCollectionEquality()
                    .equals(other.cvxToAntigenMap, cvxToAntigenMap)) &&
            (identical(other.observations, observations) ||
                const DeepCollectionEquality()
                    .equals(other.observations, observations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(liveVirusConflicts) ^
      const DeepCollectionEquality().hash(vaccineGroups) ^
      const DeepCollectionEquality().hash(vaccineGroupToAntigenMap) ^
      const DeepCollectionEquality().hash(cvxToAntigenMap) ^
      const DeepCollectionEquality().hash(observations);

  @JsonKey(ignore: true)
  @override
  _$ScheduleSupportingDataCopyWith<_ScheduleSupportingData> get copyWith =>
      __$ScheduleSupportingDataCopyWithImpl<_ScheduleSupportingData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleSupportingDataToJson(this);
  }
}

abstract class _ScheduleSupportingData extends ScheduleSupportingData {
  factory _ScheduleSupportingData(
      {LiveVirusConflicts? liveVirusConflicts,
      VaccineGroups? vaccineGroups,
      VaccineGroupToAntigenMap? vaccineGroupToAntigenMap,
      CvxToAntigenMap? cvxToAntigenMap,
      Observations? observations}) = _$_ScheduleSupportingData;
  _ScheduleSupportingData._() : super._();

  factory _ScheduleSupportingData.fromJson(Map<String, dynamic> json) =
      _$_ScheduleSupportingData.fromJson;

  @override
  LiveVirusConflicts? get liveVirusConflicts =>
      throw _privateConstructorUsedError;
  @override
  VaccineGroups? get vaccineGroups => throw _privateConstructorUsedError;
  @override
  VaccineGroupToAntigenMap? get vaccineGroupToAntigenMap =>
      throw _privateConstructorUsedError;
  @override
  CvxToAntigenMap? get cvxToAntigenMap => throw _privateConstructorUsedError;
  @override
  Observations? get observations => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScheduleSupportingDataCopyWith<_ScheduleSupportingData> get copyWith =>
      throw _privateConstructorUsedError;
}
