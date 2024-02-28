import 'package:flutter/material.dart';

class Question4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CitySelectionScreen(),
    );
  }
}

class CitySelectionScreen extends StatefulWidget {
  @override
  _CitySelectionScreenState createState() => _CitySelectionScreenState();
}

class _CitySelectionScreenState extends State<CitySelectionScreen> {
  String selectedCity = 'Null';

  List<String> cities = ['Gujrat','Maharashtra', 'Himachal','Kerala'];

  void _showCitySelectionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select a City',
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold)),
          content: SingleChildScrollView(
            child: Column(
              children: cities
                  .map((city) => ListTile(
                        title: Text(city),
                        onTap: () {
                          setState(() {
                            selectedCity = city;
                          });
                          Navigator.pop(context);
                        },
                      ))
                  .toList(),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Question-4',
            style: TextStyle(fontSize: 30, color: Colors.black)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),
              onPressed: _showCitySelectionDialog,
              child: Text('Select City',
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ),
            SizedBox(height: 20),
            Text('Selected City: $selectedCity',
                style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
