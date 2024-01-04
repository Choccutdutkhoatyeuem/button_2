import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _buttonColor = Colors.blue;
  void _changedColor() {
    setState(() {
       _buttonColor = Colors.grey;
       });
      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          _buttonColor = Colors.blue;
      });
    });
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: _changedColor,
              style: ElevatedButton.styleFrom(
              primary: _buttonColor, 
              padding: const EdgeInsets.all(20),
            ), 
            child: const Text(
              'Touch me',
              style: TextStyle(
                color: Colors.white
              ),
              ),
          ),
        ),
    );
  }   
}

 