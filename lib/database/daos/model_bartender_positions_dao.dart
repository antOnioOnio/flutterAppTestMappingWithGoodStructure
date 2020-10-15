

import 'package:moor_flutter/moor_flutter.dart';
import 'package:test_mapping/database/appDataBase.dart';
import 'package:test_mapping/database/models/ModelBartenderPosition.dart';

part 'model_bartender_positions_dao.g.dart';

@UseDao(tables: [ModelBartenderPositions])
class ModelbartenderPositionDao extends DatabaseAccessor<MyDatabase>
  with _$ModelbartenderPositionDaoMixin {
  ModelbartenderPositionDao(MyDatabase db) : super(db);



}