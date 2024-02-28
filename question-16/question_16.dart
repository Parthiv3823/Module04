import 'package:flutter/material.dart';

void main() {
  runApp(Question16());
}

class Question16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sum App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _firstNumberController = TextEditingController();
  final _secondNumberController = TextEditingController();
  double? _sum;

  @override
  void dispose() {
    _firstNumberController.dispose();
    _secondNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sum App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _firstNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'First Number',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _secondNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Second Number',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => _calculateSum(),
              child: Text('Calculate'),
            ),
            if (_sum != null)
              Text(
                'Sum: $_sum',
                style: TextStyle(fontSize: 20.0),
              ),
          ],
        ),
      ),
    );
  }

  void _calculateSum() {
    try {
      final firstNumber = double.parse(_firstNumberController.text);
      final secondNumber = double.parse(_secondNumberController.text);
      _sum = firstNumber + secondNumber;
      setState(() {});
      _navigateToResultActivity(); // Navigate to ResultActivity
    } catch (error) {
      // Handle potential errors (e.g., invalid input)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid input: Please enter valid numbers.'),
        ),
      );
    }
  }

  void _navigateToResultActivity() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultActivity(sum: _sum!)),
    );
  }
}

class ResultActivity extends StatelessWidget {
  final double sum;

  const ResultActivity({Key? key, required this.sum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Text(
          'The sum is: $sum',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}