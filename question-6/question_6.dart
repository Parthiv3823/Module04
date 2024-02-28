import 'package:flutter/material.dart';

class questiion6 extends StatelessWidget {
  const questiion6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questin 6"),
      ),
      body: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextFormField(
            keyboardType:TextInputType.datetime,
            controller: _dobController,
            onTap: () {
              pickDate(context);
            },
            decoration: InputDecoration(
                labelText: "DOB",
                hintText: "Select Date of Birth",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide(color: Colors.black45),
                  gapPadding: 10,
                )
            ),

          ),
        ),
      ),
    );
  }

  Future<void> pickDate(BuildContext context) async {
    var dateTime = await showDatePicker(

        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime.now(),
        fieldLabelText: 'Date of birth',
        helpText: 'Select date of birth',
        confirmText: 'DONE',
        fieldHintText: 'dd/MM/yyyy',
        errorInvalidText: 'invalid text',
        errorFormatText: 'invalid format text'
    );
    if(dateTime != null){
      var dob = "${dateTime.day.toString().padLeft(2,'0')}/${dateTime.month.toString().padLeft(2, '0')}/${dateTime.year}";
      dob = _dobController.text;
    }
    else{
      print("Select Date of Birth");
    }

  }
}
