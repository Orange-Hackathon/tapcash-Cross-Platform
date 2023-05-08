import 'package:flutter/material.dart';
import 'package:orange_hackathon_flutter/controllers/authentication_controller.dart';
import 'package:orange_hackathon_flutter/views/screens/create_pin_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/personal_info_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/phone_number_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/verify_phone_number.dart';
import 'package:orange_hackathon_flutter/views/widgets/indicator.dart';
import 'package:provider/provider.dart';
import 'package:orange_hackathon_flutter/constants/constants.dart';

// ignore: must_be_immutable
class OnBoardingScreen extends StatelessWidget {
  final PageController pageController = PageController(initialPage: 0);

  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationUIProvider>(
        builder: (context, value, child) => Scaffold(
                body: Column(
              children: [
                const SizedBox(height: 75),
                (value.onBoardingCurrentIndex != 0)
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: () {
                                  pageController.previousPage(
                                      duration: kDuration, curve: kCurve);
                                },
                                icon: const Icon(Icons.arrow_back)),
                          ],
                        ),
                      )
                    : const Padding(padding: EdgeInsets.all(0)),
                const SizedBox(height: 4),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 152, vertical: 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Indicator(
                              positionIndex: 0,
                              currentIndex: value.onBoardingCurrentIndex,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Indicator(
                              positionIndex: 1,
                              currentIndex: value.onBoardingCurrentIndex,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Indicator(
                              positionIndex: 2,
                              currentIndex: value.onBoardingCurrentIndex,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Indicator(
                              positionIndex: 3,
                              currentIndex: value.onBoardingCurrentIndex,
                            ),
                          ],
                        ),
                      ),
                      PageView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: pageController,
                        onPageChanged: value.changeOnBoardingCurrentIndex(
                            value.onBoardingCurrentIndex),
                        children: <Widget>[
                          PhoneNumberScreen(
                            pageController: pageController,
                          ),
                          VerifyPhoneNumberScreen(
                            pageController: pageController,
                          ),
                          PersonalInfoScreen(
                            pageController: pageController,
                          ),
                          CreatePinScreen(pageController: pageController),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
