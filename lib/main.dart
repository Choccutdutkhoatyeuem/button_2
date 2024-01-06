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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(),
            const SizedBox(height: 20),
            MyButton(),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  Color _buttonColor = Colors.blue;

  void _changedColor() {
    setState(() {
      _buttonColor = Colors.grey;
    });
    Future.delayed( Duration(seconds: 1), () {
        setState(() {
          _buttonColor = Colors.blue;
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _changedColor,
      style: ElevatedButton.styleFrom(
        primary: _buttonColor,
        padding: const EdgeInsets.all(20),
      ),
      child: const Text(
        'Touch me',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
