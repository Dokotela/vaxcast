// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'select_series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SelectSeries _$SelectSeriesFromJson(Map<String, dynamic> json) {
  return _SelectSeries.fromJson(json);
}

/// @nodoc
class _$SelectSeriesTearOff {
  const _$SelectSeriesTearOff();

// ignore: unused_element
  _SelectSeries call(
      {Binary defaultSeries,
      Binary productPath,
      SeriesGroupName seriesGroupName,
      SeriesGroup seriesGroup,
      SeriesPriority seriesPriority,
      SeriesPreference seriesPreference,
      String minAgeToStart,
      String maxAgeToStart}) {
    return _SelectSeries(
      defaultSeries: defaultSeries,
      productPath: productPath,
      seriesGroupName: seriesGroupName,
      seriesGroup: seriesGroup,
      seriesPriority: seriesPriority,
      seriesPreference: seriesPreference,
      minAgeToStart: minAgeToStart,
      maxAgeToStart: maxAgeToStart,
    );
  }

// ignore: unused_element
  SelectSeries fromJson(Map<String, Object> json) {
    return SelectSeries.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SelectSeries = _$SelectSeriesTearOff();

/// @nodoc
mixin _$SelectSeries {
  Binary get defaultSeries;
  Binary get productPath;
  SeriesGroupName get seriesGroupName;
  SeriesGroup get seriesGroup;
  SeriesPriority get seriesPriority;
  SeriesPreference get seriesPreference;
  String get minAgeToStart;
  String get maxAgeToStart;

  Map<String, dynamic> toJson();
  $SelectSeriesCopyWith<SelectSeries> get copyWith;
}

/// @nodoc
abstract class $SelectSeriesCopyWith<$Res> {
  factory $SelectSeriesCopyWith(
          SelectSeries value, $Res Function(SelectSeries) then) =
      _$SelectSeriesCopyWithImpl<$Res>;
  $Res call(
      {Binary defaultSeries,
      Binary productPath,
      SeriesGroupName seriesGroupName,
      SeriesGroup seriesGroup,
      SeriesPriority seriesPriority,
      SeriesPreference seriesPreference,
      String minAgeToStart,
      String maxAgeToStart});
}

/// @nodoc
class _$SelectSeriesCopyWithImpl<$Res> implements $SelectSeriesCopyWith<$Res> {
  _$SelectSeriesCopyWithImpl(this._value, this._then);

  final SelectSeries _value;
  // ignore: unused_field
  final $Res Function(SelectSeries) _then;

  @override
  $Res call({
    Object defaultSeries = freezed,
    Object productPath = freezed,
    Object seriesGroupName = freezed,
    Object seriesGroup = freezed,
    Object seriesPriority = freezed,
    Object seriesPreference = freezed,
    Object minAgeToStart = freezed,
    Object maxAgeToStart = freezed,
  }) {
    return _then(_value.copyWith(
      defaultSeries: defaultSeries == freezed
          ? _value.defaultSeries
          : defaultSeries as Binary,
      productPath:
          productPath == freezed ? _value.productPath : productPath as Binary,
      seriesGroupName: seriesGroupName == freezed
          ? _value.seriesGroupName
          : seriesGroupName as SeriesGroupName,
      seriesGroup: seriesGroup == freezed
          ? _value.seriesGroup
          : seriesGroup as SeriesGroup,
      seriesPriority: seriesPriority == freezed
          ? _value.seriesPriority
          : seriesPriority as SeriesPriority,
      seriesPreference: seriesPreference == freezed
          ? _value.seriesPreference
          : seriesPreference as SeriesPreference,
      minAgeToStart: minAgeToStart == freezed
          ? _value.minAgeToStart
          : minAgeToStart as String,
      maxAgeToStart: maxAgeToStart == freezed
          ? _value.maxAgeToStart
          : maxAgeToStart as String,
    ));
  }
}

/// @nodoc
abstract class _$SelectSeriesCopyWith<$Res>
    implements $SelectSeriesCopyWith<$Res> {
  factory _$SelectSeriesCopyWith(
          _SelectSeries value, $Res Function(_SelectSeries) then) =
      __$SelectSeriesCopyWithImpl<$Res>;
  @override
  $Res call(
      {Binary defaultSeries,
      Binary productPath,
      SeriesGroupName seriesGroupName,
      SeriesGroup seriesGroup,
      SeriesPriority seriesPriority,
      SeriesPreference seriesPreference,
      String minAgeToStart,
      String maxAgeToStart});
}

/// @nodoc
class __$SelectSeriesCopyWithImpl<$Res> extends _$SelectSeriesCopyWithImpl<$Res>
    implements _$SelectSeriesCopyWith<$Res> {
  __$SelectSeriesCopyWithImpl(
      _SelectSeries _value, $Res Function(_SelectSeries) _then)
      : super(_value, (v) => _then(v as _SelectSeries));

  @override
  _SelectSeries get _value => super._value as _SelectSeries;

  @override
  $Res call({
    Object defaultSeries = freezed,
    Object productPath = freezed,
    Object seriesGroupName = freezed,
    Object seriesGroup = freezed,
    Object seriesPriority = freezed,
    Object seriesPreference = freezed,
    Object minAgeToStart = freezed,
    Object maxAgeToStart = freezed,
  }) {
    return _then(_SelectSeries(
      defaultSeries: defaultSeries == freezed
          ? _value.defaultSeries
          : defaultSeries as Binary,
      productPath:
          productPath == freezed ? _value.productPath : productPath as Binary,
      seriesGroupName: seriesGroupName == freezed
          ? _value.seriesGroupName
          : seriesGroupName as SeriesGroupName,
      seriesGroup: seriesGroup == freezed
          ? _value.seriesGroup
          : seriesGroup as SeriesGroup,
      seriesPriority: seriesPriority == freezed
          ? _value.seriesPriority
          : seriesPriority as SeriesPriority,
      seriesPreference: seriesPreference == freezed
          ? _value.seriesPreference
          : seriesPreference as SeriesPreference,
      minAgeToStart: minAgeToStart == freezed
          ? _value.minAgeToStart
          : minAgeToStart as String,
      maxAgeToStart: maxAgeToStart == freezed
          ? _value.maxAgeToStart
          : maxAgeToStart as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SelectSeries implements _SelectSeries {
  _$_SelectSeries(
      {this.defaultSeries,
      this.productPath,
      this.seriesGroupName,
      this.seriesGroup,
      this.seriesPriority,
      this.seriesPreference,
      this.minAgeToStart,
      this.maxAgeToStart});

  factory _$_SelectSeries.fromJson(Map<String, dynamic> json) =>
      _$_$_SelectSeriesFromJson(json);

  @override
  final Binary defaultSeries;
  @override
  final Binary productPath;
  @override
  final SeriesGroupName seriesGroupName;
  @override
  final SeriesGroup seriesGroup;
  @override
  final SeriesPriority seriesPriority;
  @override
  final SeriesPreference seriesPreference;
  @override
  final String minAgeToStart;
  @override
  final String maxAgeToStart;

  @override
  String toString() {
    return 'SelectSeries(defaultSeries: $defaultSeries, productPath: $productPath, seriesGroupName: $seriesGroupName, seriesGroup: $seriesGroup, seriesPriority: $seriesPriority, seriesPreference: $seriesPreference, minAgeToStart: $minAgeToStart, maxAgeToStart: $maxAgeToStart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectSeries &&
            (identical(other.defaultSeries, defaultSeries) ||
                const DeepCollectionEquality()
                    .equals(other.defaultSeries, defaultSeries)) &&
            (identical(other.productPath, productPath) ||
                const DeepCollectionEquality()
                    .equals(other.productPath, productPath)) &&
            (identical(other.seriesGroupName, seriesGroupName) ||
                const DeepCollectionEquality()
                    .equals(other.seriesGroupName, seriesGroupName)) &&
            (identical(other.seriesGroup, seriesGroup) ||
                const DeepCollectionEquality()
                    .equals(other.seriesGroup, seriesGroup)) &&
            (identical(other.seriesPriority, seriesPriority) ||
                const DeepCollectionEquality()
                    .equals(other.seriesPriority, seriesPriority)) &&
            (identical(other.seriesPreference, seriesPreference) ||
                const DeepCollectionEquality()
                    .equals(other.seriesPreference, seriesPreference)) &&
            (identical(other.minAgeToStart, minAgeToStart) ||
                const DeepCollectionEquality()
                    .equals(other.minAgeToStart, minAgeToStart)) &&
            (identical(other.maxAgeToStart, maxAgeToStart) ||
                const DeepCollectionEquality()
                    .equals(other.maxAgeToStart, maxAgeToStart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(defaultSeries) ^
      const DeepCollectionEquality().hash(productPath) ^
      const DeepCollectionEquality().hash(seriesGroupName) ^
      const DeepCollectionEquality().hash(seriesGroup) ^
      const DeepCollectionEquality().hash(seriesPriority) ^
      const DeepCollectionEquality().hash(seriesPreference) ^
      const DeepCollectionEquality().hash(minAgeToStart) ^
      const DeepCollectionEquality().hash(maxAgeToStart);

  @override
  _$SelectSeriesCopyWith<_SelectSeries> get copyWith =>
      __$SelectSeriesCopyWithImpl<_SelectSeries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SelectSeriesToJson(this);
  }
}

abstract class _SelectSeries implements SelectSeries {
  factory _SelectSeries(
      {Binary defaultSeries,
      Binary productPath,
      SeriesGroupName seriesGroupName,
      SeriesGroup seriesGroup,
      SeriesPriority seriesPriority,
      SeriesPreference seriesPreference,
      String minAgeToStart,
      String maxAgeToStart}) = _$_SelectSeries;

  factory _SelectSeries.fromJson(Map<String, dynamic> json) =
      _$_SelectSeries.fromJson;

  @override
  Binary get defaultSeries;
  @override
  Binary get productPath;
  @override
  SeriesGroupName get seriesGroupName;
  @override
  SeriesGroup get seriesGroup;
  @override
  SeriesPriority get seriesPriority;
  @override
  SeriesPreference get seriesPreference;
  @override
  String get minAgeToStart;
  @override
  String get maxAgeToStart;
  @override
  _$SelectSeriesCopyWith<_SelectSeries> get copyWith;
}
