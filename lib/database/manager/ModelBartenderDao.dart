import 'package:floor/floor.dart';
import 'package:test_mapping/database/models/ModelBartender.dart';

@dao
abstract class ModelBartenderDao{

  @Query('SELECT * FROM ModelBartender')
  Future<List<ModelBartender>> getAll();

  @insert
  Future<void> insertBartender(ModelBartender modelBartender);


}