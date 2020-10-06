import 'package:floor/floor.dart';
import 'package:test_mapping/database/models/ModelPostlogin.dart';


@dao
abstract class ModelPostLoginDao{

  @Query('SELECT * FROM ModelBartender')
  Future<List<ModelPostLogin>> getAll();

  @insert
  Future<void> insertPerson(ModelPostLogin modelPostLoginDao);


}