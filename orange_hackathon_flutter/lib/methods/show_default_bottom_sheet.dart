import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void showDefaultBottomSheet(BuildContext context, String text1, String text2,
    String buttonText, Function buttonFunc) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
          height: 300,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: Column(
            children: [
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 150),
                child: Text(
                  "______________",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 32),
              Icon(
                Icons.check_circle_outline_rounded,
                size: 72,
                color: HexColor("#358600"),
              ),
              const SizedBox(height: 16),
              Text(
                text1,
                style: const TextStyle(
                    fontSize: 12,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400),
              ),
              Text(
                text2,
                style: const TextStyle(
                    fontSize: 12,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 42,
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 24, right: 24, bottom: 0),
                  child: Container(
                      height: 40,
                      width: 146,
                      child: ElevatedButton(
                        onPressed: () {
                          buttonFunc();
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          primary: HexColor("#333E96"),
                        ),
                        child: Text(
                          buttonText,
                          style: TextStyle(
                              fontSize: 14.0,
                              color: HexColor("#F7F7F7"),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'poppins'),
                        ),
                      ))),
            ],
          ));
    },
  );
}
