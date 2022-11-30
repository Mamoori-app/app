import 'package:mamoori/repository/will_repository.dart';

import '../model/will.dart';

class GetWill {
  final WillRepository repository;
  GetWill(this.repository);

  Future<Will?> call(int id) async {
    return await repository.getWillById(id);
  }
}
