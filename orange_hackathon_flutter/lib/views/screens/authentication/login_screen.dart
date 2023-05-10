import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/controllers/authentication_controller.dart';
import 'package:orange_hackathon_flutter/views/screens/authentication/forgot_pin_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/authentication/on_boarding_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/dashboard/dashboard.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  var phoneController = TextEditingController();
  var pinController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenHeight = size.height;
    final double screenWidth = size.width;
    return Consumer<AuthenticationUIProvider>(
        builder: (context, value, child) => Scaffold(
              body: SingleChildScrollView(
                  child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 65,
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
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontFamily: 'poppins'),
                    ),
                    const SizedBox(
                      height: 32,
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
                        child: TextFormField(
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          maxLength: 11,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Please enter your phone number';
                            } else if (val.length < 11) {
                              return 'Your number must not be less than 11 digits';
                            } else {
                              return null;
                            }
                          },
                          cursorColor: Colors.black,
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              counterText: '',
                              errorStyle: const TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.4, horizontal: 16),
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
                        child: TextFormField(
                          maxLength: 4,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Please enter your PIN';
                            } else if (val.length != 4) {
                              return 'Your PIN must be 4 digits';
                            } else {
                              return null;
                            }
                          },
                          cursorColor: Colors.black,
                          controller: pinController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              counterText: '',
                              errorStyle: const TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.4, horizontal: 16),
                              border: InputBorder.none,
                              hintText: 'PIN',
                              hintStyle: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("#939094"))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0.6 * screenWidth),
                      child: TextButton(
                          style: ButtonStyle(
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    EdgeInsets.zero),
                            overlayColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            shadowColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
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
                                fontSize: 12,
                                fontFamily: 'poppins',
                                color: HexColor("#939094"),
                                fontWeight: FontWeight.w400),
                          )),
                    ),
                    SizedBox(
                      height: 0.25 * screenHeight,
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
                                if (formKey.currentState!.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Dashboard()));
                                }
                              },
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
                              onSubmitted: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const OnBoardingScreen()));
                              },
                              color: HexColor("#E3E3E4"),
                              text: "Sign up",
                              textColor: HexColor("#939094")),
                        )),
                  ],
                ),
              )),
            ));
  }
}
