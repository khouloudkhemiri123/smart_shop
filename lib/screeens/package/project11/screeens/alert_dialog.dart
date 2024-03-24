import 'package:flutter/material.dart';
import 'package:projectb/logo.dart';
import 'package:projectb/screeens/screens.dart';

enum DialogsAction { yes, cancel }

class AlertDialogs {
  static Future<DialogsAction> yesCancelDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(body),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Navigate back to the Screens screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Logo()),
                );
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(DialogsAction.cancel);
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );

    return action ?? DialogsAction.cancel;
  }
}
