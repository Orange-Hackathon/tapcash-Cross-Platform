// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class GreyLabel extends StatelessWidget {
  String? text = "";
  GreyLabel({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 28),
      child: Text(
        text!,
        style: const TextStyle(
          color: Color(0xFF939094),
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
      ),
    );
  }
}
