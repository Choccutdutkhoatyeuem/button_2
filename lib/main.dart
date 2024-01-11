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
  String _displayText = 'Waiting...';
  Color _button1Color = Colors.yellow;
  Color _button2Color = Colors.yellow;
  Color _button3Color = Colors.yellow;
  Color _button4Color = Colors.yellow;

  void _onButtonPressed(int buttonNumber) {
    setState(() {
      _displayText = buttonNumber == 2 ? 'True' : 'False';

      _button1Color = buttonNumber == 1 ? Colors.red : Colors.yellow;
      _button2Color = buttonNumber == 2 ? Colors.blue : Colors.yellow;
      _button3Color = buttonNumber == 3 ? Colors.red : Colors.yellow;
      _button4Color = buttonNumber == 4 ? Colors.red : Colors.yellow;
    });
    Future.delayed(Duration(seconds: 1), () {
     setState(() {
      _displayText ='Waiting...';
      _button1Color = Colors.yellow;
      _button2Color = Colors.yellow;
      _button3Color = Colors.yellow;
      _button4Color = Colors.yellow;

     });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _displayText,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _onButtonPressed(1),
              style: ElevatedButton.styleFrom(
                primary: _button1Color,
                padding: const EdgeInsets.all(20),
              ),
              
              child: const Text(
                'Click Me!',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _onButtonPressed(2),
              style: ElevatedButton.styleFrom(
                primary: _button2Color,
                padding: const EdgeInsets.all(20),
              ),
              child: const Text(
                'Click Me!',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _onButtonPressed(3),
              style: ElevatedButton.styleFrom(
                primary: _button3Color,
                padding: const EdgeInsets.all(20),
              ),
              child: const Text(
                'Click Me!',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _onButtonPressed(4),
              style: ElevatedButton.styleFrom(
                primary: _button4Color,
                padding: const EdgeInsets.all(20),
              ),
              child: const Text(
                'Click Me!',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
