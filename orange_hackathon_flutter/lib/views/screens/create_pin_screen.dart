import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/controllers/authentication_controller.dart';
import 'package:orange_hackathon_flutter/views/screens/confirm_pin_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';



// ignore: must_be_immutable
class CreatePinScreen extends StatelessWidget {

  late PageController pageController;
  TextEditingController textEditingController = TextEditingController();
  FocusNode pinCodeFocusNode = FocusNode();


  CreatePinScreen({super.key,required this.pageController});
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationUIProvider>(builder: (context,value,child)=>SingleChildScrollView(
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
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: PinCodeTextField(
              focusNode: pinCodeFocusNode,
              autoFocus: true,
              onChanged: (value) {
                debugPrint(value);
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
                if (v!.length < 4) {
                  
                  //return 'Please enter 4 characters';
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
                  fieldOuterPadding: const EdgeInsets.all(0)),
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
                 value.setPin(v);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConfirmPinScreen()));
              },
              beforeTextPaste: (text) {
                debugPrint("Allowing to paste $text");
                return true;
              },
            ),
          ),
        ],
      ),
    ));
  }
}
