import 'package:floor/floor.dart';

@entity
class BartenderEntry {
  @PrimaryKey()
  final String id;

  final String BartenderId;

  final String BartenderPositionId;

  BartenderEntry(this.id, this.BartenderId, this.BartenderPositionId);
}
