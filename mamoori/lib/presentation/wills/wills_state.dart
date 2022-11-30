import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/will.dart';

part 'wills_state.freezed.dart';
part 'wills_state.g.dart';

@freezed
class WillsState with _$WillsState{
  factory WillsState({
    required List<Will> will,
  })= _WillsState;

  factory WillsState.fromJson(Map<String, dynamic> json)=> _$WillsStateFromJson(json);
}