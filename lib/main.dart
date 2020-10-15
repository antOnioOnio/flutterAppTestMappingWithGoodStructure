import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stetho/flutter_stetho.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:test_mapping/database/appDataBase.dart';

import 'API/api_frontwork_service.dart';
import 'API/datacacheService.dart';
import 'UI/SignIn.dart';
import 'repositories/main_repository.dart';

void main() async {
  Stetho.initialize();
  WidgetsFlutterBinding.ensureInitialized();
  _setupLogging();
  await initializeDateFormatting();
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp(
    sharedPreferences: sharedPreferences,
  ));
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, @required this.sharedPreferences}) : super(key: key);
  final SharedPreferences sharedPreferences;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final dio = Dio();
    return Provider<DataRepository>(
      create: (_) => DataRepository(
        apiService: APIfrontWorkService(dio),
        dataCacheService: DataCacheService(
          sharedPreferences: sharedPreferences,
        ),
        postLoginDao: MyDatabase().modelPostLoginDao,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coronavirus tracker',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF101010),
          cardColor: Color(0xFF222222),
        ),
        home: SignIn(),
      ),
    );
  }
}
