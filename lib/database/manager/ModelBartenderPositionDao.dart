import 'package:floor/floor.dart';
import 'package:test_mapping/database/models/ModelBartenderPosition.dart';

@dao
abstract class ModelBartenderPositionDao{

  @Query('SELECT * FROM ModelBartenderPosition')
  Future<List<ModelBartenderPosition>> getAll();

  @insert
  Future<void> insertBartenderPosition(ModelBartenderPosition modelBartenderPosition);

  @Query('DELETE FROM ModelBartenderPosition')
  Future<void> clearAll();
}