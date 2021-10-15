// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seasonal_recommendation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeasonalRecommendation _$SeasonalRecommendationFromJson(
    Map<String, dynamic> json) {
  return _SeasonalRecommendation.fromJson(json);
}

/// @nodoc
class _$SeasonalRecommendationTearOff {
  const _$SeasonalRecommendationTearOff();

  _SeasonalRecommendation call({String? startDate, String? endDate}) {
    return _SeasonalRecommendation(
      startDate: startDate,
      endDate: endDate,
    );
  }

  SeasonalRecommendation fromJson(Map<String, Object> json) {
    return SeasonalRecommendation.fromJson(json);
  }
}

/// @nodoc
const $SeasonalRecommendation = _$SeasonalRecommendationTearOff();

/// @nodoc
mixin _$SeasonalRecommendation {
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonalRecommendationCopyWith<SeasonalRecommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonalRecommendationCopyWith<$Res> {
  factory $SeasonalRecommendationCopyWith(SeasonalRecommendation value,
          $Res Function(SeasonalRecommendation) then) =
      _$SeasonalRecommendationCopyWithImpl<$Res>;
  $Res call({String? startDate, String? endDate});
}

/// @nodoc
class _$SeasonalRecommendationCopyWithImpl<$Res>
    implements $SeasonalRecommendationCopyWith<$Res> {
  _$SeasonalRecommendationCopyWithImpl(this._value, this._then);

  final SeasonalRecommendation _value;
  // ignore: unused_field
  final $Res Function(SeasonalRecommendation) _then;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SeasonalRecommendationCopyWith<$Res>
    implements $SeasonalRecommendationCopyWith<$Res> {
  factory _$SeasonalRecommendationCopyWith(_SeasonalRecommendation value,
          $Res Function(_SeasonalRecommendation) then) =
      __$SeasonalRecommendationCopyWithImpl<$Res>;
  @override
  $Res call({String? startDate, String? endDate});
}

/// @nodoc
class __$SeasonalRecommendationCopyWithImpl<$Res>
    extends _$SeasonalRecommendationCopyWithImpl<$Res>
    implements _$SeasonalRecommendationCopyWith<$Res> {
  __$SeasonalRecommendationCopyWithImpl(_SeasonalRecommendation _value,
      $Res Function(_SeasonalRecommendation) _then)
      : super(_value, (v) => _then(v as _SeasonalRecommendation));

  @override
  _SeasonalRecommendation get _value => super._value as _SeasonalRecommendation;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_SeasonalRecommendation(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeasonalRecommendation implements _SeasonalRecommendation {
  _$_SeasonalRecommendation({this.startDate, this.endDate});

  factory _$_SeasonalRecommendation.fromJson(Map<String, dynamic> json) =>
      _$$_SeasonalRecommendationFromJson(json);

  @override
  final String? startDate;
  @override
  final String? endDate;

  @override
  String toString() {
    return 'SeasonalRecommendation(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeasonalRecommendation &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(other.endDate, endDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate);

  @JsonKey(ignore: true)
  @override
  _$SeasonalRecommendationCopyWith<_SeasonalRecommendation> get copyWith =>
      __$SeasonalRecommendationCopyWithImpl<_SeasonalRecommendation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeasonalRecommendationToJson(this);
  }
}

abstract class _SeasonalRecommendation implements SeasonalRecommendation {
  factory _SeasonalRecommendation({String? startDate, String? endDate}) =
      _$_SeasonalRecommendation;

  factory _SeasonalRecommendation.fromJson(Map<String, dynamic> json) =
      _$_SeasonalRecommendation.fromJson;

  @override
  String? get startDate => throw _privateConstructorUsedError;
  @override
  String? get endDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SeasonalRecommendationCopyWith<_SeasonalRecommendation> get copyWith =>
      throw _privateConstructorUsedError;
}
