import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyPhoneNumberScreen extends StatefulWidget {
  late PageController pageController;
  VerifyPhoneNumberScreen({super.key, required this.pageController});

  @override
  State<StatefulWidget> createState() {
    return VerifyPhoneNumber();
  }
}

class VerifyPhoneNumber extends State<VerifyPhoneNumberScreen> {
  TextEditingController textEditingController = TextEditingController();

  bool hasError = false;
  String currentText = "";

  static const _kDuration = Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              "Verify your number",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'poppins'),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: PinCodeTextField(
              onChanged: (value) {
                debugPrint(value);
                setState(() {
                  currentText = value;
                });
              },
              appContext: context,
              pastedTextStyle: TextStyle(
                  color: HexColor("#1A1A1A"),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'poppins'),

              textStyle: TextStyle(
                  color: HexColor("#1A1A1A"),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'poppins'),
              length: 6,
              obscureText: false,
              obscuringCharacter: '#',
              blinkWhenObscuring: true,
              animationType: AnimationType.fade,
              validator: (v) {
                if (v!.length < 5) {
                  //return "I'm from validator";
                } else {
                  return null;
                }
              },
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 36.5,
                  fieldWidth: 32,
                  activeFillColor: HexColor("#EFEFEF"),
                  //disabledColor: Colors.amber,
                  inactiveFillColor: HexColor("#EFEFEF"),
                  inactiveColor: HexColor("#EFEFEF"),
                  activeColor: HexColor("#EFEFEF"),
                  selectedColor: Colors.white,
                  selectedFillColor: Colors.white,
                  fieldOuterPadding: EdgeInsets.all(0)),
              cursorColor: Colors.black,
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
          //const SizedBox(height: 8),
          Container(
            margin: EdgeInsets.zero,
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero),

                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  shadowColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  // You can add other ButtonStyle properties as needed
                ),
                onPressed: () {
                  widget.pageController
                      .nextPage(duration: _kDuration, curve: _kCurve);
                },
                child: Text(
                  'Resend',
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'poppins',
                      color: HexColor("#939094"),
                      fontWeight: FontWeight.w400),
                )),
          )
        ],
      ),
    );
  }
}
