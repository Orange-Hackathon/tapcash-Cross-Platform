import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';



void showSnackBar(BuildContext context, String msg) {
   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom + 140,
        left: 10,
        right: 10,
      ),
      // padding: const EdgeInsets.symmetric(
      //     horizontal: 8.0, vertical: 150),
      behavior: SnackBarBehavior.floating,
      elevation: 10.0,
      backgroundColor: HexColor("#333E96"),
      duration: const Duration(seconds: 3),
      content: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.phone_disabled_rounded,
            color: Colors.white,
          ),
          const SizedBox(
            width: 7,
          ),
          Text(
           msg,
            style: const TextStyle(color: Colors.white),
          )
        ],
      )));
}
