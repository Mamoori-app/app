import 'package:mamoori/data/data_source/will_db.dart';
import 'package:mamoori/domain/model/will.dart';
import 'package:mamoori/repository/will_repository.dart';

class WillRepositoryImpl implements WillRepository {
  WillDB db;
  WillRepositoryImpl(this.db);

  @override
  Future<void> deleteWill(Will will) async {
    await db.deleteWill(will);
  }

  @override
  Future<Will?> getWillById(int id) async {
    return await db.getWillById(id);
  }

  @override
  Future<List<Will>> getWills() async {
    return await db.getWills();
  }

  @override
  Future<void> insertWill(Will will) async {
    await db.insertWill(will);
  }

  @override
  Future<void> updateWill(Will will) async {
    await db.updateWill(will);
  }
}
