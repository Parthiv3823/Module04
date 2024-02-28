import 'package:flutter/material.dart';

class Question5 extends StatelessWidget {
  const Question5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: q2(),
      appBar: AppBar(
        title: Text('Question5'),
      ),
    );
  }
}

class q2 extends StatelessWidget {
  const q2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ElevatedButton(onPressed: () async {
          var result = await showAlertDialog(context);
        },
          child: Text("Alert Dialog",
              style: TextStyle(
                fontSize: 30,


              )),

        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          backgroundColor: Color(0xFFBAE8E8),
          title: Text("Exit"),
          content: Text("Are you sure You want to Exit this application"),
          icon: Icon(Icons.logout),
          actions: [
            TextButton(onPressed: () {
              Navigator.pop(context, 'Yes');
            }, child: Text("Yes",
              style: TextStyle(
                  color: Color(0xFFB85C38)
              ),
            )),
            TextButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("No",
              style: TextStyle(
                  color: Color(0xFFB85C38)
              ),),)
          ],
        );
      },
    );
  }
}

