import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_edit_will_event.freezed.dart';

@freezed
abstract class AddEditWillEvent with _$AddEditWillEvent{
  // const factory AddEditWillEvent.changeColor(int color)= ChangeWill;
  const factory AddEditWillEvent.saveWill(int? id, String title, String content) = SaveWill;
}