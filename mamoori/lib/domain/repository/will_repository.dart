import '../model/will.dart';

abstract class WillRepository {
  Future<List<Will>> getWills();

  Future<Will?> getWillById(int id);

  Future<void> insertWill(Will will);

  Future<void> updateWill(Will will);

  Future<void> deleteWill(Will will);
}
