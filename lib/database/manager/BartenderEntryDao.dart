import 'package:floor/floor.dart';
import 'package:test_mapping/database/models/BartenderEntry.dart';

@dao
abstract class BartenderEntryDao{

  @Query('SELECT * FROM BartenderEntry')
  Future<List<BartenderEntry>> getAll();

  @insert
  Future<void> insertBartenderEntry(BartenderEntry bartenderEntry);


}