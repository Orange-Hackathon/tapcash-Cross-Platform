import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:orange_hackathon_flutter/constants/constants.dart';

class AuthenticationUIProvider extends ChangeNotifier {
  int onBoardingCurrentIndex = 0;

  bool isPhoneLabelVisible = true;

  bool isEmailInValid = false;

  bool isElectricityCompaniesShown = false;
   bool isElectricityButtonsShown = false;

  bool isPhoneLoginLabelVisible = true;
  bool isPinLoginLabelVisible = true;
  bool isEmailForgotPinLabelVisible = true;

  bool isFirstNameTap = false;
  bool isButtonPressed = false;

  String pin = '';
  String pinToConfirm = '';

  changeOnBoardingCurrentIndex(index) {
    onBoardingCurrentIndex = index;
  }

  nextPage(PageController pageController) {
    onBoardingCurrentIndex++;
    pageController.nextPage(duration: kDuration, curve: kCurve);
    notifyListeners();
  }

  previousPage(PageController pageController) {
    onBoardingCurrentIndex--;
    pageController.previousPage(duration: kDuration, curve: kCurve);
    notifyListeners();
  }

  phonelabelVisibleUnvisible() {
    isPhoneLabelVisible = false;
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

  setPin(String v) {
    pin = v;
    notifyListeners();
  }

  setPinToConfirm(String v) {
    pinToConfirm = v;
    notifyListeners();
  }

  confirmPin(pin, pinToConfirm) {
    if (pin == pinToConfirm) {
      return true;
    } else {
      return false;
    }
  }

  showUnShowElectricityCompanies() {
    isElectricityCompaniesShown = !isElectricityCompaniesShown;
    notifyListeners();
  }
  showUnShowElectricityButtons() {
    isElectricityButtonsShown=true;
    notifyListeners();
  }
}
