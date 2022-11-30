// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wills_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WillsState _$WillsStateFromJson(Map<String, dynamic> json) {
  return _WillsState.fromJson(json);
}

/// @nodoc
mixin _$WillsState {
  List<Will> get will => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WillsStateCopyWith<WillsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WillsStateCopyWith<$Res> {
  factory $WillsStateCopyWith(
          WillsState value, $Res Function(WillsState) then) =
      _$WillsStateCopyWithImpl<$Res, WillsState>;
  @useResult
  $Res call({List<Will> will});
}

/// @nodoc
class _$WillsStateCopyWithImpl<$Res, $Val extends WillsState>
    implements $WillsStateCopyWith<$Res> {
  _$WillsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? will = null,
  }) {
    return _then(_value.copyWith(
      will: null == will
          ? _value.will
          : will // ignore: cast_nullable_to_non_nullable
              as List<Will>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WillsStateCopyWith<$Res>
    implements $WillsStateCopyWith<$Res> {
  factory _$$_WillsStateCopyWith(
          _$_WillsState value, $Res Function(_$_WillsState) then) =
      __$$_WillsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Will> will});
}

/// @nodoc
class __$$_WillsStateCopyWithImpl<$Res>
    extends _$WillsStateCopyWithImpl<$Res, _$_WillsState>
    implements _$$_WillsStateCopyWith<$Res> {
  __$$_WillsStateCopyWithImpl(
      _$_WillsState _value, $Res Function(_$_WillsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? will = null,
  }) {
    return _then(_$_WillsState(
      will: null == will
          ? _value._will
          : will // ignore: cast_nullable_to_non_nullable
              as List<Will>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WillsState implements _WillsState {
  _$_WillsState({required final List<Will> will}) : _will = will;

  factory _$_WillsState.fromJson(Map<String, dynamic> json) =>
      _$$_WillsStateFromJson(json);

  final List<Will> _will;
  @override
  List<Will> get will {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_will);
  }

  @override
  String toString() {
    return 'WillsState(will: $will)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WillsState &&
            const DeepCollectionEquality().equals(other._will, _will));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_will));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WillsStateCopyWith<_$_WillsState> get copyWith =>
      __$$_WillsStateCopyWithImpl<_$_WillsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WillsStateToJson(
      this,
    );
  }
}

abstract class _WillsState implements WillsState {
  factory _WillsState({required final List<Will> will}) = _$_WillsState;

  factory _WillsState.fromJson(Map<String, dynamic> json) =
      _$_WillsState.fromJson;

  @override
  List<Will> get will;
  @override
  @JsonKey(ignore: true)
  _$$_WillsStateCopyWith<_$_WillsState> get copyWith =>
      throw _privateConstructorUsedError;
}
