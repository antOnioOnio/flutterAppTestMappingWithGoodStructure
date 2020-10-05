import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:test_mapping/UI/show_alert_dialog.dart';
import 'package:test_mapping/database/models/ModelBartender.dart';
import 'package:test_mapping/database/models/ModelBartenderPosition.dart';
import 'package:test_mapping/repositories/main_repository.dart';

class ExampleScreen extends StatefulWidget {
  @override
  _ExampleScreenState createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  bool isLoading = false;

  Map createFakeBartenderes() {
    ModelBartenderPosition bartenderPosition = new ModelBartenderPosition(
        id: "6f2c3a99-2340-4e18-95ee-a4d07c0ae431",
        item: "sample string 2",
        charge: "sample string 3",
        count: 4,
        note1: "sample string 5",
        note2: "sample string 6",
        note3: "sample string 7");
    ModelBartenderPosition bartenderPosition1 = new ModelBartenderPosition(
        id: "6f2c3a99-2340-4e18-95ee-a4d07c0ae432",
        item: "sample string 2",
        charge: "sample string 3",
        count: 4,
        note1: "sample string 5",
        note2: "sample string 6",
        note3: "sample string 7");

    List<ModelBartenderPosition> list = [bartenderPosition, bartenderPosition1];

    ModelBartender bartender = new ModelBartender(
      id: "94a15183-3a1b-4bb1-984e-eed8c1d71572",
      bartenderNr: "97bbd28a-5bb4-4356-b6de-6f756e17d2e4",
      notes: "sample string 3",
      printDefinition: "sample string 4",
      printer: "sample string 5",
      positions: list,
    );


    return bartender.toJson();
  }

  getBartenders() async {
    try {
      final dataRepository =
          Provider.of<DataRepository>(context, listen: false);

      bool state = await dataRepository.postBartenders(createFakeBartenderes());

    } on SocketException catch (_) {
      showAlertDialog(
          context: context,
          title: 'Connection Error',
          content: 'Could not retrieve data, please try again later',
          defaultActionText: 'OK');
      setState(() {
        isLoading = false;
      });
    }
    catch (_) {
      showAlertDialog(
          context: context,
          title: 'Uknown error',
          content: 'Please contact support or try again later',
          defaultActionText: 'OK');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test mapping'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: GestureDetector(
              onTap: () {
                print("cliqueado");
                getBartenders();
              },
              child: Text(
                'GetBartender',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
