import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/controllers/authentication_controller.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_text_field.dart';
import 'package:provider/provider.dart';

class PhoneNumberScreen extends StatefulWidget {
  late PageController pageController;
  PhoneNumberScreen({super.key, required this.pageController});

  @override
  State<StatefulWidget> createState() {
    return PhoneNumber();
  }
}

// ignore: must_be_immutable
class PhoneNumber extends State<PhoneNumberScreen> {
  var phoneController = TextEditingController();
  bool isLabelVisible = true;

  static const _kDuration = Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenHeight = size.height;
    final double screenWidth = size.width;
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: screenHeight * 0.85,
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
                                        fontSize: 12, fontFamily: 'poppins'),
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
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 14.4, bottom: 14.4, left: 16),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            onTap: () {
                              setState(() {
                                isLabelVisible = false;
                              });
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText:
                                    isLabelVisible ? 'Phone number' : null,
                                labelStyle: TextStyle(
                                    fontFamily: 'poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor("#939094"))),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        fontFamily: 'poppins',
                        color: HexColor("#939094")),
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        fontFamily: 'poppins',
                        color: HexColor("#1A1A1A")),
                  ),
                ],
              ),
              SizedBox(
                height: 0.44 * screenHeight,
              ),
              Consumer<AuthenticationProvider>(
                builder: (context, value, child) => Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, bottom: 0),
                    child: SizedBox(
                      height: 48,
                      width: 312,
                      child: DefaultButton(
                          onSubmitted: () {
                            print(value
                                .checkAvailablePhone(phoneController.text));
                            // widget.pageController
                            //     .nextPage(duration: _kDuration, curve: _kCurve);
                          },
                          color: HexColor("#E3E3E4"),
                          textColor: HexColor("#939094"),
                          text: "Sign up"),
                    )),
              )
            ],
          ),
        ));
  }
}
