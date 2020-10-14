import 'package:moor_flutter/moor_flutter.dart';
import 'package:test_mapping/database/daos/model_postlogin_dao.dart';

import 'models/ModelPostlogin.dart';
import 'models/ModelBartender.dart';
import 'models/ModelBartenderPosition.dart';
import 'ConverterPosition.dart';

part 'appDataBase.g.dart';

@UseMoor(tables: [ModelPostLogins, ModelBartenders], daos: [ModelPostLoginDao])
class MyDatabase extends _$MyDatabase {
  MyDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: "db.sqlite", logStatements: true));

  @override
  int get schemaVersion => 1;
}
