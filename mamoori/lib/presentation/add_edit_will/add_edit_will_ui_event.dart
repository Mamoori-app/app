import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_edit_will_ui_event.freezed.dart';

@freezed
abstract class AddEditWillUiEvent with _$AddEditWillUiEvent{
  const factory AddEditWillUiEvent.saveWill()= SaveWill;
}