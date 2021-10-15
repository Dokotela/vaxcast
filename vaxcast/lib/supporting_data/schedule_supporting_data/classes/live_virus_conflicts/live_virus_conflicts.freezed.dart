// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'live_virus_conflicts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LiveVirusConflicts _$LiveVirusConflictsFromJson(Map<String, dynamic> json) {
  return _LiveVirusConflicts.fromJson(json);
}

/// @nodoc
class _$LiveVirusConflictsTearOff {
  const _$LiveVirusConflictsTearOff();

  _LiveVirusConflicts call({List<LiveVirusConflict>? liveVirusConflict}) {
    return _LiveVirusConflicts(
      liveVirusConflict: liveVirusConflict,
    );
  }

  LiveVirusConflicts fromJson(Map<String, Object> json) {
    return LiveVirusConflicts.fromJson(json);
  }
}

/// @nodoc
const $LiveVirusConflicts = _$LiveVirusConflictsTearOff();

/// @nodoc
mixin _$LiveVirusConflicts {
  List<LiveVirusConflict>? get liveVirusConflict =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveVirusConflictsCopyWith<LiveVirusConflicts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveVirusConflictsCopyWith<$Res> {
  factory $LiveVirusConflictsCopyWith(
          LiveVirusConflicts value, $Res Function(LiveVirusConflicts) then) =
      _$LiveVirusConflictsCopyWithImpl<$Res>;
  $Res call({List<LiveVirusConflict>? liveVirusConflict});
}

/// @nodoc
class _$LiveVirusConflictsCopyWithImpl<$Res>
    implements $LiveVirusConflictsCopyWith<$Res> {
  _$LiveVirusConflictsCopyWithImpl(this._value, this._then);

  final LiveVirusConflicts _value;
  // ignore: unused_field
  final $Res Function(LiveVirusConflicts) _then;

  @override
  $Res call({
    Object? liveVirusConflict = freezed,
  }) {
    return _then(_value.copyWith(
      liveVirusConflict: liveVirusConflict == freezed
          ? _value.liveVirusConflict
          : liveVirusConflict // ignore: cast_nullable_to_non_nullable
              as List<LiveVirusConflict>?,
    ));
  }
}

/// @nodoc
abstract class _$LiveVirusConflictsCopyWith<$Res>
    implements $LiveVirusConflictsCopyWith<$Res> {
  factory _$LiveVirusConflictsCopyWith(
          _LiveVirusConflicts value, $Res Function(_LiveVirusConflicts) then) =
      __$LiveVirusConflictsCopyWithImpl<$Res>;
  @override
  $Res call({List<LiveVirusConflict>? liveVirusConflict});
}

/// @nodoc
class __$LiveVirusConflictsCopyWithImpl<$Res>
    extends _$LiveVirusConflictsCopyWithImpl<$Res>
    implements _$LiveVirusConflictsCopyWith<$Res> {
  __$LiveVirusConflictsCopyWithImpl(
      _LiveVirusConflicts _value, $Res Function(_LiveVirusConflicts) _then)
      : super(_value, (v) => _then(v as _LiveVirusConflicts));

  @override
  _LiveVirusConflicts get _value => super._value as _LiveVirusConflicts;

  @override
  $Res call({
    Object? liveVirusConflict = freezed,
  }) {
    return _then(_LiveVirusConflicts(
      liveVirusConflict: liveVirusConflict == freezed
          ? _value.liveVirusConflict
          : liveVirusConflict // ignore: cast_nullable_to_non_nullable
              as List<LiveVirusConflict>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LiveVirusConflicts extends _LiveVirusConflicts {
  _$_LiveVirusConflicts({this.liveVirusConflict}) : super._();

  factory _$_LiveVirusConflicts.fromJson(Map<String, dynamic> json) =>
      _$$_LiveVirusConflictsFromJson(json);

  @override
  final List<LiveVirusConflict>? liveVirusConflict;

  @override
  String toString() {
    return 'LiveVirusConflicts(liveVirusConflict: $liveVirusConflict)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LiveVirusConflicts &&
            (identical(other.liveVirusConflict, liveVirusConflict) ||
                const DeepCollectionEquality()
                    .equals(other.liveVirusConflict, liveVirusConflict)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(liveVirusConflict);

  @JsonKey(ignore: true)
  @override
  _$LiveVirusConflictsCopyWith<_LiveVirusConflicts> get copyWith =>
      __$LiveVirusConflictsCopyWithImpl<_LiveVirusConflicts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveVirusConflictsToJson(this);
  }
}

abstract class _LiveVirusConflicts extends LiveVirusConflicts {
  factory _LiveVirusConflicts({List<LiveVirusConflict>? liveVirusConflict}) =
      _$_LiveVirusConflicts;
  _LiveVirusConflicts._() : super._();

  factory _LiveVirusConflicts.fromJson(Map<String, dynamic> json) =
      _$_LiveVirusConflicts.fromJson;

  @override
  List<LiveVirusConflict>? get liveVirusConflict =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LiveVirusConflictsCopyWith<_LiveVirusConflicts> get copyWith =>
      throw _privateConstructorUsedError;
}

LiveVirusConflict _$LiveVirusConflictFromJson(Map<String, dynamic> json) {
  return _LiveVirusConflict.fromJson(json);
}

/// @nodoc
class _$LiveVirusConflictTearOff {
  const _$LiveVirusConflictTearOff();

  _LiveVirusConflict call(
      {Vaccine? previous,
      Vaccine? current,
      String? conflictBeginInterval,
      String? minConflictEndInterval,
      String? conflictEndInterval}) {
    return _LiveVirusConflict(
      previous: previous,
      current: current,
      conflictBeginInterval: conflictBeginInterval,
      minConflictEndInterval: minConflictEndInterval,
      conflictEndInterval: conflictEndInterval,
    );
  }

  LiveVirusConflict fromJson(Map<String, Object> json) {
    return LiveVirusConflict.fromJson(json);
  }
}

/// @nodoc
const $LiveVirusConflict = _$LiveVirusConflictTearOff();

/// @nodoc
mixin _$LiveVirusConflict {
  Vaccine? get previous => throw _privateConstructorUsedError;
  Vaccine? get current => throw _privateConstructorUsedError;
  String? get conflictBeginInterval => throw _privateConstructorUsedError;
  String? get minConflictEndInterval => throw _privateConstructorUsedError;
  String? get conflictEndInterval => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveVirusConflictCopyWith<LiveVirusConflict> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveVirusConflictCopyWith<$Res> {
  factory $LiveVirusConflictCopyWith(
          LiveVirusConflict value, $Res Function(LiveVirusConflict) then) =
      _$LiveVirusConflictCopyWithImpl<$Res>;
  $Res call(
      {Vaccine? previous,
      Vaccine? current,
      String? conflictBeginInterval,
      String? minConflictEndInterval,
      String? conflictEndInterval});

  $VaccineCopyWith<$Res>? get previous;
  $VaccineCopyWith<$Res>? get current;
}

/// @nodoc
class _$LiveVirusConflictCopyWithImpl<$Res>
    implements $LiveVirusConflictCopyWith<$Res> {
  _$LiveVirusConflictCopyWithImpl(this._value, this._then);

  final LiveVirusConflict _value;
  // ignore: unused_field
  final $Res Function(LiveVirusConflict) _then;

  @override
  $Res call({
    Object? previous = freezed,
    Object? current = freezed,
    Object? conflictBeginInterval = freezed,
    Object? minConflictEndInterval = freezed,
    Object? conflictEndInterval = freezed,
  }) {
    return _then(_value.copyWith(
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as Vaccine?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Vaccine?,
      conflictBeginInterval: conflictBeginInterval == freezed
          ? _value.conflictBeginInterval
          : conflictBeginInterval // ignore: cast_nullable_to_non_nullable
              as String?,
      minConflictEndInterval: minConflictEndInterval == freezed
          ? _value.minConflictEndInterval
          : minConflictEndInterval // ignore: cast_nullable_to_non_nullable
              as String?,
      conflictEndInterval: conflictEndInterval == freezed
          ? _value.conflictEndInterval
          : conflictEndInterval // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $VaccineCopyWith<$Res>? get previous {
    if (_value.previous == null) {
      return null;
    }

    return $VaccineCopyWith<$Res>(_value.previous!, (value) {
      return _then(_value.copyWith(previous: value));
    });
  }

  @override
  $VaccineCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $VaccineCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value));
    });
  }
}

/// @nodoc
abstract class _$LiveVirusConflictCopyWith<$Res>
    implements $LiveVirusConflictCopyWith<$Res> {
  factory _$LiveVirusConflictCopyWith(
          _LiveVirusConflict value, $Res Function(_LiveVirusConflict) then) =
      __$LiveVirusConflictCopyWithImpl<$Res>;
  @override
  $Res call(
      {Vaccine? previous,
      Vaccine? current,
      String? conflictBeginInterval,
      String? minConflictEndInterval,
      String? conflictEndInterval});

  @override
  $VaccineCopyWith<$Res>? get previous;
  @override
  $VaccineCopyWith<$Res>? get current;
}

/// @nodoc
class __$LiveVirusConflictCopyWithImpl<$Res>
    extends _$LiveVirusConflictCopyWithImpl<$Res>
    implements _$LiveVirusConflictCopyWith<$Res> {
  __$LiveVirusConflictCopyWithImpl(
      _LiveVirusConflict _value, $Res Function(_LiveVirusConflict) _then)
      : super(_value, (v) => _then(v as _LiveVirusConflict));

  @override
  _LiveVirusConflict get _value => super._value as _LiveVirusConflict;

  @override
  $Res call({
    Object? previous = freezed,
    Object? current = freezed,
    Object? conflictBeginInterval = freezed,
    Object? minConflictEndInterval = freezed,
    Object? conflictEndInterval = freezed,
  }) {
    return _then(_LiveVirusConflict(
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as Vaccine?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Vaccine?,
      conflictBeginInterval: conflictBeginInterval == freezed
          ? _value.conflictBeginInterval
          : conflictBeginInterval // ignore: cast_nullable_to_non_nullable
              as String?,
      minConflictEndInterval: minConflictEndInterval == freezed
          ? _value.minConflictEndInterval
          : minConflictEndInterval // ignore: cast_nullable_to_non_nullable
              as String?,
      conflictEndInterval: conflictEndInterval == freezed
          ? _value.conflictEndInterval
          : conflictEndInterval // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LiveVirusConflict extends _LiveVirusConflict {
  _$_LiveVirusConflict(
      {this.previous,
      this.current,
      this.conflictBeginInterval,
      this.minConflictEndInterval,
      this.conflictEndInterval})
      : super._();

  factory _$_LiveVirusConflict.fromJson(Map<String, dynamic> json) =>
      _$$_LiveVirusConflictFromJson(json);

  @override
  final Vaccine? previous;
  @override
  final Vaccine? current;
  @override
  final String? conflictBeginInterval;
  @override
  final String? minConflictEndInterval;
  @override
  final String? conflictEndInterval;

  @override
  String toString() {
    return 'LiveVirusConflict(previous: $previous, current: $current, conflictBeginInterval: $conflictBeginInterval, minConflictEndInterval: $minConflictEndInterval, conflictEndInterval: $conflictEndInterval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LiveVirusConflict &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality()
                    .equals(other.current, current)) &&
            (identical(other.conflictBeginInterval, conflictBeginInterval) ||
                const DeepCollectionEquality().equals(
                    other.conflictBeginInterval, conflictBeginInterval)) &&
            (identical(other.minConflictEndInterval, minConflictEndInterval) ||
                const DeepCollectionEquality().equals(
                    other.minConflictEndInterval, minConflictEndInterval)) &&
            (identical(other.conflictEndInterval, conflictEndInterval) ||
                const DeepCollectionEquality()
                    .equals(other.conflictEndInterval, conflictEndInterval)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(conflictBeginInterval) ^
      const DeepCollectionEquality().hash(minConflictEndInterval) ^
      const DeepCollectionEquality().hash(conflictEndInterval);

  @JsonKey(ignore: true)
  @override
  _$LiveVirusConflictCopyWith<_LiveVirusConflict> get copyWith =>
      __$LiveVirusConflictCopyWithImpl<_LiveVirusConflict>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveVirusConflictToJson(this);
  }
}

abstract class _LiveVirusConflict extends LiveVirusConflict {
  factory _LiveVirusConflict(
      {Vaccine? previous,
      Vaccine? current,
      String? conflictBeginInterval,
      String? minConflictEndInterval,
      String? conflictEndInterval}) = _$_LiveVirusConflict;
  _LiveVirusConflict._() : super._();

  factory _LiveVirusConflict.fromJson(Map<String, dynamic> json) =
      _$_LiveVirusConflict.fromJson;

  @override
  Vaccine? get previous => throw _privateConstructorUsedError;
  @override
  Vaccine? get current => throw _privateConstructorUsedError;
  @override
  String? get conflictBeginInterval => throw _privateConstructorUsedError;
  @override
  String? get minConflictEndInterval => throw _privateConstructorUsedError;
  @override
  String? get conflictEndInterval => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LiveVirusConflictCopyWith<_LiveVirusConflict> get copyWith =>
      throw _privateConstructorUsedError;
}
