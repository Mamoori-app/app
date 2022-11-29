// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'will.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Will _$WillFromJson(Map<String, dynamic> json) {
  return _Will.fromJson(json);
}

/// @nodoc
mixin _$Will {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get createdTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WillCopyWith<Will> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WillCopyWith<$Res> {
  factory $WillCopyWith(Will value, $Res Function(Will) then) =
      _$WillCopyWithImpl<$Res, Will>;
  @useResult
  $Res call({int? id, String title, String content, int createdTime});
}

/// @nodoc
class _$WillCopyWithImpl<$Res, $Val extends Will>
    implements $WillCopyWith<$Res> {
  _$WillCopyWithImpl(this._value, this._then);

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
    Object? createdTime = null,
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
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WillCopyWith<$Res> implements $WillCopyWith<$Res> {
  factory _$$_WillCopyWith(_$_Will value, $Res Function(_$_Will) then) =
      __$$_WillCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String title, String content, int createdTime});
}

/// @nodoc
class __$$_WillCopyWithImpl<$Res> extends _$WillCopyWithImpl<$Res, _$_Will>
    implements _$$_WillCopyWith<$Res> {
  __$$_WillCopyWithImpl(_$_Will _value, $Res Function(_$_Will) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? content = null,
    Object? createdTime = null,
  }) {
    return _then(_$_Will(
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
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Will implements _Will {
  _$_Will(
      {this.id,
      required this.title,
      required this.content,
      required this.createdTime});

  factory _$_Will.fromJson(Map<String, dynamic> json) => _$$_WillFromJson(json);

  @override
  final int? id;
  @override
  final String title;
  @override
  final String content;
  @override
  final int createdTime;

  @override
  String toString() {
    return 'Will(id: $id, title: $title, content: $content, createdTime: $createdTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Will &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, createdTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WillCopyWith<_$_Will> get copyWith =>
      __$$_WillCopyWithImpl<_$_Will>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WillToJson(
      this,
    );
  }
}

abstract class _Will implements Will {
  factory _Will(
      {final int? id,
      required final String title,
      required final String content,
      required final int createdTime}) = _$_Will;

  factory _Will.fromJson(Map<String, dynamic> json) = _$_Will.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get content;
  @override
  int get createdTime;
  @override
  @JsonKey(ignore: true)
  _$$_WillCopyWith<_$_Will> get copyWith => throw _privateConstructorUsedError;
}
