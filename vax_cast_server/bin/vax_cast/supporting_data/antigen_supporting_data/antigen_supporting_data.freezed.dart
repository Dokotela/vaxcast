// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'antigen_supporting_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AntigenSupportingData _$AntigenSupportingDataFromJson(
    Map<String, dynamic> json) {
  return _AntigenSupportingData.fromJson(json);
}

/// @nodoc
class _$AntigenSupportingDataTearOff {
  const _$AntigenSupportingDataTearOff();

  _AntigenSupportingData call(
      {Immunity? immunity,
      Contraindications? contraindications,
      List<Series>? series}) {
    return _AntigenSupportingData(
      immunity: immunity,
      contraindications: contraindications,
      series: series,
    );
  }

  AntigenSupportingData fromJson(Map<String, Object> json) {
    return AntigenSupportingData.fromJson(json);
  }
}

/// @nodoc
const $AntigenSupportingData = _$AntigenSupportingDataTearOff();

/// @nodoc
mixin _$AntigenSupportingData {
  Immunity? get immunity => throw _privateConstructorUsedError;
  Contraindications? get contraindications =>
      throw _privateConstructorUsedError;
  List<Series>? get series => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AntigenSupportingDataCopyWith<AntigenSupportingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AntigenSupportingDataCopyWith<$Res> {
  factory $AntigenSupportingDataCopyWith(AntigenSupportingData value,
          $Res Function(AntigenSupportingData) then) =
      _$AntigenSupportingDataCopyWithImpl<$Res>;
  $Res call(
      {Immunity? immunity,
      Contraindications? contraindications,
      List<Series>? series});

  $ImmunityCopyWith<$Res>? get immunity;
  $ContraindicationsCopyWith<$Res>? get contraindications;
}

/// @nodoc
class _$AntigenSupportingDataCopyWithImpl<$Res>
    implements $AntigenSupportingDataCopyWith<$Res> {
  _$AntigenSupportingDataCopyWithImpl(this._value, this._then);

  final AntigenSupportingData _value;
  // ignore: unused_field
  final $Res Function(AntigenSupportingData) _then;

  @override
  $Res call({
    Object? immunity = freezed,
    Object? contraindications = freezed,
    Object? series = freezed,
  }) {
    return _then(_value.copyWith(
      immunity: immunity == freezed
          ? _value.immunity
          : immunity // ignore: cast_nullable_to_non_nullable
              as Immunity?,
      contraindications: contraindications == freezed
          ? _value.contraindications
          : contraindications // ignore: cast_nullable_to_non_nullable
              as Contraindications?,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as List<Series>?,
    ));
  }

  @override
  $ImmunityCopyWith<$Res>? get immunity {
    if (_value.immunity == null) {
      return null;
    }

    return $ImmunityCopyWith<$Res>(_value.immunity!, (value) {
      return _then(_value.copyWith(immunity: value));
    });
  }

  @override
  $ContraindicationsCopyWith<$Res>? get contraindications {
    if (_value.contraindications == null) {
      return null;
    }

    return $ContraindicationsCopyWith<$Res>(_value.contraindications!, (value) {
      return _then(_value.copyWith(contraindications: value));
    });
  }
}

/// @nodoc
abstract class _$AntigenSupportingDataCopyWith<$Res>
    implements $AntigenSupportingDataCopyWith<$Res> {
  factory _$AntigenSupportingDataCopyWith(_AntigenSupportingData value,
          $Res Function(_AntigenSupportingData) then) =
      __$AntigenSupportingDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {Immunity? immunity,
      Contraindications? contraindications,
      List<Series>? series});

  @override
  $ImmunityCopyWith<$Res>? get immunity;
  @override
  $ContraindicationsCopyWith<$Res>? get contraindications;
}

/// @nodoc
class __$AntigenSupportingDataCopyWithImpl<$Res>
    extends _$AntigenSupportingDataCopyWithImpl<$Res>
    implements _$AntigenSupportingDataCopyWith<$Res> {
  __$AntigenSupportingDataCopyWithImpl(_AntigenSupportingData _value,
      $Res Function(_AntigenSupportingData) _then)
      : super(_value, (v) => _then(v as _AntigenSupportingData));

  @override
  _AntigenSupportingData get _value => super._value as _AntigenSupportingData;

  @override
  $Res call({
    Object? immunity = freezed,
    Object? contraindications = freezed,
    Object? series = freezed,
  }) {
    return _then(_AntigenSupportingData(
      immunity: immunity == freezed
          ? _value.immunity
          : immunity // ignore: cast_nullable_to_non_nullable
              as Immunity?,
      contraindications: contraindications == freezed
          ? _value.contraindications
          : contraindications // ignore: cast_nullable_to_non_nullable
              as Contraindications?,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as List<Series>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AntigenSupportingData implements _AntigenSupportingData {
  _$_AntigenSupportingData(
      {this.immunity, this.contraindications, this.series});

  factory _$_AntigenSupportingData.fromJson(Map<String, dynamic> json) =>
      _$_$_AntigenSupportingDataFromJson(json);

  @override
  final Immunity? immunity;
  @override
  final Contraindications? contraindications;
  @override
  final List<Series>? series;

  @override
  String toString() {
    return 'AntigenSupportingData(immunity: $immunity, contraindications: $contraindications, series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AntigenSupportingData &&
            (identical(other.immunity, immunity) ||
                const DeepCollectionEquality()
                    .equals(other.immunity, immunity)) &&
            (identical(other.contraindications, contraindications) ||
                const DeepCollectionEquality()
                    .equals(other.contraindications, contraindications)) &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(immunity) ^
      const DeepCollectionEquality().hash(contraindications) ^
      const DeepCollectionEquality().hash(series);

  @JsonKey(ignore: true)
  @override
  _$AntigenSupportingDataCopyWith<_AntigenSupportingData> get copyWith =>
      __$AntigenSupportingDataCopyWithImpl<_AntigenSupportingData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AntigenSupportingDataToJson(this);
  }
}

abstract class _AntigenSupportingData implements AntigenSupportingData {
  factory _AntigenSupportingData(
      {Immunity? immunity,
      Contraindications? contraindications,
      List<Series>? series}) = _$_AntigenSupportingData;

  factory _AntigenSupportingData.fromJson(Map<String, dynamic> json) =
      _$_AntigenSupportingData.fromJson;

  @override
  Immunity? get immunity => throw _privateConstructorUsedError;
  @override
  Contraindications? get contraindications =>
      throw _privateConstructorUsedError;
  @override
  List<Series>? get series => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AntigenSupportingDataCopyWith<_AntigenSupportingData> get copyWith =>
      throw _privateConstructorUsedError;
}
