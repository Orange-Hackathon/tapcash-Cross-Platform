import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/controllers/authentication_controller.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class PersonalInfoScreen extends StatelessWidget {
  late PageController pageController;
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();

  PersonalInfoScreen({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenHeight = size.height;

    return Consumer<AuthenticationProvider>(
        builder: (context, value, child) => SingleChildScrollView(
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
                      padding: const EdgeInsets.only(
                          top: 14.4, bottom: 14.4, left: 16),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        controller: firstNameController,
                        keyboardType: TextInputType.name,
                        onTap: () {
                          value.firstNamelabelVisibleUnvisible();
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: value.isFirstNameLabelVisible
                                ? 'First name'
                                : null,
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
                      padding: const EdgeInsets.only(
                          top: 14.4, bottom: 14.4, left: 16),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        controller: lastNameController,
                        keyboardType: TextInputType.name,
                        onTap: () {
                          value.lastNamelabelVisibleUnvisible();
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: value.isLastNameLabelVisible
                                ? 'Last name'
                                : null,
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
                      padding: const EdgeInsets.only(
                          top: 14.4, bottom: 14.4, left: 16),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        onTap: () {
                          value.emaillabelVisibleUnvisible();
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: value.isEmailLabelVisible
                                ? 'Youremail@gmail.com'
                                : null,
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
                  SizedBox(
                    height: 48,
                    width: 312,
                    child: DefaultButton(
                        onSubmitted: () {
                          value.nextPage(pageController);
                        },
                        color: HexColor("#E3E3E4"),
                        textColor: HexColor("#939094"),
                        text: "Next"),
                  )
                ],
              ),
            )));
  }
}
