import 'package:flutter/material.dart';
import '../../../models/dashboard/dashboard_home_model.dart';
import '../../widgets/dashboard/dashboard_text.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        // leading: ,
        //title of the page
        leading: IconButton(
          icon: returnArrowIcon,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      //create a circle user avatar containing user's first letter of his name
      body: ListView(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xff1B3BBB),
            child: Text(
              "M",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 38,
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          const Center(
            child: Text(
              "Mamdouh",
              style: TextStyle(
                color: Color(0xFF1A1A1A),
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GreyLabel(text: "Personal INFO"),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 28),
                child: const Text(
                  "Mamdouh Ahmed",
                  style: TextStyle(
                    color: Color(0xFF333E96),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              //edit Icon button on the right
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  right: 40,
                ),
                child: IconButton(
                  splashRadius: 20,
                  onPressed: () {},
                  visualDensity: VisualDensity.compact,
                  icon: editIcon,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.only(left: 28),
            child: const Text(
              "mamdouhattia31@gmail.com",
              style: TextStyle(
                color: Color(0xFF1A1A1A),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.only(left: 28),
            child: const Text(
              "+201275400234",
              style: TextStyle(
                color: Color(0xFF1A1A1A),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          //line
          Container(
            margin: const EdgeInsets.only(left: 26, right: 26),
            height: 1,
            color: const Color(0xFFCCCCCC),
          ),
          const SizedBox(
            height: 16,
          ),
          GreyLabel(text: "Security"),
          const SizedBox(
            height: 16,
          ),
          //a row of 4 solid circles black coloured
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                for (int i = 0; i < 4; i++)
                  const Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: Color(0xff1A1A1A),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          GreyLabel(text: "Help & Support"),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: InkWell(
              onTap: () {},
              child: const Text(
                "Chat Support",
                style: TextStyle(
                  color: Color(0xFF333E96),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
