// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'conditional_skip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ConditionalSkip _$ConditionalSkipFromJson(Map<String, dynamic> json) {
  return _ConditionalSkip.fromJson(json);
}

class _$ConditionalSkipTearOff {
  const _$ConditionalSkipTearOff();

// ignore: unused_element
  _ConditionalSkip call(
      {SkipContext context,
      String setLogic,
      @JsonKey(name: 'set') List<VaxSet> set_}) {
    return _ConditionalSkip(
      context: context,
      setLogic: setLogic,
      set_: set_,
    );
  }
}

// ignore: unused_element
const $ConditionalSkip = _$ConditionalSkipTearOff();

mixin _$ConditionalSkip {
  SkipContext get context;
  String get setLogic;
  @JsonKey(name: 'set')
  List<VaxSet> get set_;

  Map<String, dynamic> toJson();
  $ConditionalSkipCopyWith<ConditionalSkip> get copyWith;
}

abstract class $ConditionalSkipCopyWith<$Res> {
  factory $ConditionalSkipCopyWith(
          ConditionalSkip value, $Res Function(ConditionalSkip) then) =
      _$ConditionalSkipCopyWithImpl<$Res>;
  $Res call(
      {SkipContext context,
      String setLogic,
      @JsonKey(name: 'set') List<VaxSet> set_});
}

class _$ConditionalSkipCopyWithImpl<$Res>
    implements $ConditionalSkipCopyWith<$Res> {
  _$ConditionalSkipCopyWithImpl(this._value, this._then);

  final ConditionalSkip _value;
  // ignore: unused_field
  final $Res Function(ConditionalSkip) _then;

  @override
  $Res call({
    Object context = freezed,
    Object setLogic = freezed,
    Object set_ = freezed,
  }) {
    return _then(_value.copyWith(
      context: context == freezed ? _value.context : context as SkipContext,
      setLogic: setLogic == freezed ? _value.setLogic : setLogic as String,
      set_: set_ == freezed ? _value.set_ : set_ as List<VaxSet>,
    ));
  }
}

abstract class _$ConditionalSkipCopyWith<$Res>
    implements $ConditionalSkipCopyWith<$Res> {
  factory _$ConditionalSkipCopyWith(
          _ConditionalSkip value, $Res Function(_ConditionalSkip) then) =
      __$ConditionalSkipCopyWithImpl<$Res>;
  @override
  $Res call(
      {SkipContext context,
      String setLogic,
      @JsonKey(name: 'set') List<VaxSet> set_});
}

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
    Object context = freezed,
    Object setLogic = freezed,
    Object set_ = freezed,
  }) {
    return _then(_ConditionalSkip(
      context: context == freezed ? _value.context : context as SkipContext,
      setLogic: setLogic == freezed ? _value.setLogic : setLogic as String,
      set_: set_ == freezed ? _value.set_ : set_ as List<VaxSet>,
    ));
  }
}

@JsonSerializable()
class _$_ConditionalSkip implements _ConditionalSkip {
  _$_ConditionalSkip(
      {this.context, this.setLogic, @JsonKey(name: 'set') this.set_});

  factory _$_ConditionalSkip.fromJson(Map<String, dynamic> json) =>
      _$_$_ConditionalSkipFromJson(json);

  @override
  final SkipContext context;
  @override
  final String setLogic;
  @override
  @JsonKey(name: 'set')
  final List<VaxSet> set_;

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

  @override
  _$ConditionalSkipCopyWith<_ConditionalSkip> get copyWith =>
      __$ConditionalSkipCopyWithImpl<_ConditionalSkip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConditionalSkipToJson(this);
  }
}

abstract class _ConditionalSkip implements ConditionalSkip {
  factory _ConditionalSkip(
      {SkipContext context,
      String setLogic,
      @JsonKey(name: 'set') List<VaxSet> set_}) = _$_ConditionalSkip;

  factory _ConditionalSkip.fromJson(Map<String, dynamic> json) =
      _$_ConditionalSkip.fromJson;

  @override
  SkipContext get context;
  @override
  String get setLogic;
  @override
  @JsonKey(name: 'set')
  List<VaxSet> get set_;
  @override
  _$ConditionalSkipCopyWith<_ConditionalSkip> get copyWith;
}
