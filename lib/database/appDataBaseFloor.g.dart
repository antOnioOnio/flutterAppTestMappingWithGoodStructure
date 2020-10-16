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

  ModelPostLoginDao _modelPostLoginDaoInstance;

  BartenderEntryDao _bartenderEntryDaoInstance;

  ModelBartenderPositionDao _modelBartenderPositionInstance;

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
            'CREATE TABLE IF NOT EXISTS `ModelBartender` (`id` TEXT, `bartenderNr` TEXT, `notes` TEXT, `printDefinition` TEXT, `printer` TEXT, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ModelPostLogin` (`grant_type` TEXT, `username` TEXT, `password` TEXT, `access_token` TEXT, `expires` TEXT, PRIMARY KEY (`access_token`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ModelBartenderPosition` (`id` TEXT, `item` TEXT, `charge` TEXT, `count` INTEGER, `note1` TEXT, `note2` TEXT, `note3` TEXT, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BartenderEntry` (`id` TEXT, `BartenderId` TEXT, `BartenderPositionId` TEXT, PRIMARY KEY (`id`))');

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

  @override
  ModelPostLoginDao get modelPostLoginDao {
    return _modelPostLoginDaoInstance ??=
        _$ModelPostLoginDao(database, changeListener);
  }

  @override
  BartenderEntryDao get bartenderEntryDao {
    return _bartenderEntryDaoInstance ??=
        _$BartenderEntryDao(database, changeListener);
  }

  @override
  ModelBartenderPositionDao get modelBartenderPositionDao {
    return _modelBartenderPositionInstance ??=
        _$ModelBartenderPositionDao(database, changeListener);
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
                  'printer': item.printer
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
          printer: row['printer'] as String);

  final InsertionAdapter<ModelBartender> _modelBartenderInsertionAdapter;

  @override
  Future<List<ModelBartender>> getAll() async {
    return _queryAdapter.queryList('SELECT * FROM ModelBartender',
        mapper: _modelBartenderMapper);
  }

  @override
  Future<void> clearAll() async {
    await _queryAdapter.queryNoReturn('DELETE FROM ModelBartender');
  }

  @override
  Future<void> insertBartender(ModelBartender modelBartender) async {
    await _modelBartenderInsertionAdapter.insert(
        modelBartender, OnConflictStrategy.abort);
  }
}

class _$ModelPostLoginDao extends ModelPostLoginDao {
  _$ModelPostLoginDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _modelPostLoginInsertionAdapter = InsertionAdapter(
            database,
            'ModelPostLogin',
            (ModelPostLogin item) => <String, dynamic>{
                  'grant_type': item.grant_type,
                  'username': item.username,
                  'password': item.password,
                  'access_token': item.access_token,
                  'expires': item.expires
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  static final _modelPostLoginMapper = (Map<String, dynamic> row) =>
      ModelPostLogin(
          grant_type: row['grant_type'] as String,
          username: row['username'] as String,
          password: row['password'] as String,
          access_token: row['access_token'] as String,
          expires: row['expires'] as String);

  final InsertionAdapter<ModelPostLogin> _modelPostLoginInsertionAdapter;

  @override
  Future<List<ModelPostLogin>> getAll() async {
    return _queryAdapter.queryList('SELECT * FROM ModelPostLogin',
        mapper: _modelPostLoginMapper);
  }

  @override
  Future<void> clearAll() async {
    await _queryAdapter.queryNoReturn('DELETE FROM ModelPostLogin');
  }

  @override
  Future<void> insertPostLogin(ModelPostLogin modelPostLoginDao) async {
    await _modelPostLoginInsertionAdapter.insert(
        modelPostLoginDao, OnConflictStrategy.abort);
  }
}

class _$BartenderEntryDao extends BartenderEntryDao {
  _$BartenderEntryDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _bartenderEntryInsertionAdapter = InsertionAdapter(
            database,
            'BartenderEntry',
            (BartenderEntry item) => <String, dynamic>{
                  'id': item.id,
                  'BartenderId': item.BartenderId,
                  'BartenderPositionId': item.BartenderPositionId
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  static final _bartenderEntryMapper = (Map<String, dynamic> row) =>
      BartenderEntry(row['id'] as String, row['BartenderId'] as String,
          row['BartenderPositionId'] as String);

  final InsertionAdapter<BartenderEntry> _bartenderEntryInsertionAdapter;

  @override
  Future<List<BartenderEntry>> getAll() async {
    return _queryAdapter.queryList('SELECT * FROM BartenderEntry',
        mapper: _bartenderEntryMapper);
  }

  @override
  Future<void> clearAll() async {
    await _queryAdapter.queryNoReturn('DELETE FROM BartenderEntry');
  }

  @override
  Future<void> insertBartenderEntry(BartenderEntry bartenderEntry) async {
    await _bartenderEntryInsertionAdapter.insert(
        bartenderEntry, OnConflictStrategy.abort);
  }
}

class _$ModelBartenderPositionDao extends ModelBartenderPositionDao {
  _$ModelBartenderPositionDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _modelBartenderPositionInsertionAdapter = InsertionAdapter(
            database,
            'ModelBartenderPosition',
            (ModelBartenderPosition item) => <String, dynamic>{
                  'id': item.id,
                  'item': item.item,
                  'charge': item.charge,
                  'count': item.count,
                  'note1': item.note1,
                  'note2': item.note2,
                  'note3': item.note3
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  static final _modelBartenderPositionMapper = (Map<String, dynamic> row) =>
      ModelBartenderPosition(
          id: row['id'] as String,
          item: row['item'] as String,
          charge: row['charge'] as String,
          count: row['count'] as int,
          note1: row['note1'] as String,
          note2: row['note2'] as String,
          note3: row['note3'] as String);

  final InsertionAdapter<ModelBartenderPosition>
      _modelBartenderPositionInsertionAdapter;

  @override
  Future<List<ModelBartenderPosition>> getAll() async {
    return _queryAdapter.queryList('SELECT * FROM ModelBartenderPosition',
        mapper: _modelBartenderPositionMapper);
  }

  @override
  Future<void> clearAll() async {
    await _queryAdapter.queryNoReturn('DELETE FROM ModelBartenderPosition');
  }

  @override
  Future<void> insertBartenderPosition(
      ModelBartenderPosition modelBartenderPosition) async {
    await _modelBartenderPositionInsertionAdapter.insert(
        modelBartenderPosition, OnConflictStrategy.abort);
  }
}
