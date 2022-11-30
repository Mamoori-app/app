// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wills_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WillsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWills,
    required TResult Function(Will will) deleteWills,
    required TResult Function() restoreWill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWills,
    TResult? Function(Will will)? deleteWills,
    TResult? Function()? restoreWill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWills,
    TResult Function(Will will)? deleteWills,
    TResult Function()? restoreWill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWills value) loadWills,
    required TResult Function(DeleteWill value) deleteWills,
    required TResult Function(RestoreWill value) restoreWill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWills value)? loadWills,
    TResult? Function(DeleteWill value)? deleteWills,
    TResult? Function(RestoreWill value)? restoreWill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWills value)? loadWills,
    TResult Function(DeleteWill value)? deleteWills,
    TResult Function(RestoreWill value)? restoreWill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WillsEventCopyWith<$Res> {
  factory $WillsEventCopyWith(
          WillsEvent value, $Res Function(WillsEvent) then) =
      _$WillsEventCopyWithImpl<$Res, WillsEvent>;
}

/// @nodoc
class _$WillsEventCopyWithImpl<$Res, $Val extends WillsEvent>
    implements $WillsEventCopyWith<$Res> {
  _$WillsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadWillsCopyWith<$Res> {
  factory _$$LoadWillsCopyWith(
          _$LoadWills value, $Res Function(_$LoadWills) then) =
      __$$LoadWillsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadWillsCopyWithImpl<$Res>
    extends _$WillsEventCopyWithImpl<$Res, _$LoadWills>
    implements _$$LoadWillsCopyWith<$Res> {
  __$$LoadWillsCopyWithImpl(
      _$LoadWills _value, $Res Function(_$LoadWills) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadWills implements LoadWills {
  const _$LoadWills();

  @override
  String toString() {
    return 'WillsEvent.loadWills()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadWills);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWills,
    required TResult Function(Will will) deleteWills,
    required TResult Function() restoreWill,
  }) {
    return loadWills();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWills,
    TResult? Function(Will will)? deleteWills,
    TResult? Function()? restoreWill,
  }) {
    return loadWills?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWills,
    TResult Function(Will will)? deleteWills,
    TResult Function()? restoreWill,
    required TResult orElse(),
  }) {
    if (loadWills != null) {
      return loadWills();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWills value) loadWills,
    required TResult Function(DeleteWill value) deleteWills,
    required TResult Function(RestoreWill value) restoreWill,
  }) {
    return loadWills(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWills value)? loadWills,
    TResult? Function(DeleteWill value)? deleteWills,
    TResult? Function(RestoreWill value)? restoreWill,
  }) {
    return loadWills?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWills value)? loadWills,
    TResult Function(DeleteWill value)? deleteWills,
    TResult Function(RestoreWill value)? restoreWill,
    required TResult orElse(),
  }) {
    if (loadWills != null) {
      return loadWills(this);
    }
    return orElse();
  }
}

abstract class LoadWills implements WillsEvent {
  const factory LoadWills() = _$LoadWills;
}

/// @nodoc
abstract class _$$DeleteWillCopyWith<$Res> {
  factory _$$DeleteWillCopyWith(
          _$DeleteWill value, $Res Function(_$DeleteWill) then) =
      __$$DeleteWillCopyWithImpl<$Res>;
  @useResult
  $Res call({Will will});

  $WillCopyWith<$Res> get will;
}

/// @nodoc
class __$$DeleteWillCopyWithImpl<$Res>
    extends _$WillsEventCopyWithImpl<$Res, _$DeleteWill>
    implements _$$DeleteWillCopyWith<$Res> {
  __$$DeleteWillCopyWithImpl(
      _$DeleteWill _value, $Res Function(_$DeleteWill) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? will = null,
  }) {
    return _then(_$DeleteWill(
      null == will
          ? _value.will
          : will // ignore: cast_nullable_to_non_nullable
              as Will,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WillCopyWith<$Res> get will {
    return $WillCopyWith<$Res>(_value.will, (value) {
      return _then(_value.copyWith(will: value));
    });
  }
}

/// @nodoc

class _$DeleteWill implements DeleteWill {
  const _$DeleteWill(this.will);

  @override
  final Will will;

  @override
  String toString() {
    return 'WillsEvent.deleteWills(will: $will)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteWill &&
            (identical(other.will, will) || other.will == will));
  }

  @override
  int get hashCode => Object.hash(runtimeType, will);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteWillCopyWith<_$DeleteWill> get copyWith =>
      __$$DeleteWillCopyWithImpl<_$DeleteWill>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWills,
    required TResult Function(Will will) deleteWills,
    required TResult Function() restoreWill,
  }) {
    return deleteWills(will);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWills,
    TResult? Function(Will will)? deleteWills,
    TResult? Function()? restoreWill,
  }) {
    return deleteWills?.call(will);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWills,
    TResult Function(Will will)? deleteWills,
    TResult Function()? restoreWill,
    required TResult orElse(),
  }) {
    if (deleteWills != null) {
      return deleteWills(will);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWills value) loadWills,
    required TResult Function(DeleteWill value) deleteWills,
    required TResult Function(RestoreWill value) restoreWill,
  }) {
    return deleteWills(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWills value)? loadWills,
    TResult? Function(DeleteWill value)? deleteWills,
    TResult? Function(RestoreWill value)? restoreWill,
  }) {
    return deleteWills?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWills value)? loadWills,
    TResult Function(DeleteWill value)? deleteWills,
    TResult Function(RestoreWill value)? restoreWill,
    required TResult orElse(),
  }) {
    if (deleteWills != null) {
      return deleteWills(this);
    }
    return orElse();
  }
}

abstract class DeleteWill implements WillsEvent {
  const factory DeleteWill(final Will will) = _$DeleteWill;

  Will get will;
  @JsonKey(ignore: true)
  _$$DeleteWillCopyWith<_$DeleteWill> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestoreWillCopyWith<$Res> {
  factory _$$RestoreWillCopyWith(
          _$RestoreWill value, $Res Function(_$RestoreWill) then) =
      __$$RestoreWillCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestoreWillCopyWithImpl<$Res>
    extends _$WillsEventCopyWithImpl<$Res, _$RestoreWill>
    implements _$$RestoreWillCopyWith<$Res> {
  __$$RestoreWillCopyWithImpl(
      _$RestoreWill _value, $Res Function(_$RestoreWill) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RestoreWill implements RestoreWill {
  const _$RestoreWill();

  @override
  String toString() {
    return 'WillsEvent.restoreWill()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RestoreWill);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWills,
    required TResult Function(Will will) deleteWills,
    required TResult Function() restoreWill,
  }) {
    return restoreWill();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWills,
    TResult? Function(Will will)? deleteWills,
    TResult? Function()? restoreWill,
  }) {
    return restoreWill?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWills,
    TResult Function(Will will)? deleteWills,
    TResult Function()? restoreWill,
    required TResult orElse(),
  }) {
    if (restoreWill != null) {
      return restoreWill();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWills value) loadWills,
    required TResult Function(DeleteWill value) deleteWills,
    required TResult Function(RestoreWill value) restoreWill,
  }) {
    return restoreWill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWills value)? loadWills,
    TResult? Function(DeleteWill value)? deleteWills,
    TResult? Function(RestoreWill value)? restoreWill,
  }) {
    return restoreWill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWills value)? loadWills,
    TResult Function(DeleteWill value)? deleteWills,
    TResult Function(RestoreWill value)? restoreWill,
    required TResult orElse(),
  }) {
    if (restoreWill != null) {
      return restoreWill(this);
    }
    return orElse();
  }
}

abstract class RestoreWill implements WillsEvent {
  const factory RestoreWill() = _$RestoreWill;
}
