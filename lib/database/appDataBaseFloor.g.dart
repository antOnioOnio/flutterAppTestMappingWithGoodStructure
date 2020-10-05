// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appDataBaseFloor.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDataBase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDataBaseBuilder databaseBuilder(String name) =>
      _$AppDataBaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDataBaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDataBaseBuilder(null);
}

class _$AppDataBaseBuilder {
  _$AppDataBaseBuilder(this.name);

  final String name;

  final List<Migration> _migrations = [];

  Callback _callback;

  /// Adds migrations to the builder.
  _$AppDataBaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDataBaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDataBase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name)
        : ':memory:';
    final database = _$AppDataBase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDataBase extends AppDataBase {
  _$AppDataBase([StreamController<String> listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  ModelBartenderDao _modelBartenderDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ModelBartender` (`id` TEXT, `bartenderNr` TEXT, `notes` TEXT, `printDefinition` TEXT, `printer` TEXT, `positions` TEXT, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  ModelBartenderDao get modelBartenderDao {
    return _modelBartenderDaoInstance ??=
        _$ModelBartenderDao(database, changeListener);
  }
}

class _$ModelBartenderDao extends ModelBartenderDao {
  _$ModelBartenderDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _modelBartenderInsertionAdapter = InsertionAdapter(
            database,
            'ModelBartender',
            (ModelBartender item) => <String, dynamic>{
                  'id': item.id,
                  'bartenderNr': item.bartenderNr,
                  'notes': item.notes,
                  'printDefinition': item.printDefinition,
                  'printer': item.printer,
                  'positions': item.positions
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  static final _modelBartenderMapper = (Map<String, dynamic> row) =>
      ModelBartender(
          id: row['id'] as String,
          bartenderNr: row['bartenderNr'] as String,
          notes: row['notes'] as String,
          printDefinition: row['printDefinition'] as String,
          printer: row['printer'] as String,
          positions: row['positions'] as String);

  final InsertionAdapter<ModelBartender> _modelBartenderInsertionAdapter;

  @override
  Future<List<ModelBartender>> getAll() async {
    return _queryAdapter.queryList('SELECT * FROM ModelBartender',
        mapper: _modelBartenderMapper);
  }

  @override
  Future<void> insertPerson(ModelBartender modelBartender) async {
    await _modelBartenderInsertionAdapter.insert(
        modelBartender, OnConflictStrategy.abort);
  }
}
