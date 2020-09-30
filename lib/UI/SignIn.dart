import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test_mapping/UI/show_alert_dialog.dart';
import 'package:test_mapping/models/postlogin.dart';
import 'package:test_mapping/repositories/main_repository.dart';
import 'package:test_mapping/widget/widget.dart';
import 'package:provider/provider.dart';

import 'mainscreen.dart';

class SignIn extends StatefulWidget {
  SignIn();

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isLoading = false;
  final formKey = GlobalKey<FormState>();
  TextEditingController userNameTextEditingController =
      new TextEditingController();
  TextEditingController passwordTextEditingController =
      new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  sigIn() async {
    if (formKey.currentState.validate()) {
      try {
        PostLogin newPost = new PostLogin(
            grant_type: "password",
            username: userNameTextEditingController.text,
            password: passwordTextEditingController.text);
        final dataRepository =
            Provider.of<DataRepository>(context, listen: false);

        setState(() {
          isLoading = true;
        });

        bool stateLogin = await dataRepository.createPostLogin(newPost.toMap());

        isLoading = false;
        if (stateLogin) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ExampleScreen(),
            ),
          );
        }
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
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : Scaffold(
            appBar: appBarMain(context),
            body: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height - 50,
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Form(
                        key: formKey,
                        child: TextFormField(
                          validator: (val) {
                            return val.isEmpty || val.length < 2
                                ? 'Please provide a username'
                                : null;
                          },
                          controller: userNameTextEditingController,
                          style: simpleTextStyle(),
                          decoration: textFieldInputDecoration('user'),
                        ),
                      ),
                      TextField(
                        controller: passwordTextEditingController,
                        style: simpleTextStyle(),
                        decoration: textFieldInputDecoration('password'),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Text(
                            'Forgot Password?',
                            style: simpleTextStyle(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          sigIn();
                          print('clicked');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  const Color(0xff007ef4),
                                  const Color(0xff2a75bc),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          child: Text('Sign in', style: mediumTextStyle()),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          'Sign in with Google',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dont have account? ',
                            style: mediumTextStyle(),
                          ),
                          GestureDetector(
                            onTap: () {
                              /* widget.toggle();*/
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                'Register now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
