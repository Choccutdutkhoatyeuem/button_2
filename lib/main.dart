import 'package:flutter/material.dart';
import 'package:button_2/components/MyButton.dart';

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
  String waitingText = "Waiting...";
   Color buttonColor = Colors.yellow;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Pamyeuoi"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              waitingText,
              style: const TextStyle(fontSize: 24),
            ),

            const SizedBox(height: 20),

            MyButton(
              buttons: [
                CustomButton(
                  buttonColor: Colors.blue,
                  content: "Click Me!",
                  onTap: (isCorrect) {
                    setState(() {
                      waitingText = isCorrect ? "Correct" : "InCorrect";
                    });
                  },
                  onReset: () {
                    Future.delayed(const Duration(seconds: 1), () {
                      setState(() {
                        waitingText = "Waiting...";
                      });
                    });
                  },
                ),

                const SizedBox(height: 20),

                CustomButton(
                  buttonColor: Colors.red,
                  content: "Click Me!",
                  onTap: (isCorrect) {
                    setState(() {
                      waitingText = isCorrect ? "InCorrect" : "Correct";

                    });
                  },
                  onReset: () {
                    Future.delayed(const Duration(seconds: 1), () {
                      setState(() {
                        waitingText = "Waiting...";
                      });
                    });
                  },
                ),

                const SizedBox(height: 20),

                CustomButton(
                  buttonColor: Colors.red,
                  content: "Click Me!",
                  onTap: (isCorrect) {
                    setState(() {
                      waitingText = isCorrect ? "InCorrect" : "Correct";
                    });
                  },                 
                  onReset: () {
                    Future.delayed(const Duration(seconds: 1), () {
                      setState(() {
                        waitingText = "Waiting...";
                      });
                    });
                  },
                ),

                const SizedBox(height: 20),

                CustomButton(
                  buttonColor: Colors.red,
                  content: "Click Me!",
                  onTap: (isCorrect) {
                    setState(() {
                      waitingText = isCorrect ? "InCorrect" : "Correct";
                      
                    });
                  },
                  onReset: () {
                    Future.delayed(const Duration(seconds: 1), () {
                      setState(() {
                        waitingText = "Waiting...";
                      });
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

