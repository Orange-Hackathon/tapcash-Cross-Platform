import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/constants/constants.dart';
import 'package:orange_hackathon_flutter/controllers/authentication_controller.dart';
import 'package:orange_hackathon_flutter/methods/show_snack_bar.dart';
import 'package:orange_hackathon_flutter/services/authentication_services.dart';
import 'package:orange_hackathon_flutter/views/screens/login_screen.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class PhoneNumberScreen extends StatelessWidget {
  late PageController pageController;
  var phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  PhoneNumberScreen({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenHeight = size.height;

    return Consumer2<AuthenticationUIProvider, AuthenticationServices>(
      builder: (context, value, value2, child) => SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
              height: screenHeight * 0.85,
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Welcome!",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 29,
                          fontFamily: 'poppins',
                          color: HexColor("#1A1A1A")),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Enter yout phone number, please",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          fontFamily: 'poppins',
                          color: HexColor("#5E5E5E")),
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                              flex: 2,
                              child: Stack(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: HexColor("#EFEFEF"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 14,
                                    left: 12,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/eg.jpg',
                                          width: 22,
                                          height: 16,
                                          fit: BoxFit.cover,
                                        ),
                                        const Text(
                                          " +20",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'poppins'),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          const SizedBox(
                            width: 8,
                          ),
                          Flexible(
                            flex: 7,
                            child: Container(
                              height: 48,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: HexColor("#EFEFEF"),
                              ),
                              child: TextFormField(
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Please enter your phone number';
                                  } else if (val.length < 11) {
                                    return 'Your number must not be less than 11 digits';
                                  } else {
                                    return null;
                                  }
                                },
                                
                                controller: phoneController,
                                maxLength: 11,
                                keyboardType: TextInputType.phone,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10.4, horizontal: 16),
                                    errorStyle: const TextStyle(
                                        fontFamily: 'poppins',
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.red),
                                    counterText: '',
                                    border: InputBorder.none,
                                    hintText: 'Phone number',
                                    hintStyle: TextStyle(
                                        fontFamily: 'poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: HexColor("#939094"))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              fontFamily: 'poppins',
                              color: HexColor("#939094")),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                fontFamily: 'poppins',
                                color: HexColor("#1A1A1A")),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 0.45 * screenHeight,
                      //height: 0.48 * screenHeight,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 24, right: 24, bottom: 0),
                        child: SizedBox(
                          height: 48,
                          width: 312,
                          child: DefaultButton(
                              onSubmitted: () async {
                                if (formKey.currentState!.validate()) {
                                  bool isPhoneAvailable =
                                      await value2.checkAvailablePhone(
                                          phoneController.text);

                                  if (isPhoneAvailable) {
                                    pageController.nextPage(
                                        duration: kDuration, curve: kCurve);
                                  } else {
                                    // showToast(
                                    //     "You already have an account with this number");
                                  }
                                }
                              },
                              color: HexColor("#E3E3E4"),
                              textColor: HexColor("#939094"),
                              text: "Sign up"),
                        )),
                  ],
                ),
              ))),
    );
  }
}
