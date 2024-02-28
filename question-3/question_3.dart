import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Question3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlertDialogDemo(),
    );
  }
}

class AlertDialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Choose an option'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop('Positive');
                      },
                      child: Text('Positive'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop('Negative');
                      },
                      child: Text('Negative'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop('Neutral');
                      },
                      child: Text('Neutral'),
                    ),
                  ],
                );
              },
            ).then((value) => showToast(value));
          },
          child: Text('Show AlertDialog'),
        ),
      ),
    );
  }

  void showToast(String choice) {
    Fluttertoast.showToast(msg: 'You chose $choice');
  }
}
