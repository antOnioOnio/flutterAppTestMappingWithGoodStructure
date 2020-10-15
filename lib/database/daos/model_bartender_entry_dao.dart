import 'package:moor_flutter/moor_flutter.dart';
import 'package:test_mapping/database/models/BartenderWithPositionsHelper.dart';
import 'package:test_mapping/database/models/ModelBartender.dart';
import 'package:test_mapping/database/models/ModelBartenderEntries.dart';
import 'package:test_mapping/database/models/ModelBartenderPosition.dart';

import '../appDataBase.dart';

part 'model_bartender_entry_dao.g.dart';

@UseDao(tables: [BartenderEntries, ModelBartenders, ModelBartenderPositions])
class  ModelBartenderEntryDao  extends DatabaseAccessor<MyDatabase>
    with _$ModelBartenderEntryDaoMixin {
  ModelBartenderEntryDao(MyDatabase db) : super(db);



}