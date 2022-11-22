import 'package:flutter/material.dart';
import 'package:mamoori/domain/model/will.dart';

class WillsProvider extends ChangeNotifier {
  List<Will> _willList = [
    Will(
        id: 1,
        title: 'First',
        content: '내용입니당',
        createdTime: DateTime.now().millisecondsSinceEpoch),
  ];
}
