import 'package:moor_flutter/moor_flutter.dart';

import 'models/ModelPostlogin.dart';


part 'appDataBase.g.dart';

@UseMoor(tables: [ModelPostLogins])
class MyDatabase extends _$MyDatabase {
  MyDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
      path: "db.sqlite", logStatements: true));

  @override
  int get schemaVersion => 1;

}