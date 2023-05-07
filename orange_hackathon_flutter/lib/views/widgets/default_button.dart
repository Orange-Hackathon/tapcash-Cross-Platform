import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class DefaultButton extends StatelessWidget {
  late Function onSubmitted;
  late Color color;
  late Color textColor;
  late String text;
  DefaultButton(
      {super.key,
      required this.onSubmitted,
      required this.color,
      required this.text,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onSubmitted();
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10.0), // Adjust the radius as needed
        ),
        primary: color, // Set the background color
        // Adjust the padding as needed
        //padding: const EdgeInsets.symmetric(horizontal: 153.5, vertical: 12)
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 14.0,
            color: textColor,
            fontWeight: FontWeight.w400,
            fontFamily: 'poppins'),
      ),
    );
  }
}
