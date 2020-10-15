import 'package:moor_flutter/moor_flutter.dart';
import 'package:test_mapping/database/daos/model_postlogin_dao.dart';
import 'package:test_mapping/database/models/BartenderWithPositionsHelper.dart';

import 'daos/model_bartender_dao.dart';
import 'daos/model_bartender_entry_dao.dart';
import 'daos/model_bartender_positions_dao.dart';
import 'models/ModelBartenderEntries.dart';
import 'models/ModelBartenderPosition.dart';
import 'models/ModelPostlogin.dart';
import 'models/ModelBartender.dart';

part 'appDataBase.g.dart';

@UseMoor(
    tables: [ModelPostLogins, ModelBartenders , ModelBartenderPositions, BartenderEntries],
    daos:   [ModelPostLoginDao, ModelBartenderDao, ModelBartenderEntryDao , ModelbartenderPositionDao ])
class MyDatabase extends _$MyDatabase {
  MyDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: "db.sqlite", logStatements: true));

  @override
  int get schemaVersion => 1;


  Future<void> write(BartenderWithPositionHelper entry){
    return transaction(() async{
      final bartender = entry.modelBartender;

      await into(modelBartenders).insert(bartender, mode: InsertMode.replace);

      await (delete(bartenderEntries)
          ..where((entry) => entry.modelBartender.equals(bartender.id)))
          .go();

      for (final item in entry.positions){
        await into(_bartenderEntries).insert(BartenderEntrie(modelBartender: bartender.id, modelBartenderPosition: item.id));
      }
    });
  }

}
