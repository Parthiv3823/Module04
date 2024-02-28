import 'package:flutter/material.dart';

class Question13 extends StatefulWidget {
  @override
  _Question13State createState() => _Question13State();
}

class _Question13State extends State<Question13> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 500,
          child: Center(
            child: CircleAvatar(
              radius: double.infinity,
              backgroundImage: AssetImage('assets/images/hi.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 13'),
      ),
      body: Center(
        child: Text('Hello...', style: TextStyle(fontSize: 28)),
      ),
    );
  }
}
