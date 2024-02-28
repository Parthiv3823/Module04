import 'package:flutter/material.dart';

class Question2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Alert Dialog Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Important Message'),
                    content: Text(
                      'This is a simple alert dialog with a title, description, and icon.',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('OK'),
                      ),
                    ],
                    icon: Icon(
                      Icons.info_outline,
                      color: Colors.blue,
                      size: 24.0,
                    ),
                  );
                },
              );
            },
            child: Text('Show Alert Dialog'),
          ),
        ),
      ),
    );
  }
}