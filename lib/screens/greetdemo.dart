import 'package:flutter/material.dart';

class GreetApp extends StatefulWidget {
  const GreetApp({Key? key}) : super(key: key);

  @override
  _GreetAppState createState() => _GreetAppState();
}

class _GreetAppState extends State<GreetApp> {
  String firstName = "";
  String lastName = "";
  String message = "";
  giveMeFirstName(String currentValue) {
    firstName = currentValue;
  }

  giveMeLastName(String currentValue) {
    lastName = currentValue;
  }

  // Widget _getTextField(String name, Function fn) {
  Widget _getTextField(String name, TextEditingController ctrl) {
    return Row(
      children: [
        Expanded(
          child: Text(name),
          flex: 1,
        ),
        Expanded(
          child: TextField(
            controller: ctrl,
            // onChanged: (String currentValue) {
            //   print("Current Value $currentValue");
            //   //fn(currentValue);
            // },
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black, width: 2)),
                hintText: 'Type $name here'),
          ),
          flex: 2,
        )
      ],
    );
  }

  final titleCase =
      (String name) => name[0].toUpperCase() + name.substring(1).toLowerCase();

  Widget _getButton(String value, Function fn) {
    return ElevatedButton(
        onPressed: () {
          fn();
        },
        child: Text(value));
  }

  showMessage() {
    //message = "Welcome " + titleCase(firstName) + " " + titleCase(lastName);
    message = "Welcome " + titleCase(tc1.text) + " " + titleCase(tc2.text);
    setState(() {});
  }

  clearAll() {
    message = "";
    tc1.text = "";
    tc2.text = "";
    setState(() {});
  }

  TextEditingController tc1 = TextEditingController();
  TextEditingController tc2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Greet App'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          //children: [TextField(), TextField()],
          children: [
            //_getTextField('First Name', giveMeFirstName),
            _getTextField('First Name', tc1),
            SizedBox(
              height: 10,
            ),
            // _getTextField('Last Name', giveMeLastName),
            _getTextField('Last Name', tc2),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _getButton('Greet', showMessage),
                SizedBox(
                  width: 20,
                ),
                _getButton('Clear All', clearAll)
              ],
            ),
            SizedBox(height: 20),
            Text(
              message,
              style: TextStyle(fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
