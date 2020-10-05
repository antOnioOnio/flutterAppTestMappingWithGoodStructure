import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_mapping/API/api_frontwork.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'API/api_service.dart';
import 'API/datacacheService.dart';
import 'UI/SignIn.dart';
import 'repositories/main_repository.dart';
import 'database/appDataBaseFloor.dart';

void main() async {
  final database =
      await $FloorAppDataBase.databaseBuilder('flutter_database.db').build();
/*  final dao = database.modelBartenderDao;*/
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp(
    sharedPreferences: sharedPreferences,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, @required this.sharedPreferences}) : super(key: key);
  final SharedPreferences sharedPreferences;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<DataRepository>(
      create: (_) => DataRepository(
        apiService: APIService(APIfrontWork()),
        dataCacheService: DataCacheService(
          sharedPreferences: sharedPreferences,
        ),
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
