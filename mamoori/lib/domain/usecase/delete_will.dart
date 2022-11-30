import 'package:mamoori/domain/repository/will_repository.dart';

import '../model/will.dart';

class DeleteWill {
  final WillRepository repository;
  DeleteWill(this.repository);

  Future<void> call(Will will) async {
    await repository.deleteWill(will);
  }
}
