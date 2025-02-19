import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

Future<void> showAlertDialog({
  @required BuildContext context,
  @required String title,
  @required String content,
  @required String defaultActionText,
}) async {
  if ( Platform.isIOS){
    return await showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            CupertinoDialogAction(
              child: Text(defaultActionText),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        ));

  }else {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            FlatButton(
              child: Text(defaultActionText),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        ));
  }
}
