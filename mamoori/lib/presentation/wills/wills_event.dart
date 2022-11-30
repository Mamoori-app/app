import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/model/will.dart';

part 'wills_event.freezed.dart';

@freezed
abstract class WillsEvent with _$WillsEvent {
  const factory WillsEvent.loadWills() = LoadWills;
  const factory WillsEvent.deleteWills(Will will) = DeleteWill;
  const factory WillsEvent.restoreWill() = RestoreWill;
}
