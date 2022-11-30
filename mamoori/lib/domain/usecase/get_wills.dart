import 'package:mamoori/repository/will_repository.dart';

import '../model/will.dart';

class GetNotesUseCase {
  final WillRepository repository;
  GetNotesUseCase(this.repository);

  Future<List<Will>> call() async {
    List<Will> wills = await repository.getWills();
    return wills;
  }
}
