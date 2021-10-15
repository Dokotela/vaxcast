// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'conditional_skip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConditionalSkip _$ConditionalSkipFromJson(Map<String, dynamic> json) {
  return _ConditionalSkip.fromJson(json);
}

/// @nodoc
class _$ConditionalSkipTearOff {
  const _$ConditionalSkipTearOff();

  _ConditionalSkip call(
      {SkipContext? context,
      String? setLogic,
      @JsonKey(name: 'set') List<VaxSet>? set_}) {
    return _ConditionalSkip(
      context: context,
      setLogic: setLogic,
      set_: set_,
    );
  }

  ConditionalSkip fromJson(Map<String, Object> json) {
    return ConditionalSkip.fromJson(json);
  }
}

/// @nodoc
const $ConditionalSkip = _$ConditionalSkipTearOff();

/// @nodoc
mixin _$ConditionalSkip {
  SkipContext? get context => throw _privateConstructorUsedError;
  String? get setLogic => throw _privateConstructorUsedError;
  @JsonKey(name: 'set')
  List<VaxSet>? get set_ => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionalSkipCopyWith<ConditionalSkip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionalSkipCopyWith<$Res> {
  factory $ConditionalSkipCopyWith(
          ConditionalSkip value, $Res Function(ConditionalSkip) then) =
      _$ConditionalSkipCopyWithImpl<$Res>;
  $Res call(
      {SkipContext? context,
      String? setLogic,
      @JsonKey(name: 'set') List<VaxSet>? set_});
}

/// @nodoc
class _$ConditionalSkipCopyWithImpl<$Res>
    implements $ConditionalSkipCopyWith<$Res> {
  _$ConditionalSkipCopyWithImpl(this._value, this._then);

  final ConditionalSkip _value;
  // ignore: unused_field
  final $Res Function(ConditionalSkip) _then;

  @override
  $Res call({
    Object? context = freezed,
    Object? setLogic = freezed,
    Object? set_ = freezed,
  }) {
    return _then(_value.copyWith(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as SkipContext?,
      setLogic: setLogic == freezed
          ? _value.setLogic
          : setLogic // ignore: cast_nullable_to_non_nullable
              as String?,
      set_: set_ == freezed
          ? _value.set_
          : set_ // ignore: cast_nullable_to_non_nullable
              as List<VaxSet>?,
    ));
  }
}

/// @nodoc
abstract class _$ConditionalSkipCopyWith<$Res>
    implements $ConditionalSkipCopyWith<$Res> {
  factory _$ConditionalSkipCopyWith(
          _ConditionalSkip value, $Res Function(_ConditionalSkip) then) =
      __$ConditionalSkipCopyWithImpl<$Res>;
  @override
  $Res call(
      {SkipContext? context,
      String? setLogic,
      @JsonKey(name: 'set') List<VaxSet>? set_});
}

/// @nodoc
class __$ConditionalSkipCopyWithImpl<$Res>
    extends _$ConditionalSkipCopyWithImpl<$Res>
    implements _$ConditionalSkipCopyWith<$Res> {
  __$ConditionalSkipCopyWithImpl(
      _ConditionalSkip _value, $Res Function(_ConditionalSkip) _then)
      : super(_value, (v) => _then(v as _ConditionalSkip));

  @override
  _ConditionalSkip get _value => super._value as _ConditionalSkip;

  @override
  $Res call({
    Object? context = freezed,
    Object? setLogic = freezed,
    Object? set_ = freezed,
  }) {
    return _then(_ConditionalSkip(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as SkipContext?,
      setLogic: setLogic == freezed
          ? _value.setLogic
          : setLogic // ignore: cast_nullable_to_non_nullable
              as String?,
      set_: set_ == freezed
          ? _value.set_
          : set_ // ignore: cast_nullable_to_non_nullable
              as List<VaxSet>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConditionalSkip implements _ConditionalSkip {
  _$_ConditionalSkip(
      {this.context, this.setLogic, @JsonKey(name: 'set') this.set_});

  factory _$_ConditionalSkip.fromJson(Map<String, dynamic> json) =>
      _$$_ConditionalSkipFromJson(json);

  @override
  final SkipContext? context;
  @override
  final String? setLogic;
  @override
  @JsonKey(name: 'set')
  final List<VaxSet>? set_;

  @override
  String toString() {
    return 'ConditionalSkip(context: $context, setLogic: $setLogic, set_: $set_)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConditionalSkip &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.setLogic, setLogic) ||
                const DeepCollectionEquality()
                    .equals(other.setLogic, setLogic)) &&
            (identical(other.set_, set_) ||
                const DeepCollectionEquality().equals(other.set_, set_)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(setLogic) ^
      const DeepCollectionEquality().hash(set_);

  @JsonKey(ignore: true)
  @override
  _$ConditionalSkipCopyWith<_ConditionalSkip> get copyWith =>
      __$ConditionalSkipCopyWithImpl<_ConditionalSkip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConditionalSkipToJson(this);
  }
}

abstract class _ConditionalSkip implements ConditionalSkip {
  factory _ConditionalSkip(
      {SkipContext? context,
      String? setLogic,
      @JsonKey(name: 'set') List<VaxSet>? set_}) = _$_ConditionalSkip;

  factory _ConditionalSkip.fromJson(Map<String, dynamic> json) =
      _$_ConditionalSkip.fromJson;

  @override
  SkipContext? get context => throw _privateConstructorUsedError;
  @override
  String? get setLogic => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'set')
  List<VaxSet>? get set_ => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConditionalSkipCopyWith<_ConditionalSkip> get copyWith =>
      throw _privateConstructorUsedError;
}
