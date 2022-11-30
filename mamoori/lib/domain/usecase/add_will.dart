import 'package:mamoori/repository/will_repository.dart';

import '../model/will.dart';

class AddWill {
  final WillRepository repository;
  AddWill(this.repository);

  Future<void> call(Will will) async {
    await repository.insertWill(will);
  }
}
