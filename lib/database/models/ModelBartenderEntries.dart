import 'package:moor_flutter/moor_flutter.dart';

/*@DataClassName('BartenderEntry')*/
class BartenderEntries extends Table {
  // id of the bartender that should contain this item.
  TextColumn get modelBartender => text()();
  // id of the bartenderPosition in this entrie
  TextColumn get modelBartenderPosition => text()();

}