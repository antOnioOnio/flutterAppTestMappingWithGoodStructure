import 'package:floor/floor.dart';
import 'package:test_mapping/database/models/ModelPostlogin.dart';


@dao
abstract class ModelPostLoginDao{

  @Query('SELECT * FROM ModelPostLogin')
  Future<List<ModelPostLogin>> getAll();

  @insert
  Future<void> insertPostLogin(ModelPostLogin modelPostLoginDao);

  @Query('DELETE FROM ModelPostLogin')
  Future<void> clearAll();
}