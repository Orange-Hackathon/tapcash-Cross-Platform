import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/constants/constants.dart';
import 'package:orange_hackathon_flutter/controllers/authentication_controller.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class PersonalInfoScreen extends StatelessWidget {
  late PageController pageController;
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  PersonalInfoScreen({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenHeight = size.height;

    return Consumer<AuthenticationUIProvider>(
        builder: (context, value, child) => SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Personal info",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: 'poppins'),
                      ),
                      const SizedBox(
                        height: 10,
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
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Please enter your first name';
                            }
                          },
                          cursorColor: Colors.black,
                          controller: firstNameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              errorStyle: const TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.4, horizontal: 16),
                              border: InputBorder.none,
                              hintText: 'First name',
                              hintStyle: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("#939094"))),
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
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Please enter your last name';
                            }
                          },
                          cursorColor: Colors.black,
                          controller: lastNameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              errorStyle: const TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.4, horizontal: 16),
                              border: InputBorder.none,
                              hintText: 'Last name',
                              hintStyle: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("#939094"))),
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
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Please enter your email';
                            } else if (!EmailValidator.validate(val)) {
                              return 'Invalid email format';
                            }
                          },
                          cursorColor: Colors.black,
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.4, horizontal: 16),
                              errorStyle: const TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red),
                              border: InputBorder.none,
                              hintText: 'Youremail@gmail.com',
                              hintStyle: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("#939094"))),
                        ),
                      ),
                      SizedBox(
                        height: 0.3 * screenHeight,
                      ),
                      //Spacer(),
                      SizedBox(
                        height: 48,
                        width: 312,
                        child: DefaultButton(
                            onSubmitted: () {
                              formKey.currentState!.validate();
                              if (emailController.text != '' &&
                                  firstNameController.text != '' &&
                                  lastNameController.text != '' &&
                                  EmailValidator.validate(
                                      emailController.text)) {
                                pageController.nextPage(
                                    duration: kDuration, curve: kCurve);
                              }
                            },
                            color: HexColor("#E3E3E4"),
                            textColor: HexColor("#939094"),
                            text: "Next"),
                      )
                    ],
                  ),
                ))));
  }
}
