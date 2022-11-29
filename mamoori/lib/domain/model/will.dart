import 'package:freezed_annotation/freezed_annotation.dart';

part 'will.freezed.dart';
part 'will.g.dart';

@freezed
class Will with _$Will {
  factory Will({
    int? id,
    required final String title,
    required final String content,
    required final int createdTime,
  }) = _Will;

  factory Will.fromJson(Map<String, dynamic> json) => _$WillFromJson(json);
}
