import 'package:sqflite/sqflite.dart';

import '../../domain/model/will.dart';

class WillDB {
  Database db;
  WillDB(this.db);

  Future<Will?> getWillById(int id) async {
    //SELECT * FROM will WHEHE id = 1
    final List<Map<String, dynamic>> maps = await db.query(
      'will',
      where: 'id=?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Will.fromJson(maps.first);
    }
    return null;
  }

  Future<List<Will>> getWills() async {
    final maps = await db.query('will');
    return maps.map((e) => Will.fromJson(e)).toList();
  }

  Future<void> insertWill(Will will) async {
    await db.insert('will', will.toJson());
  }

  Future<void> updateWill(Will will) async {
    await db.update(
      'will',
      will.toJson(),
      where: 'id=?',
      whereArgs: [will.id],
    );
  }

  Future<void> deleteWill(Will will) async {
    await db.delete(
      'will',
      where: 'id=?',
      whereArgs: [will.id],
    );
  }
}
