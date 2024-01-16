import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final List<Widget> buttons;

  MyButton({required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttons,
    );
  }
}

class CustomButton extends StatefulWidget {
  final String content;
  final Function(bool) onTap;
  final VoidCallback onReset;
  final Color buttonColor;

  CustomButton({
    required this.content,
    required this.onTap,
    required this.onReset,
    required this.buttonColor,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isCorrect = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCorrect = true;
        });
        widget.onTap(isCorrect);

        Future.delayed(const Duration(seconds: 2), () {
          setState(() {
            isCorrect = false;
          });
          widget.onReset();
        });
      },
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: isCorrect ? widget.buttonColor : Colors.yellow,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            widget.content,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ),
      
      ),
    );
  }
}
