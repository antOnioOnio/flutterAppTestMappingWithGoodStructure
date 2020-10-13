import 'package:test_mapping/database/models/ModelPostlogin.dart';
import 'package:moor_flutter/moor_flutter.dart';

import '../appDataBase.dart';

part 'model_postlogin_dao.g.dart';

@UseDao(tables: [ModelPostLogins])
class ModelPostLoginDao extends DatabaseAccessor<MyDatabase>
    with _$ModelPostLoginDaoMixin {
  ModelPostLoginDao(MyDatabase db) : super(db);

  Future<List<ModelPostLogin>> get() => select(modelPostLogins).get();
  Future<List<ModelPostLogin>> getLogin(String login) =>
      (select(modelPostLogins)
            ..where((ModelPostLogin) => ModelPostLogin.username.equals(login)))
          .get();

  Future<int> insertOrReplacePostLogin(ModelPostLogin modelPostLogin) =>
      into(modelPostLogins).insert(modelPostLogin, mode: InsertMode.replace);
}
