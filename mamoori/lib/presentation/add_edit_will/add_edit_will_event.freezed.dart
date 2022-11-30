// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_edit_will_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddEditWillEvent {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id, String title, String content) saveWill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id, String title, String content)? saveWill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id, String title, String content)? saveWill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveWill value) saveWill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveWill value)? saveWill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveWill value)? saveWill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddEditWillEventCopyWith<AddEditWillEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditWillEventCopyWith<$Res> {
  factory $AddEditWillEventCopyWith(
          AddEditWillEvent value, $Res Function(AddEditWillEvent) then) =
      _$AddEditWillEventCopyWithImpl<$Res, AddEditWillEvent>;
  @useResult
  $Res call({int? id, String title, String content});
}

/// @nodoc
class _$AddEditWillEventCopyWithImpl<$Res, $Val extends AddEditWillEvent>
    implements $AddEditWillEventCopyWith<$Res> {
  _$AddEditWillEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveWillCopyWith<$Res>
    implements $AddEditWillEventCopyWith<$Res> {
  factory _$$SaveWillCopyWith(
          _$SaveWill value, $Res Function(_$SaveWill) then) =
      __$$SaveWillCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String title, String content});
}

/// @nodoc
class __$$SaveWillCopyWithImpl<$Res>
    extends _$AddEditWillEventCopyWithImpl<$Res, _$SaveWill>
    implements _$$SaveWillCopyWith<$Res> {
  __$$SaveWillCopyWithImpl(_$SaveWill _value, $Res Function(_$SaveWill) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$SaveWill(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveWill implements SaveWill {
  const _$SaveWill(this.id, this.title, this.content);

  @override
  final int? id;
  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'AddEditWillEvent.saveWill(id: $id, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveWill &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveWillCopyWith<_$SaveWill> get copyWith =>
      __$$SaveWillCopyWithImpl<_$SaveWill>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id, String title, String content) saveWill,
  }) {
    return saveWill(id, title, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id, String title, String content)? saveWill,
  }) {
    return saveWill?.call(id, title, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id, String title, String content)? saveWill,
    required TResult orElse(),
  }) {
    if (saveWill != null) {
      return saveWill(id, title, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveWill value) saveWill,
  }) {
    return saveWill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveWill value)? saveWill,
  }) {
    return saveWill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveWill value)? saveWill,
    required TResult orElse(),
  }) {
    if (saveWill != null) {
      return saveWill(this);
    }
    return orElse();
  }
}

abstract class SaveWill implements AddEditWillEvent {
  const factory SaveWill(
      final int? id, final String title, final String content) = _$SaveWill;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$SaveWillCopyWith<_$SaveWill> get copyWith =>
      throw _privateConstructorUsedError;
}
