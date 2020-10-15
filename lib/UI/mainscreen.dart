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




  getBartenders() async {
    try {
      final dataRepository =
          Provider.of<DataRepository>(context, listen: false);

      bool state = await dataRepository.postBartenders();
    } on SocketException catch (_) {
      showAlertDialog(
          context: context,
          title: 'Connection Error',
          content: 'Could not retrieve data, please try again later',
          defaultActionText: 'OK');
      setState(() {
        isLoading = false;
      });
    } catch (_) {
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
