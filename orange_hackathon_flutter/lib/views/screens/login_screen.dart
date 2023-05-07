import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/views/screens/forgot_pin_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/on_boarding_screen.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_text_field.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return Login();
  }
}

class Login extends State<LoginScreen> {
  var phoneController = TextEditingController();
  var pinController = TextEditingController();
  bool isLabelVisible1 = true;
  bool isLabelVisible2 = true;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenHeight = size.height;
    final double screenWidth = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 75,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                ],
              ),
            ),
            const SizedBox(
              height: 44,
            ),
            const Text(
              "Login",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'poppins'),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: HexColor("#EFEFEF"),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 14.4, bottom: 14.4, left: 16),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    onTap: () {
                      setState(() {
                        isLabelVisible1 = false;
                      });
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: isLabelVisible1 ? 'Phone number' : null,
                        labelStyle: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: HexColor("#939094"))),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: HexColor("#EFEFEF"),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 14.4, bottom: 14.4, left: 16),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    controller: pinController,
                    keyboardType: TextInputType.number,
                    onTap: () {
                      setState(() {
                        isLabelVisible2 = false;
                      });
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: isLabelVisible2 ? 'PIN' : null,
                        labelStyle: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: HexColor("#939094"))),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.6 * screenWidth),
              child: TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.zero),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    shadowColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPinScreen()));
                  },
                  child: Text(
                    'Forgot your PIN?',
                    style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'poppins',
                        color: HexColor("#939094"),
                        fontWeight: FontWeight.w400),
                  )),
            ),
            SizedBox(
              height: 0.30 * screenHeight,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Container(
                  height: 48,
                  width: double.infinity,
                  child: DefaultButton(
                      onSubmitted: () {},
                      color: HexColor("#333E96"),
                      text: "Login",
                      textColor: HexColor("#F7F7F7")),
                )),
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: DefaultButton(
                      onSubmitted: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnBoardingScreen()));
                      },
                      color: HexColor("#E3E3E4"),
                      text: "Sign up",
                      textColor: HexColor("#939094")),
                )),
          ],
        ),
      ),
    );
  }
}
