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

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ModelPostLoginsTable _modelPostLogins;
  $ModelPostLoginsTable get modelPostLogins =>
      _modelPostLogins ??= $ModelPostLoginsTable(this);
  ModelPostLoginDao _modelPostLoginDao;
  ModelPostLoginDao get modelPostLoginDao =>
      _modelPostLoginDao ??= ModelPostLoginDao(this as MyDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [modelPostLogins];
}
