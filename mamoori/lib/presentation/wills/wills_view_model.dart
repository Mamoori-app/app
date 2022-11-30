import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:mamoori/domain/repository/will_repository.dart';
import 'package:mamoori/presentation/wills/wills_event.dart';
import 'package:mamoori/presentation/wills/wills_state.dart';

import '../../domain/model/will.dart';

class WillViewModel with ChangeNotifier {
  final WillRepository repository;
  WillsState _state = WillsState(will: []);
  WillsState get state => _state;

  Will? _recentlyDeletedWill;

  WillViewModel(this.repository);

  void onEvent(WillsEvent event) {
    event.when(
      loadWills: _loadWills,
      deleteWills: _deleteWill,
      restoreWill: _restoreWill,
    );
  }

  Future<void> _loadWills() async {
    List<Will> wills = await repository.getWills();
    _state = state.copyWith(
      will: wills,
    );
    notifyListeners();
  }

  Future<void> _deleteWill(Will will) async {
    await repository.deleteWill(will);
    _recentlyDeletedWill = will;

    await _loadWills();
  }

  Future<void> _restoreWill() async {
    if (_recentlyDeletedWill != null) {
      repository.insertWill(_recentlyDeletedWill!);
      _recentlyDeletedWill = null;

      _loadWills();
    }
  }
}
