import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:mamoori/data/data_source/will_db_helper.dart';
import 'package:mamoori/domain/model/will.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  test('db test', () async {
    final db = await databaseFactoryFfi.openDatabase(inMemoryDatabasePath);

    await db.execute(
        'CREATE TABLE will (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT, createdTime INTEGER)');

    final willDBHelper = WillDBHelper(db);

    await willDBHelper.insertWill(
      Will(title: 'test', content: 'content', createdTime: 1),
    );

    expect((await willDBHelper.getWills()).length, 1);

    Will will = (await willDBHelper.getWillById(1))!;
    expect(will.id, 1);

    await willDBHelper.updateWill(will.copyWith(title: 'cccc'));
    will = (await willDBHelper.getWillById(1))!;
    expect(will.title, 'cccc');

    await willDBHelper.deleteWill(will);
    expect((await willDBHelper.getWills()).length, 0);

    await db.close();
  });
}
