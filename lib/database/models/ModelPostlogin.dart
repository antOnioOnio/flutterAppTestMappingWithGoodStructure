import 'package:moor_flutter/moor_flutter.dart';

// Moor will automatically generate a class called ModelPostLogin, a row of this table.
class ModelPostLogins extends Table{

  TextColumn get grant_type => text()();
  TextColumn get username => text()();
  TextColumn get password => text()();
  TextColumn get access_token => text()();
  TextColumn get expires => text()();

  @override
  Set<Column> get primaryKey => {access_token};

}
