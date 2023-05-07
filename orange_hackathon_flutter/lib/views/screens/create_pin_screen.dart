import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/methods/show_default_bottom_sheet.dart';
import 'package:orange_hackathon_flutter/views/screens/confirm_pin_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/login_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/personal_info_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/splash_screen.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CreatePinScreen extends StatefulWidget {
  late PageController pageController;
  CreatePinScreen({super.key, required this.pageController});
  @override
  State<StatefulWidget> createState() {
    return CreatePin();
  }
}

class CreatePin extends State<CreatePinScreen> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode pinCodeFocusNode = FocusNode();
  static const _kDuration = Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  bool hasError = false;
  String currentText = "";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 46,
          ),
          const Text(
            "Create PIN",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                fontFamily: 'poppins'),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "It will be your access to any action",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10,
                fontFamily: 'poppins',
                color: HexColor("#5E5E5E")),
          ),
          const SizedBox(
            height: 32,
          ),
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.symmetric(horizontal: 120),
            child: PinCodeTextField(
              focusNode: pinCodeFocusNode,
              autoFocus: true,
              onChanged: (value) {
                debugPrint(value);
                setState(() {
                  currentText = value;
                });
              },
              appContext: context,
              pastedTextStyle: TextStyle(
                  color: HexColor("#333E96"),
                  fontWeight: FontWeight.w100,
                  fontSize: 1,
                  fontFamily: 'poppins'),

              textStyle: TextStyle(
                  color: HexColor("#333E96"),
                  fontWeight: FontWeight.w400,
                  fontSize: 1,
                  fontFamily: 'poppins'),
              length: 4,
              obscureText: false,
              obscuringCharacter: '#',
              blinkWhenObscuring: true,
              animationType: AnimationType.fade,
              validator: (v) {
                if (v!.length < 5) {
                } else {
                  return null;
                }
              },
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 14,
                  fieldWidth: 14,
                  activeFillColor: HexColor("#333E96"),
                  inactiveFillColor: HexColor("#CCCCCC"),
                  inactiveColor: HexColor("#CCCCCC"),
                  activeColor: HexColor("#333E96"),
                  selectedColor: HexColor("#CCCCCC"),
                  selectedFillColor: HexColor("#CCCCCC"),
                  fieldOuterPadding: EdgeInsets.all(0)),
              cursorColor: HexColor("#CCCCCC"),
              animationDuration: const Duration(milliseconds: 300),
              enableActiveFill: true,

              controller: textEditingController,
              keyboardType: TextInputType.number,
              boxShadows: const [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.black12,
                  blurRadius: 10,
                )
              ],

              onCompleted: (v) {
                debugPrint("Completed");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConfirmPinScreen()));
                // pinCodeFocusNode.dispose();
                // pinCodeFocusNode=FocusNode();

                // showDefaultBottomSheet(
                //     context,
                //     'Your account has been created successfully',
                //     '',
                //     'Login', () {
                //       Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmPinScreen()));
                //   //widget.pageController.nextPage(duration: _kDuration, curve: _kCurve);
                // });
              },
              // onTap: () {
              //   print("Pressed");
              // },

              beforeTextPaste: (text) {
                debugPrint("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            ),
          ),
        ],
      ),
    );
  }
}
