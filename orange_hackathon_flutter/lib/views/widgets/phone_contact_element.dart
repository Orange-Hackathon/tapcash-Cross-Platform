import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/methods/show_send_bottom_sheet.dart';

class PhoneContactElement extends StatelessWidget {
  const PhoneContactElement({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showSendSheet(context);
      },
      child: Row(
        children: [
          const CircleAvatar(
            radius: 16,
            child: Text(
              "H",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'poppins'),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Habiba",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'poppins'),
              ),
              Text(
                "098765432",
                style: TextStyle(
                    color: HexColor("#939094"),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    fontFamily: 'poppins'),
              )
            ],
          )
        ],
      ),
    );
  }
}
