import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mamoori/domain/model/will.dart';
import 'package:mamoori/domain/repository/will_repository.dart';
import 'package:mamoori/presentation/add_edit_will/add_edit_will_event.dart';
import 'package:mamoori/presentation/add_edit_will/add_edit_will_ui_event.dart';

class AddEditWillViewModel with ChangeNotifier {
  final WillRepository repository;

  // int _color= Colors.orange.value;
  // int get color=> _color;
  final _eventController= StreamController<AddEditWillUiEvent>.broadcast();
  Stream<AddEditWillUiEvent> get eventStream=> _eventController.stream;

  AddEditWillViewModel(this.repository);

  void onEvent(AddEditWillEvent event) {
    event.when(
      // changeColor: _changeColor,
      saveWill: _saveWill,
    );
  }

  // Future<void> _changeColor(int color) async{
  //   _color= color;
  //   notifyListeners();
  // }

  Future<void> _saveWill(int? id, String title, String content) async {
    if (id == null) {
      repository.insertWill(
        Will(
            title: title,
            content: content,
            // color: color,
            createdTime: DateTime.now().millisecondsSinceEpoch),
      );
    } else {
      repository.updateWill(
        Will(
            title: title,
            content: content,
            // color: color,
            createdTime: DateTime.now().millisecondsSinceEpoch),
      );
    }
    
    _eventController.add(const AddEditWillUiEvent.saveWill());
  }
}
