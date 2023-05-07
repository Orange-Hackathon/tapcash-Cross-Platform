import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_text_field.dart';

class PersonalInfoScreen extends StatefulWidget {
  late PageController pageController;
  PersonalInfoScreen({super.key, required this.pageController});

  @override
  State<StatefulWidget> createState() {
    return PersonalInfo();
  }
}

// ignore: must_be_immutable
class PersonalInfo extends State<PersonalInfoScreen> {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  bool isLabelVisible1 = true;
  bool isLabelVisible2 = true;
  bool isLabelVisible3 = true;
  static const _kDuration = Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenHeight = size.height;
    final double screenWidth = size.width;
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32,
          ),
          const Text(
            "Personal info",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                fontFamily: 'poppins'),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Enter your first/last name as your national ID",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10,
                fontFamily: 'poppins',
                color: HexColor("#5E5E5E")),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            height: 48,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: HexColor("#EFEFEF"),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 14.4, bottom: 14.4, left: 16),
              child: TextFormField(
                cursorColor: Colors.black,
                controller: firstNameController,
                keyboardType: TextInputType.name,
                onTap: () {
                  setState(() {
                    isLabelVisible1 = false;
                  });
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: isLabelVisible1 ? 'First name' : null,
                    labelStyle: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: HexColor("#939094"))),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 48,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: HexColor("#EFEFEF"),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 14.4, bottom: 14.4, left: 16),
              child: TextFormField(
                cursorColor: Colors.black,
                controller: lastNameController,
                keyboardType: TextInputType.name,
                onTap: () {
                  setState(() {
                    isLabelVisible2 = false;
                  });
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: isLabelVisible2 ? 'Last name' : null,
                    labelStyle: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: HexColor("#939094"))),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 48,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: HexColor("#EFEFEF"),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 14.4, bottom: 14.4, left: 16),
              child: TextFormField(
                cursorColor: Colors.black,
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onTap: () {
                  setState(() {
                    isLabelVisible3 = false;
                  });
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: isLabelVisible3 ? 'Youremail@gmail.com' : null,
                    labelStyle: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: HexColor("#939094"))),
              ),
            ),
          ),
          SizedBox(
            height: 0.33 * screenHeight,
          ),
          //Spacer(),
          Container(
            height: 48,
            width: 312,
            child: DefaultButton(
                onSubmitted: () {
                  widget.pageController
                      .nextPage(duration: _kDuration, curve: _kCurve);
                },
                color: HexColor("#E3E3E4"),
                textColor: HexColor("#939094"),
                text: "Next"),
          )
        ],
      ),
    ));
  }
}
