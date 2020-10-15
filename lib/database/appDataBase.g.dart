// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appDataBase.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class ModelPostLogin extends DataClass implements Insertable<ModelPostLogin> {
  final String grant_type;
  final String username;
  final String password;
  final String access_token;
  final String expires;
  ModelPostLogin(
      {@required this.grant_type,
      @required this.username,
      @required this.password,
      @required this.access_token,
      @required this.expires});
  factory ModelPostLogin.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return ModelPostLogin(
      grant_type: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}grant_type']),
      username: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}username']),
      password: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}password']),
      access_token: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}access_token']),
      expires:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}expires']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || grant_type != null) {
      map['grant_type'] = Variable<String>(grant_type);
    }
    if (!nullToAbsent || username != null) {
      map['username'] = Variable<String>(username);
    }
    if (!nullToAbsent || password != null) {
      map['password'] = Variable<String>(password);
    }
    if (!nullToAbsent || access_token != null) {
      map['access_token'] = Variable<String>(access_token);
    }
    if (!nullToAbsent || expires != null) {
      map['expires'] = Variable<String>(expires);
    }
    return map;
  }

  ModelPostLoginsCompanion toCompanion(bool nullToAbsent) {
    return ModelPostLoginsCompanion(
      grant_type: grant_type == null && nullToAbsent
          ? const Value.absent()
          : Value(grant_type),
      username: username == null && nullToAbsent
          ? const Value.absent()
          : Value(username),
      password: password == null && nullToAbsent
          ? const Value.absent()
          : Value(password),
      access_token: access_token == null && nullToAbsent
          ? const Value.absent()
          : Value(access_token),
      expires: expires == null && nullToAbsent
          ? const Value.absent()
          : Value(expires),
    );
  }

  factory ModelPostLogin.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ModelPostLogin(
      grant_type: serializer.fromJson<String>(json['grant_type']),
      username: serializer.fromJson<String>(json['username']),
      password: serializer.fromJson<String>(json['password']),
      access_token: serializer.fromJson<String>(json['access_token']),
      expires: serializer.fromJson<String>(json['expires']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'grant_type': serializer.toJson<String>(grant_type),
      'username': serializer.toJson<String>(username),
      'password': serializer.toJson<String>(password),
      'access_token': serializer.toJson<String>(access_token),
      'expires': serializer.toJson<String>(expires),
    };
  }

  ModelPostLogin copyWith(
          {String grant_type,
          String username,
          String password,
          String access_token,
          String expires}) =>
      ModelPostLogin(
        grant_type: grant_type ?? this.grant_type,
        username: username ?? this.username,
        password: password ?? this.password,
        access_token: access_token ?? this.access_token,
        expires: expires ?? this.expires,
      );
  @override
  String toString() {
    return (StringBuffer('ModelPostLogin(')
          ..write('grant_type: $grant_type, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('access_token: $access_token, ')
          ..write('expires: $expires')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      grant_type.hashCode,
      $mrjc(
          username.hashCode,
          $mrjc(password.hashCode,
              $mrjc(access_token.hashCode, expires.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ModelPostLogin &&
          other.grant_type == this.grant_type &&
          other.username == this.username &&
          other.password == this.password &&
          other.access_token == this.access_token &&
          other.expires == this.expires);
}

class ModelPostLoginsCompanion extends UpdateCompanion<ModelPostLogin> {
  final Value<String> grant_type;
  final Value<String> username;
  final Value<String> password;
  final Value<String> access_token;
  final Value<String> expires;
  const ModelPostLoginsCompanion({
    this.grant_type = const Value.absent(),
    this.username = const Value.absent(),
    this.password = const Value.absent(),
    this.access_token = const Value.absent(),
    this.expires = const Value.absent(),
  });
  ModelPostLoginsCompanion.insert({
    @required String grant_type,
    @required String username,
    @required String password,
    @required String access_token,
    @required String expires,
  })  : grant_type = Value(grant_type),
        username = Value(username),
        password = Value(password),
        access_token = Value(access_token),
        expires = Value(expires);
  static Insertable<ModelPostLogin> custom({
    Expression<String> grant_type,
    Expression<String> username,
    Expression<String> password,
    Expression<String> access_token,
    Expression<String> expires,
  }) {
    return RawValuesInsertable({
      if (grant_type != null) 'grant_type': grant_type,
      if (username != null) 'username': username,
      if (password != null) 'password': password,
      if (access_token != null) 'access_token': access_token,
      if (expires != null) 'expires': expires,
    });
  }

  ModelPostLoginsCompanion copyWith(
      {Value<String> grant_type,
      Value<String> username,
      Value<String> password,
      Value<String> access_token,
      Value<String> expires}) {
    return ModelPostLoginsCompanion(
      grant_type: grant_type ?? this.grant_type,
      username: username ?? this.username,
      password: password ?? this.password,
      access_token: access_token ?? this.access_token,
      expires: expires ?? this.expires,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (grant_type.present) {
      map['grant_type'] = Variable<String>(grant_type.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (access_token.present) {
      map['access_token'] = Variable<String>(access_token.value);
    }
    if (expires.present) {
      map['expires'] = Variable<String>(expires.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ModelPostLoginsCompanion(')
          ..write('grant_type: $grant_type, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('access_token: $access_token, ')
          ..write('expires: $expires')
          ..write(')'))
        .toString();
  }
}

class $ModelPostLoginsTable extends ModelPostLogins
    with TableInfo<$ModelPostLoginsTable, ModelPostLogin> {
  final GeneratedDatabase _db;
  final String _alias;
  $ModelPostLoginsTable(this._db, [this._alias]);
  final VerificationMeta _grant_typeMeta = const VerificationMeta('grant_type');
  GeneratedTextColumn _grant_type;
  @override
  GeneratedTextColumn get grant_type => _grant_type ??= _constructGrantType();
  GeneratedTextColumn _constructGrantType() {
    return GeneratedTextColumn(
      'grant_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  GeneratedTextColumn _username;
  @override
  GeneratedTextColumn get username => _username ??= _constructUsername();
  GeneratedTextColumn _constructUsername() {
    return GeneratedTextColumn(
      'username',
      $tableName,
      false,
    );
  }

  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  GeneratedTextColumn _password;
  @override
  GeneratedTextColumn get password => _password ??= _constructPassword();
  GeneratedTextColumn _constructPassword() {
    return GeneratedTextColumn(
      'password',
      $tableName,
      false,
    );
  }

  final VerificationMeta _access_tokenMeta =
      const VerificationMeta('access_token');
  GeneratedTextColumn _access_token;
  @override
  GeneratedTextColumn get access_token =>
      _access_token ??= _constructAccessToken();
  GeneratedTextColumn _constructAccessToken() {
    return GeneratedTextColumn(
      'access_token',
      $tableName,
      false,
    );
  }

  final VerificationMeta _expiresMeta = const VerificationMeta('expires');
  GeneratedTextColumn _expires;
  @override
  GeneratedTextColumn get expires => _expires ??= _constructExpires();
  GeneratedTextColumn _constructExpires() {
    return GeneratedTextColumn(
      'expires',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [grant_type, username, password, access_token, expires];
  @override
  $ModelPostLoginsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'model_post_logins';
  @override
  final String actualTableName = 'model_post_logins';
  @override
  VerificationContext validateIntegrity(Insertable<ModelPostLogin> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('grant_type')) {
      context.handle(
          _grant_typeMeta,
          grant_type.isAcceptableOrUnknown(
              data['grant_type'], _grant_typeMeta));
    } else if (isInserting) {
      context.missing(_grant_typeMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username'], _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password'], _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('access_token')) {
      context.handle(
          _access_tokenMeta,
          access_token.isAcceptableOrUnknown(
              data['access_token'], _access_tokenMeta));
    } else if (isInserting) {
      context.missing(_access_tokenMeta);
    }
    if (data.containsKey('expires')) {
      context.handle(_expiresMeta,
          expires.isAcceptableOrUnknown(data['expires'], _expiresMeta));
    } else if (isInserting) {
      context.missing(_expiresMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {access_token};
  @override
  ModelPostLogin map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ModelPostLogin.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ModelPostLoginsTable createAlias(String alias) {
    return $ModelPostLoginsTable(_db, alias);
  }
}

class ModelBartender extends DataClass implements Insertable<ModelBartender> {
  final String id;
  final String bartenderNr;
  final String notes;
  final String printDefinition;
  final String printer;
  ModelBartender(
      {@required this.id,
      @required this.bartenderNr,
      @required this.notes,
      @required this.printDefinition,
      @required this.printer});
  factory ModelBartender.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return ModelBartender(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      bartenderNr: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bartender_nr']),
      notes:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}notes']),
      printDefinition: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}print_definition']),
      printer:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}printer']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || bartenderNr != null) {
      map['bartender_nr'] = Variable<String>(bartenderNr);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || printDefinition != null) {
      map['print_definition'] = Variable<String>(printDefinition);
    }
    if (!nullToAbsent || printer != null) {
      map['printer'] = Variable<String>(printer);
    }
    return map;
  }

  ModelBartendersCompanion toCompanion(bool nullToAbsent) {
    return ModelBartendersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      bartenderNr: bartenderNr == null && nullToAbsent
          ? const Value.absent()
          : Value(bartenderNr),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      printDefinition: printDefinition == null && nullToAbsent
          ? const Value.absent()
          : Value(printDefinition),
      printer: printer == null && nullToAbsent
          ? const Value.absent()
          : Value(printer),
    );
  }

  factory ModelBartender.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ModelBartender(
      id: serializer.fromJson<String>(json['id']),
      bartenderNr: serializer.fromJson<String>(json['bartenderNr']),
      notes: serializer.fromJson<String>(json['notes']),
      printDefinition: serializer.fromJson<String>(json['printDefinition']),
      printer: serializer.fromJson<String>(json['printer']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'bartenderNr': serializer.toJson<String>(bartenderNr),
      'notes': serializer.toJson<String>(notes),
      'printDefinition': serializer.toJson<String>(printDefinition),
      'printer': serializer.toJson<String>(printer),
    };
  }

  ModelBartender copyWith(
          {String id,
          String bartenderNr,
          String notes,
          String printDefinition,
          String printer}) =>
      ModelBartender(
        id: id ?? this.id,
        bartenderNr: bartenderNr ?? this.bartenderNr,
        notes: notes ?? this.notes,
        printDefinition: printDefinition ?? this.printDefinition,
        printer: printer ?? this.printer,
      );
  @override
  String toString() {
    return (StringBuffer('ModelBartender(')
          ..write('id: $id, ')
          ..write('bartenderNr: $bartenderNr, ')
          ..write('notes: $notes, ')
          ..write('printDefinition: $printDefinition, ')
          ..write('printer: $printer')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          bartenderNr.hashCode,
          $mrjc(notes.hashCode,
              $mrjc(printDefinition.hashCode, printer.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ModelBartender &&
          other.id == this.id &&
          other.bartenderNr == this.bartenderNr &&
          other.notes == this.notes &&
          other.printDefinition == this.printDefinition &&
          other.printer == this.printer);
}

class ModelBartendersCompanion extends UpdateCompanion<ModelBartender> {
  final Value<String> id;
  final Value<String> bartenderNr;
  final Value<String> notes;
  final Value<String> printDefinition;
  final Value<String> printer;
  const ModelBartendersCompanion({
    this.id = const Value.absent(),
    this.bartenderNr = const Value.absent(),
    this.notes = const Value.absent(),
    this.printDefinition = const Value.absent(),
    this.printer = const Value.absent(),
  });
  ModelBartendersCompanion.insert({
    @required String id,
    @required String bartenderNr,
    @required String notes,
    @required String printDefinition,
    @required String printer,
  })  : id = Value(id),
        bartenderNr = Value(bartenderNr),
        notes = Value(notes),
        printDefinition = Value(printDefinition),
        printer = Value(printer);
  static Insertable<ModelBartender> custom({
    Expression<String> id,
    Expression<String> bartenderNr,
    Expression<String> notes,
    Expression<String> printDefinition,
    Expression<String> printer,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bartenderNr != null) 'bartender_nr': bartenderNr,
      if (notes != null) 'notes': notes,
      if (printDefinition != null) 'print_definition': printDefinition,
      if (printer != null) 'printer': printer,
    });
  }

  ModelBartendersCompanion copyWith(
      {Value<String> id,
      Value<String> bartenderNr,
      Value<String> notes,
      Value<String> printDefinition,
      Value<String> printer}) {
    return ModelBartendersCompanion(
      id: id ?? this.id,
      bartenderNr: bartenderNr ?? this.bartenderNr,
      notes: notes ?? this.notes,
      printDefinition: printDefinition ?? this.printDefinition,
      printer: printer ?? this.printer,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (bartenderNr.present) {
      map['bartender_nr'] = Variable<String>(bartenderNr.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (printDefinition.present) {
      map['print_definition'] = Variable<String>(printDefinition.value);
    }
    if (printer.present) {
      map['printer'] = Variable<String>(printer.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ModelBartendersCompanion(')
          ..write('id: $id, ')
          ..write('bartenderNr: $bartenderNr, ')
          ..write('notes: $notes, ')
          ..write('printDefinition: $printDefinition, ')
          ..write('printer: $printer')
          ..write(')'))
        .toString();
  }
}

class $ModelBartendersTable extends ModelBartenders
    with TableInfo<$ModelBartendersTable, ModelBartender> {
  final GeneratedDatabase _db;
  final String _alias;
  $ModelBartendersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _bartenderNrMeta =
      const VerificationMeta('bartenderNr');
  GeneratedTextColumn _bartenderNr;
  @override
  GeneratedTextColumn get bartenderNr =>
      _bartenderNr ??= _constructBartenderNr();
  GeneratedTextColumn _constructBartenderNr() {
    return GeneratedTextColumn(
      'bartender_nr',
      $tableName,
      false,
    );
  }

  final VerificationMeta _notesMeta = const VerificationMeta('notes');
  GeneratedTextColumn _notes;
  @override
  GeneratedTextColumn get notes => _notes ??= _constructNotes();
  GeneratedTextColumn _constructNotes() {
    return GeneratedTextColumn(
      'notes',
      $tableName,
      false,
    );
  }

  final VerificationMeta _printDefinitionMeta =
      const VerificationMeta('printDefinition');
  GeneratedTextColumn _printDefinition;
  @override
  GeneratedTextColumn get printDefinition =>
      _printDefinition ??= _constructPrintDefinition();
  GeneratedTextColumn _constructPrintDefinition() {
    return GeneratedTextColumn(
      'print_definition',
      $tableName,
      false,
    );
  }

  final VerificationMeta _printerMeta = const VerificationMeta('printer');
  GeneratedTextColumn _printer;
  @override
  GeneratedTextColumn get printer => _printer ??= _constructPrinter();
  GeneratedTextColumn _constructPrinter() {
    return GeneratedTextColumn(
      'printer',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, bartenderNr, notes, printDefinition, printer];
  @override
  $ModelBartendersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'model_bartenders';
  @override
  final String actualTableName = 'model_bartenders';
  @override
  VerificationContext validateIntegrity(Insertable<ModelBartender> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('bartender_nr')) {
      context.handle(
          _bartenderNrMeta,
          bartenderNr.isAcceptableOrUnknown(
              data['bartender_nr'], _bartenderNrMeta));
    } else if (isInserting) {
      context.missing(_bartenderNrMeta);
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes'], _notesMeta));
    } else if (isInserting) {
      context.missing(_notesMeta);
    }
    if (data.containsKey('print_definition')) {
      context.handle(
          _printDefinitionMeta,
          printDefinition.isAcceptableOrUnknown(
              data['print_definition'], _printDefinitionMeta));
    } else if (isInserting) {
      context.missing(_printDefinitionMeta);
    }
    if (data.containsKey('printer')) {
      context.handle(_printerMeta,
          printer.isAcceptableOrUnknown(data['printer'], _printerMeta));
    } else if (isInserting) {
      context.missing(_printerMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ModelBartender map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ModelBartender.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ModelBartendersTable createAlias(String alias) {
    return $ModelBartendersTable(_db, alias);
  }
}

class ModelBartenderPosition extends DataClass
    implements Insertable<ModelBartenderPosition> {
  final String id;
  final String item;
  final String charge;
  final int count;
  final String note1;
  final String note2;
  final String note3;
  ModelBartenderPosition(
      {@required this.id,
      @required this.item,
      @required this.charge,
      @required this.count,
      @required this.note1,
      @required this.note2,
      @required this.note3});
  factory ModelBartenderPosition.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    return ModelBartenderPosition(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      item: stringType.mapFromDatabaseResponse(data['${effectivePrefix}item']),
      charge:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}charge']),
      count: intType.mapFromDatabaseResponse(data['${effectivePrefix}count']),
      note1:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}note1']),
      note2:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}note2']),
      note3:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}note3']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || item != null) {
      map['item'] = Variable<String>(item);
    }
    if (!nullToAbsent || charge != null) {
      map['charge'] = Variable<String>(charge);
    }
    if (!nullToAbsent || count != null) {
      map['count'] = Variable<int>(count);
    }
    if (!nullToAbsent || note1 != null) {
      map['note1'] = Variable<String>(note1);
    }
    if (!nullToAbsent || note2 != null) {
      map['note2'] = Variable<String>(note2);
    }
    if (!nullToAbsent || note3 != null) {
      map['note3'] = Variable<String>(note3);
    }
    return map;
  }

  ModelBartenderPositionsCompanion toCompanion(bool nullToAbsent) {
    return ModelBartenderPositionsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      item: item == null && nullToAbsent ? const Value.absent() : Value(item),
      charge:
          charge == null && nullToAbsent ? const Value.absent() : Value(charge),
      count:
          count == null && nullToAbsent ? const Value.absent() : Value(count),
      note1:
          note1 == null && nullToAbsent ? const Value.absent() : Value(note1),
      note2:
          note2 == null && nullToAbsent ? const Value.absent() : Value(note2),
      note3:
          note3 == null && nullToAbsent ? const Value.absent() : Value(note3),
    );
  }

  factory ModelBartenderPosition.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ModelBartenderPosition(
      id: serializer.fromJson<String>(json['id']),
      item: serializer.fromJson<String>(json['item']),
      charge: serializer.fromJson<String>(json['charge']),
      count: serializer.fromJson<int>(json['count']),
      note1: serializer.fromJson<String>(json['note1']),
      note2: serializer.fromJson<String>(json['note2']),
      note3: serializer.fromJson<String>(json['note3']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'item': serializer.toJson<String>(item),
      'charge': serializer.toJson<String>(charge),
      'count': serializer.toJson<int>(count),
      'note1': serializer.toJson<String>(note1),
      'note2': serializer.toJson<String>(note2),
      'note3': serializer.toJson<String>(note3),
    };
  }

  ModelBartenderPosition copyWith(
          {String id,
          String item,
          String charge,
          int count,
          String note1,
          String note2,
          String note3}) =>
      ModelBartenderPosition(
        id: id ?? this.id,
        item: item ?? this.item,
        charge: charge ?? this.charge,
        count: count ?? this.count,
        note1: note1 ?? this.note1,
        note2: note2 ?? this.note2,
        note3: note3 ?? this.note3,
      );
  @override
  String toString() {
    return (StringBuffer('ModelBartenderPosition(')
          ..write('id: $id, ')
          ..write('item: $item, ')
          ..write('charge: $charge, ')
          ..write('count: $count, ')
          ..write('note1: $note1, ')
          ..write('note2: $note2, ')
          ..write('note3: $note3')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          item.hashCode,
          $mrjc(
              charge.hashCode,
              $mrjc(
                  count.hashCode,
                  $mrjc(note1.hashCode,
                      $mrjc(note2.hashCode, note3.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ModelBartenderPosition &&
          other.id == this.id &&
          other.item == this.item &&
          other.charge == this.charge &&
          other.count == this.count &&
          other.note1 == this.note1 &&
          other.note2 == this.note2 &&
          other.note3 == this.note3);
}

class ModelBartenderPositionsCompanion
    extends UpdateCompanion<ModelBartenderPosition> {
  final Value<String> id;
  final Value<String> item;
  final Value<String> charge;
  final Value<int> count;
  final Value<String> note1;
  final Value<String> note2;
  final Value<String> note3;
  const ModelBartenderPositionsCompanion({
    this.id = const Value.absent(),
    this.item = const Value.absent(),
    this.charge = const Value.absent(),
    this.count = const Value.absent(),
    this.note1 = const Value.absent(),
    this.note2 = const Value.absent(),
    this.note3 = const Value.absent(),
  });
  ModelBartenderPositionsCompanion.insert({
    @required String id,
    @required String item,
    @required String charge,
    @required int count,
    @required String note1,
    @required String note2,
    @required String note3,
  })  : id = Value(id),
        item = Value(item),
        charge = Value(charge),
        count = Value(count),
        note1 = Value(note1),
        note2 = Value(note2),
        note3 = Value(note3);
  static Insertable<ModelBartenderPosition> custom({
    Expression<String> id,
    Expression<String> item,
    Expression<String> charge,
    Expression<int> count,
    Expression<String> note1,
    Expression<String> note2,
    Expression<String> note3,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (item != null) 'item': item,
      if (charge != null) 'charge': charge,
      if (count != null) 'count': count,
      if (note1 != null) 'note1': note1,
      if (note2 != null) 'note2': note2,
      if (note3 != null) 'note3': note3,
    });
  }

  ModelBartenderPositionsCompanion copyWith(
      {Value<String> id,
      Value<String> item,
      Value<String> charge,
      Value<int> count,
      Value<String> note1,
      Value<String> note2,
      Value<String> note3}) {
    return ModelBartenderPositionsCompanion(
      id: id ?? this.id,
      item: item ?? this.item,
      charge: charge ?? this.charge,
      count: count ?? this.count,
      note1: note1 ?? this.note1,
      note2: note2 ?? this.note2,
      note3: note3 ?? this.note3,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (item.present) {
      map['item'] = Variable<String>(item.value);
    }
    if (charge.present) {
      map['charge'] = Variable<String>(charge.value);
    }
    if (count.present) {
      map['count'] = Variable<int>(count.value);
    }
    if (note1.present) {
      map['note1'] = Variable<String>(note1.value);
    }
    if (note2.present) {
      map['note2'] = Variable<String>(note2.value);
    }
    if (note3.present) {
      map['note3'] = Variable<String>(note3.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ModelBartenderPositionsCompanion(')
          ..write('id: $id, ')
          ..write('item: $item, ')
          ..write('charge: $charge, ')
          ..write('count: $count, ')
          ..write('note1: $note1, ')
          ..write('note2: $note2, ')
          ..write('note3: $note3')
          ..write(')'))
        .toString();
  }
}

class $ModelBartenderPositionsTable extends ModelBartenderPositions
    with TableInfo<$ModelBartenderPositionsTable, ModelBartenderPosition> {
  final GeneratedDatabase _db;
  final String _alias;
  $ModelBartenderPositionsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _itemMeta = const VerificationMeta('item');
  GeneratedTextColumn _item;
  @override
  GeneratedTextColumn get item => _item ??= _constructItem();
  GeneratedTextColumn _constructItem() {
    return GeneratedTextColumn(
      'item',
      $tableName,
      false,
    );
  }

  final VerificationMeta _chargeMeta = const VerificationMeta('charge');
  GeneratedTextColumn _charge;
  @override
  GeneratedTextColumn get charge => _charge ??= _constructCharge();
  GeneratedTextColumn _constructCharge() {
    return GeneratedTextColumn(
      'charge',
      $tableName,
      false,
    );
  }

  final VerificationMeta _countMeta = const VerificationMeta('count');
  GeneratedIntColumn _count;
  @override
  GeneratedIntColumn get count => _count ??= _constructCount();
  GeneratedIntColumn _constructCount() {
    return GeneratedIntColumn(
      'count',
      $tableName,
      false,
    );
  }

  final VerificationMeta _note1Meta = const VerificationMeta('note1');
  GeneratedTextColumn _note1;
  @override
  GeneratedTextColumn get note1 => _note1 ??= _constructNote1();
  GeneratedTextColumn _constructNote1() {
    return GeneratedTextColumn(
      'note1',
      $tableName,
      false,
    );
  }

  final VerificationMeta _note2Meta = const VerificationMeta('note2');
  GeneratedTextColumn _note2;
  @override
  GeneratedTextColumn get note2 => _note2 ??= _constructNote2();
  GeneratedTextColumn _constructNote2() {
    return GeneratedTextColumn(
      'note2',
      $tableName,
      false,
    );
  }

  final VerificationMeta _note3Meta = const VerificationMeta('note3');
  GeneratedTextColumn _note3;
  @override
  GeneratedTextColumn get note3 => _note3 ??= _constructNote3();
  GeneratedTextColumn _constructNote3() {
    return GeneratedTextColumn(
      'note3',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, item, charge, count, note1, note2, note3];
  @override
  $ModelBartenderPositionsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'model_bartender_positions';
  @override
  final String actualTableName = 'model_bartender_positions';
  @override
  VerificationContext validateIntegrity(
      Insertable<ModelBartenderPosition> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('item')) {
      context.handle(
          _itemMeta, item.isAcceptableOrUnknown(data['item'], _itemMeta));
    } else if (isInserting) {
      context.missing(_itemMeta);
    }
    if (data.containsKey('charge')) {
      context.handle(_chargeMeta,
          charge.isAcceptableOrUnknown(data['charge'], _chargeMeta));
    } else if (isInserting) {
      context.missing(_chargeMeta);
    }
    if (data.containsKey('count')) {
      context.handle(
          _countMeta, count.isAcceptableOrUnknown(data['count'], _countMeta));
    } else if (isInserting) {
      context.missing(_countMeta);
    }
    if (data.containsKey('note1')) {
      context.handle(
          _note1Meta, note1.isAcceptableOrUnknown(data['note1'], _note1Meta));
    } else if (isInserting) {
      context.missing(_note1Meta);
    }
    if (data.containsKey('note2')) {
      context.handle(
          _note2Meta, note2.isAcceptableOrUnknown(data['note2'], _note2Meta));
    } else if (isInserting) {
      context.missing(_note2Meta);
    }
    if (data.containsKey('note3')) {
      context.handle(
          _note3Meta, note3.isAcceptableOrUnknown(data['note3'], _note3Meta));
    } else if (isInserting) {
      context.missing(_note3Meta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ModelBartenderPosition map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ModelBartenderPosition.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ModelBartenderPositionsTable createAlias(String alias) {
    return $ModelBartenderPositionsTable(_db, alias);
  }
}

class BartenderEntrie extends DataClass implements Insertable<BartenderEntrie> {
  final String modelBartender;
  final String modelBartenderPosition;
  BartenderEntrie(
      {@required this.modelBartender, @required this.modelBartenderPosition});
  factory BartenderEntrie.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return BartenderEntrie(
      modelBartender: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}model_bartender']),
      modelBartenderPosition: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}model_bartender_position']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || modelBartender != null) {
      map['model_bartender'] = Variable<String>(modelBartender);
    }
    if (!nullToAbsent || modelBartenderPosition != null) {
      map['model_bartender_position'] =
          Variable<String>(modelBartenderPosition);
    }
    return map;
  }

  BartenderEntriesCompanion toCompanion(bool nullToAbsent) {
    return BartenderEntriesCompanion(
      modelBartender: modelBartender == null && nullToAbsent
          ? const Value.absent()
          : Value(modelBartender),
      modelBartenderPosition: modelBartenderPosition == null && nullToAbsent
          ? const Value.absent()
          : Value(modelBartenderPosition),
    );
  }

  factory BartenderEntrie.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return BartenderEntrie(
      modelBartender: serializer.fromJson<String>(json['modelBartender']),
      modelBartenderPosition:
          serializer.fromJson<String>(json['modelBartenderPosition']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'modelBartender': serializer.toJson<String>(modelBartender),
      'modelBartenderPosition':
          serializer.toJson<String>(modelBartenderPosition),
    };
  }

  BartenderEntrie copyWith(
          {String modelBartender, String modelBartenderPosition}) =>
      BartenderEntrie(
        modelBartender: modelBartender ?? this.modelBartender,
        modelBartenderPosition:
            modelBartenderPosition ?? this.modelBartenderPosition,
      );
  @override
  String toString() {
    return (StringBuffer('BartenderEntrie(')
          ..write('modelBartender: $modelBartender, ')
          ..write('modelBartenderPosition: $modelBartenderPosition')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(modelBartender.hashCode, modelBartenderPosition.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is BartenderEntrie &&
          other.modelBartender == this.modelBartender &&
          other.modelBartenderPosition == this.modelBartenderPosition);
}

class BartenderEntriesCompanion extends UpdateCompanion<BartenderEntrie> {
  final Value<String> modelBartender;
  final Value<String> modelBartenderPosition;
  const BartenderEntriesCompanion({
    this.modelBartender = const Value.absent(),
    this.modelBartenderPosition = const Value.absent(),
  });
  BartenderEntriesCompanion.insert({
    @required String modelBartender,
    @required String modelBartenderPosition,
  })  : modelBartender = Value(modelBartender),
        modelBartenderPosition = Value(modelBartenderPosition);
  static Insertable<BartenderEntrie> custom({
    Expression<String> modelBartender,
    Expression<String> modelBartenderPosition,
  }) {
    return RawValuesInsertable({
      if (modelBartender != null) 'model_bartender': modelBartender,
      if (modelBartenderPosition != null)
        'model_bartender_position': modelBartenderPosition,
    });
  }

  BartenderEntriesCompanion copyWith(
      {Value<String> modelBartender, Value<String> modelBartenderPosition}) {
    return BartenderEntriesCompanion(
      modelBartender: modelBartender ?? this.modelBartender,
      modelBartenderPosition:
          modelBartenderPosition ?? this.modelBartenderPosition,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (modelBartender.present) {
      map['model_bartender'] = Variable<String>(modelBartender.value);
    }
    if (modelBartenderPosition.present) {
      map['model_bartender_position'] =
          Variable<String>(modelBartenderPosition.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BartenderEntriesCompanion(')
          ..write('modelBartender: $modelBartender, ')
          ..write('modelBartenderPosition: $modelBartenderPosition')
          ..write(')'))
        .toString();
  }
}

class $BartenderEntriesTable extends BartenderEntries
    with TableInfo<$BartenderEntriesTable, BartenderEntrie> {
  final GeneratedDatabase _db;
  final String _alias;
  $BartenderEntriesTable(this._db, [this._alias]);
  final VerificationMeta _modelBartenderMeta =
      const VerificationMeta('modelBartender');
  GeneratedTextColumn _modelBartender;
  @override
  GeneratedTextColumn get modelBartender =>
      _modelBartender ??= _constructModelBartender();
  GeneratedTextColumn _constructModelBartender() {
    return GeneratedTextColumn(
      'model_bartender',
      $tableName,
      false,
    );
  }

  final VerificationMeta _modelBartenderPositionMeta =
      const VerificationMeta('modelBartenderPosition');
  GeneratedTextColumn _modelBartenderPosition;
  @override
  GeneratedTextColumn get modelBartenderPosition =>
      _modelBartenderPosition ??= _constructModelBartenderPosition();
  GeneratedTextColumn _constructModelBartenderPosition() {
    return GeneratedTextColumn(
      'model_bartender_position',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [modelBartender, modelBartenderPosition];
  @override
  $BartenderEntriesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'bartender_entries';
  @override
  final String actualTableName = 'bartender_entries';
  @override
  VerificationContext validateIntegrity(Insertable<BartenderEntrie> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('model_bartender')) {
      context.handle(
          _modelBartenderMeta,
          modelBartender.isAcceptableOrUnknown(
              data['model_bartender'], _modelBartenderMeta));
    } else if (isInserting) {
      context.missing(_modelBartenderMeta);
    }
    if (data.containsKey('model_bartender_position')) {
      context.handle(
          _modelBartenderPositionMeta,
          modelBartenderPosition.isAcceptableOrUnknown(
              data['model_bartender_position'], _modelBartenderPositionMeta));
    } else if (isInserting) {
      context.missing(_modelBartenderPositionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  BartenderEntrie map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return BartenderEntrie.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $BartenderEntriesTable createAlias(String alias) {
    return $BartenderEntriesTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ModelPostLoginsTable _modelPostLogins;
  $ModelPostLoginsTable get modelPostLogins =>
      _modelPostLogins ??= $ModelPostLoginsTable(this);
  $ModelBartendersTable _modelBartenders;
  $ModelBartendersTable get modelBartenders =>
      _modelBartenders ??= $ModelBartendersTable(this);
  $ModelBartenderPositionsTable _modelBartenderPositions;
  $ModelBartenderPositionsTable get modelBartenderPositions =>
      _modelBartenderPositions ??= $ModelBartenderPositionsTable(this);
  $BartenderEntriesTable _bartenderEntries;
  $BartenderEntriesTable get bartenderEntries =>
      _bartenderEntries ??= $BartenderEntriesTable(this);
  ModelPostLoginDao _modelPostLoginDao;
  ModelPostLoginDao get modelPostLoginDao =>
      _modelPostLoginDao ??= ModelPostLoginDao(this as MyDatabase);
  ModelBartenderDao _modelBartenderDao;
  ModelBartenderDao get modelBartenderDao =>
      _modelBartenderDao ??= ModelBartenderDao(this as MyDatabase);
  ModelBartenderEntryDao _modelBartenderEntryDao;
  ModelBartenderEntryDao get modelBartenderEntryDao =>
      _modelBartenderEntryDao ??= ModelBartenderEntryDao(this as MyDatabase);
  ModelbartenderPositionDao _modelbartenderPositionDao;
  ModelbartenderPositionDao get modelbartenderPositionDao =>
      _modelbartenderPositionDao ??=
          ModelbartenderPositionDao(this as MyDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        modelPostLogins,
        modelBartenders,
        modelBartenderPositions,
        bartenderEntries
      ];
}
