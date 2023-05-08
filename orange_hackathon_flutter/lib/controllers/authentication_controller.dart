import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:orange_hackathon_flutter/constants/constants.dart';





class AuthenticationProvider extends ChangeNotifier {

  int onBoardingCurrentIndex = 0;
  bool isPhoneLabelVisible = true;
  bool isFirstNameLabelVisible = true;
  bool isLastNameLabelVisible = true;
  bool isEmailLabelVisible = true;
  bool isPhoneLoginLabelVisible = true;
  bool isPinLoginLabelVisible = true;
  bool isEmailForgotPinLabelVisible = true;


  Future checkAvailablePhone(String phoneNumber) async {
    String request = '/api/available-phone?phoneNumber=';
    Uri url = Uri.parse(urlApi + request + phoneNumber);
    final response = await http.get(url);

    return response;
  }

  
  changeOnBoardingCurrentIndex(index) {
    onBoardingCurrentIndex = index;
  }

  nextPage(PageController pageController) {
    pageController.nextPage(duration: kDuration, curve: kCurve);
  }

  previousPage(PageController pageController) {
    pageController.previousPage(duration: kDuration, curve: kCurve);
  }

  phonelabelVisibleUnvisible() {
    isPhoneLabelVisible = false;
    notifyListeners();
  }

  firstNamelabelVisibleUnvisible() {
    isFirstNameLabelVisible = false;
    notifyListeners();
  }

  lastNamelabelVisibleUnvisible() {
    isLastNameLabelVisible = false;
    notifyListeners();
  }

  emaillabelVisibleUnvisible() {
    isEmailLabelVisible = false;
    notifyListeners();
  }

  phoneLoginlabelVisibleUnvisible() {
    isPhoneLoginLabelVisible = false;
    notifyListeners();
  }

  pinLoginlabelVisibleUnvisible() {
    isPinLoginLabelVisible = false;
    notifyListeners();
  }

  emailForgotPinlabelVisibleUnvisible() {
    isEmailForgotPinLabelVisible = false;
    notifyListeners();
  }
}
