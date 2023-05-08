import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/controllers/authentication_controller.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';



// ignore: must_be_immutable
class VerifyPhoneNumberScreen extends StatelessWidget {

  late PageController pageController;
  TextEditingController textEditingController = TextEditingController();

  VerifyPhoneNumberScreen({super.key,required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(builder:(context,value,child)=>SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 46,
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
            height: 32,
          ),
          Container(
            margin: EdgeInsets.zero,
            padding: const EdgeInsets.symmetric(horizontal: 34.5),
            child: PinCodeTextField(
              onChanged: (value) {
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
               
              },

              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 36.5,
                  fieldWidth: 32,
                  activeFillColor: HexColor("#EFEFEF"),
                  inactiveFillColor: HexColor("#EFEFEF"),
                  inactiveColor: HexColor("#EFEFEF"),
                  activeColor: HexColor("#EFEFEF"),
                  selectedColor: Colors.white,
                  selectedFillColor: Colors.white,
                  fieldOuterPadding: const EdgeInsets.all(0)),
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
                value.nextPage(pageController);
              },
              beforeTextPaste: (text) {
                debugPrint("Allowing to paste $text");
                return true;
              },
            ),
          ),
          //const SizedBox(height: 8),
          Container(
            margin: EdgeInsets.zero,
            padding: const EdgeInsets.symmetric(horizontal: 34.5),
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
    ));
  }
}
