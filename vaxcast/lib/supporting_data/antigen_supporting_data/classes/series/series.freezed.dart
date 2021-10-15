// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Series _$SeriesFromJson(Map<String, dynamic> json) {
  return _Series.fromJson(json);
}

/// @nodoc
class _$SeriesTearOff {
  const _$SeriesTearOff();

  _Series call(
      {String? seriesName,
      TargetDisease? targetDisease,
      VaccineGroupName? vaccineGroup,
      List<String>? seriesAdminGuidance,
      SeriesType? seriesType,
      EquivalentSeriesGroups? equivalentSeriesGroups,
      List<Gender>? requiredGender,
      SelectSeries? selectSeries,
      List<Indication>? indication,
      List<SeriesDose>? seriesDose}) {
    return _Series(
      seriesName: seriesName,
      targetDisease: targetDisease,
      vaccineGroup: vaccineGroup,
      seriesAdminGuidance: seriesAdminGuidance,
      seriesType: seriesType,
      equivalentSeriesGroups: equivalentSeriesGroups,
      requiredGender: requiredGender,
      selectSeries: selectSeries,
      indication: indication,
      seriesDose: seriesDose,
    );
  }

  Series fromJson(Map<String, Object> json) {
    return Series.fromJson(json);
  }
}

/// @nodoc
const $Series = _$SeriesTearOff();

/// @nodoc
mixin _$Series {
  String? get seriesName => throw _privateConstructorUsedError;
  TargetDisease? get targetDisease => throw _privateConstructorUsedError;
  VaccineGroupName? get vaccineGroup => throw _privateConstructorUsedError;
  List<String>? get seriesAdminGuidance => throw _privateConstructorUsedError;
  SeriesType? get seriesType => throw _privateConstructorUsedError;
  EquivalentSeriesGroups? get equivalentSeriesGroups =>
      throw _privateConstructorUsedError;
  List<Gender>? get requiredGender => throw _privateConstructorUsedError;
  SelectSeries? get selectSeries => throw _privateConstructorUsedError;
  List<Indication>? get indication => throw _privateConstructorUsedError;
  List<SeriesDose>? get seriesDose => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeriesCopyWith<Series> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesCopyWith<$Res> {
  factory $SeriesCopyWith(Series value, $Res Function(Series) then) =
      _$SeriesCopyWithImpl<$Res>;
  $Res call(
      {String? seriesName,
      TargetDisease? targetDisease,
      VaccineGroupName? vaccineGroup,
      List<String>? seriesAdminGuidance,
      SeriesType? seriesType,
      EquivalentSeriesGroups? equivalentSeriesGroups,
      List<Gender>? requiredGender,
      SelectSeries? selectSeries,
      List<Indication>? indication,
      List<SeriesDose>? seriesDose});

  $SelectSeriesCopyWith<$Res>? get selectSeries;
}

/// @nodoc
class _$SeriesCopyWithImpl<$Res> implements $SeriesCopyWith<$Res> {
  _$SeriesCopyWithImpl(this._value, this._then);

  final Series _value;
  // ignore: unused_field
  final $Res Function(Series) _then;

  @override
  $Res call({
    Object? seriesName = freezed,
    Object? targetDisease = freezed,
    Object? vaccineGroup = freezed,
    Object? seriesAdminGuidance = freezed,
    Object? seriesType = freezed,
    Object? equivalentSeriesGroups = freezed,
    Object? requiredGender = freezed,
    Object? selectSeries = freezed,
    Object? indication = freezed,
    Object? seriesDose = freezed,
  }) {
    return _then(_value.copyWith(
      seriesName: seriesName == freezed
          ? _value.seriesName
          : seriesName // ignore: cast_nullable_to_non_nullable
              as String?,
      targetDisease: targetDisease == freezed
          ? _value.targetDisease
          : targetDisease // ignore: cast_nullable_to_non_nullable
              as TargetDisease?,
      vaccineGroup: vaccineGroup == freezed
          ? _value.vaccineGroup
          : vaccineGroup // ignore: cast_nullable_to_non_nullable
              as VaccineGroupName?,
      seriesAdminGuidance: seriesAdminGuidance == freezed
          ? _value.seriesAdminGuidance
          : seriesAdminGuidance // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      seriesType: seriesType == freezed
          ? _value.seriesType
          : seriesType // ignore: cast_nullable_to_non_nullable
              as SeriesType?,
      equivalentSeriesGroups: equivalentSeriesGroups == freezed
          ? _value.equivalentSeriesGroups
          : equivalentSeriesGroups // ignore: cast_nullable_to_non_nullable
              as EquivalentSeriesGroups?,
      requiredGender: requiredGender == freezed
          ? _value.requiredGender
          : requiredGender // ignore: cast_nullable_to_non_nullable
              as List<Gender>?,
      selectSeries: selectSeries == freezed
          ? _value.selectSeries
          : selectSeries // ignore: cast_nullable_to_non_nullable
              as SelectSeries?,
      indication: indication == freezed
          ? _value.indication
          : indication // ignore: cast_nullable_to_non_nullable
              as List<Indication>?,
      seriesDose: seriesDose == freezed
          ? _value.seriesDose
          : seriesDose // ignore: cast_nullable_to_non_nullable
              as List<SeriesDose>?,
    ));
  }

  @override
  $SelectSeriesCopyWith<$Res>? get selectSeries {
    if (_value.selectSeries == null) {
      return null;
    }

    return $SelectSeriesCopyWith<$Res>(_value.selectSeries!, (value) {
      return _then(_value.copyWith(selectSeries: value));
    });
  }
}

/// @nodoc
abstract class _$SeriesCopyWith<$Res> implements $SeriesCopyWith<$Res> {
  factory _$SeriesCopyWith(_Series value, $Res Function(_Series) then) =
      __$SeriesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? seriesName,
      TargetDisease? targetDisease,
      VaccineGroupName? vaccineGroup,
      List<String>? seriesAdminGuidance,
      SeriesType? seriesType,
      EquivalentSeriesGroups? equivalentSeriesGroups,
      List<Gender>? requiredGender,
      SelectSeries? selectSeries,
      List<Indication>? indication,
      List<SeriesDose>? seriesDose});

  @override
  $SelectSeriesCopyWith<$Res>? get selectSeries;
}

/// @nodoc
class __$SeriesCopyWithImpl<$Res> extends _$SeriesCopyWithImpl<$Res>
    implements _$SeriesCopyWith<$Res> {
  __$SeriesCopyWithImpl(_Series _value, $Res Function(_Series) _then)
      : super(_value, (v) => _then(v as _Series));

  @override
  _Series get _value => super._value as _Series;

  @override
  $Res call({
    Object? seriesName = freezed,
    Object? targetDisease = freezed,
    Object? vaccineGroup = freezed,
    Object? seriesAdminGuidance = freezed,
    Object? seriesType = freezed,
    Object? equivalentSeriesGroups = freezed,
    Object? requiredGender = freezed,
    Object? selectSeries = freezed,
    Object? indication = freezed,
    Object? seriesDose = freezed,
  }) {
    return _then(_Series(
      seriesName: seriesName == freezed
          ? _value.seriesName
          : seriesName // ignore: cast_nullable_to_non_nullable
              as String?,
      targetDisease: targetDisease == freezed
          ? _value.targetDisease
          : targetDisease // ignore: cast_nullable_to_non_nullable
              as TargetDisease?,
      vaccineGroup: vaccineGroup == freezed
          ? _value.vaccineGroup
          : vaccineGroup // ignore: cast_nullable_to_non_nullable
              as VaccineGroupName?,
      seriesAdminGuidance: seriesAdminGuidance == freezed
          ? _value.seriesAdminGuidance
          : seriesAdminGuidance // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      seriesType: seriesType == freezed
          ? _value.seriesType
          : seriesType // ignore: cast_nullable_to_non_nullable
              as SeriesType?,
      equivalentSeriesGroups: equivalentSeriesGroups == freezed
          ? _value.equivalentSeriesGroups
          : equivalentSeriesGroups // ignore: cast_nullable_to_non_nullable
              as EquivalentSeriesGroups?,
      requiredGender: requiredGender == freezed
          ? _value.requiredGender
          : requiredGender // ignore: cast_nullable_to_non_nullable
              as List<Gender>?,
      selectSeries: selectSeries == freezed
          ? _value.selectSeries
          : selectSeries // ignore: cast_nullable_to_non_nullable
              as SelectSeries?,
      indication: indication == freezed
          ? _value.indication
          : indication // ignore: cast_nullable_to_non_nullable
              as List<Indication>?,
      seriesDose: seriesDose == freezed
          ? _value.seriesDose
          : seriesDose // ignore: cast_nullable_to_non_nullable
              as List<SeriesDose>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Series extends _Series {
  _$_Series(
      {this.seriesName,
      this.targetDisease,
      this.vaccineGroup,
      this.seriesAdminGuidance,
      this.seriesType,
      this.equivalentSeriesGroups,
      this.requiredGender,
      this.selectSeries,
      this.indication,
      this.seriesDose})
      : super._();

  factory _$_Series.fromJson(Map<String, dynamic> json) =>
      _$$_SeriesFromJson(json);

  @override
  final String? seriesName;
  @override
  final TargetDisease? targetDisease;
  @override
  final VaccineGroupName? vaccineGroup;
  @override
  final List<String>? seriesAdminGuidance;
  @override
  final SeriesType? seriesType;
  @override
  final EquivalentSeriesGroups? equivalentSeriesGroups;
  @override
  final List<Gender>? requiredGender;
  @override
  final SelectSeries? selectSeries;
  @override
  final List<Indication>? indication;
  @override
  final List<SeriesDose>? seriesDose;

  @override
  String toString() {
    return 'Series(seriesName: $seriesName, targetDisease: $targetDisease, vaccineGroup: $vaccineGroup, seriesAdminGuidance: $seriesAdminGuidance, seriesType: $seriesType, equivalentSeriesGroups: $equivalentSeriesGroups, requiredGender: $requiredGender, selectSeries: $selectSeries, indication: $indication, seriesDose: $seriesDose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Series &&
            (identical(other.seriesName, seriesName) ||
                const DeepCollectionEquality()
                    .equals(other.seriesName, seriesName)) &&
            (identical(other.targetDisease, targetDisease) ||
                const DeepCollectionEquality()
                    .equals(other.targetDisease, targetDisease)) &&
            (identical(other.vaccineGroup, vaccineGroup) ||
                const DeepCollectionEquality()
                    .equals(other.vaccineGroup, vaccineGroup)) &&
            (identical(other.seriesAdminGuidance, seriesAdminGuidance) ||
                const DeepCollectionEquality()
                    .equals(other.seriesAdminGuidance, seriesAdminGuidance)) &&
            (identical(other.seriesType, seriesType) ||
                const DeepCollectionEquality()
                    .equals(other.seriesType, seriesType)) &&
            (identical(other.equivalentSeriesGroups, equivalentSeriesGroups) ||
                const DeepCollectionEquality().equals(
                    other.equivalentSeriesGroups, equivalentSeriesGroups)) &&
            (identical(other.requiredGender, requiredGender) ||
                const DeepCollectionEquality()
                    .equals(other.requiredGender, requiredGender)) &&
            (identical(other.selectSeries, selectSeries) ||
                const DeepCollectionEquality()
                    .equals(other.selectSeries, selectSeries)) &&
            (identical(other.indication, indication) ||
                const DeepCollectionEquality()
                    .equals(other.indication, indication)) &&
            (identical(other.seriesDose, seriesDose) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDose, seriesDose)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seriesName) ^
      const DeepCollectionEquality().hash(targetDisease) ^
      const DeepCollectionEquality().hash(vaccineGroup) ^
      const DeepCollectionEquality().hash(seriesAdminGuidance) ^
      const DeepCollectionEquality().hash(seriesType) ^
      const DeepCollectionEquality().hash(equivalentSeriesGroups) ^
      const DeepCollectionEquality().hash(requiredGender) ^
      const DeepCollectionEquality().hash(selectSeries) ^
      const DeepCollectionEquality().hash(indication) ^
      const DeepCollectionEquality().hash(seriesDose);

  @JsonKey(ignore: true)
  @override
  _$SeriesCopyWith<_Series> get copyWith =>
      __$SeriesCopyWithImpl<_Series>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeriesToJson(this);
  }
}

abstract class _Series extends Series {
  factory _Series(
      {String? seriesName,
      TargetDisease? targetDisease,
      VaccineGroupName? vaccineGroup,
      List<String>? seriesAdminGuidance,
      SeriesType? seriesType,
      EquivalentSeriesGroups? equivalentSeriesGroups,
      List<Gender>? requiredGender,
      SelectSeries? selectSeries,
      List<Indication>? indication,
      List<SeriesDose>? seriesDose}) = _$_Series;
  _Series._() : super._();

  factory _Series.fromJson(Map<String, dynamic> json) = _$_Series.fromJson;

  @override
  String? get seriesName => throw _privateConstructorUsedError;
  @override
  TargetDisease? get targetDisease => throw _privateConstructorUsedError;
  @override
  VaccineGroupName? get vaccineGroup => throw _privateConstructorUsedError;
  @override
  List<String>? get seriesAdminGuidance => throw _privateConstructorUsedError;
  @override
  SeriesType? get seriesType => throw _privateConstructorUsedError;
  @override
  EquivalentSeriesGroups? get equivalentSeriesGroups =>
      throw _privateConstructorUsedError;
  @override
  List<Gender>? get requiredGender => throw _privateConstructorUsedError;
  @override
  SelectSeries? get selectSeries => throw _privateConstructorUsedError;
  @override
  List<Indication>? get indication => throw _privateConstructorUsedError;
  @override
  List<SeriesDose>? get seriesDose => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SeriesCopyWith<_Series> get copyWith => throw _privateConstructorUsedError;
}
