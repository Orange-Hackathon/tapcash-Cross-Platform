import 'package:flutter/material.dart';
import 'package:orange_hackathon_flutter/views/screens/confirm_pin_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/create_pin_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/login_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/personal_info_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/phone_number_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/verify_phone_number.dart';
import 'package:orange_hackathon_flutter/views/widgets/indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return OnBoarding();
  }
}

class OnBoarding extends State<OnBoardingScreen> {
  late PageController pageController;
  int currentIndex = 0;

  static const _kDuration = Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  nextFunction() {
    pageController.nextPage(duration: _kDuration, curve: _kCurve);
  }

  previousFunction() {
    pageController.previousPage(duration: _kDuration, curve: _kCurve);
  }

  onChangedFunction(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(height: 80),
        (currentIndex != 0)
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          pageController.previousPage(
                              duration: _kDuration, curve: _kCurve);
                        },
                        icon: const Icon(Icons.arrow_back)),
                  ],
                ),
              )
            : const Padding(padding: EdgeInsets.all(0)),
        const SizedBox(height: 20),
        Expanded(
          child: Stack(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 152, vertical: 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Indicator(
                      positionIndex: 0,
                      currentIndex: currentIndex,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Indicator(
                      positionIndex: 1,
                      currentIndex: currentIndex,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Indicator(
                      positionIndex: 2,
                      currentIndex: currentIndex,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Indicator(
                      positionIndex: 3,
                      currentIndex: currentIndex,
                    ),
                    // const SizedBox(
                    //   width: 8,
                    // ),
                    // Indicator(
                    //   positionIndex: 4,
                    //   currentIndex: currentIndex,
                    // ),
                  ],
                ),
              ),
              PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                onPageChanged: onChangedFunction,
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
                  //ConfirmPinScreen(pageController: pageController)
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
