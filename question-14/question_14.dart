import 'package:flutter/material.dart';
import 'package:moduel4/question-5/question_5.dart';

class Question14 extends StatelessWidget {
  const Question14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 26'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Question5(),
                    ));
              },
              child: Text('Click to Redirect'),
            )
          ],
        ),
      ),
    );
  }
}
