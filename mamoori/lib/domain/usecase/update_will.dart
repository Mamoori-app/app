import 'package:mamoori/repository/will_repository.dart';

import '../model/will.dart';

class UpdateWill {
  final WillRepository repository;
  UpdateWill(this.repository);

  Future<void> call(Will will) async {
    await repository.updateWill(will);
  }
}
