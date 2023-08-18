import 'package:flutter/material.dart';
//import 'package:pub_dev/constants.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color buttonColor;
  final VoidCallback onpress;
  const MyButton(
      {super.key,
      this.title = "",
      this.buttonColor = const Color(0xffa5a5a5),
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: buttonColor,
            ),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
