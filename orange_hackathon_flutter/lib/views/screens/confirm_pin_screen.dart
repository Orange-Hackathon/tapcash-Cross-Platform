import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/controllers/authentication_controller.dart';
import 'package:orange_hackathon_flutter/methods/show_default_bottom_sheet.dart';
import 'package:orange_hackathon_flutter/views/screens/login_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

import '../widgets/indicator.dart';



// ignore: must_be_immutable
class ConfirmPinScreen extends StatelessWidget {
  
  TextEditingController textEditingController = TextEditingController();
  
  ConfirmPinScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationUIProvider>(builder:(context,value,child)=>Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 75),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back))
                ])),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Indicator(
                  positionIndex: 0,
                  currentIndex: 3,
                ),
                SizedBox(
                  width: 8,
                ),
                Indicator(
                  positionIndex: 1,
                  currentIndex: 3,
                ),
                SizedBox(
                  width: 8,
                ),
                Indicator(
                  positionIndex: 2,
                  currentIndex: 3,
                ),
                SizedBox(
                  width: 8,
                ),
                Indicator(
                  positionIndex: 3,
                  currentIndex: 3,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                "Confirm PIN",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'poppins'),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                "It will be your access to any action",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    fontFamily: 'poppins',
                    color: HexColor("#5E5E5E")),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              margin: EdgeInsets.zero,
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: PinCodeTextField(
                //focusNode: pinCodeFocusNode,
                autoFocus: true,
                onChanged: (value) {
                },
                appContext: context,
                pastedTextStyle: TextStyle(
                    color: HexColor("#333E96"),
                    fontWeight: FontWeight.w400,
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
                            if(!value.confirmPin(value.pin, value.pinToConfirm))
                            {
                              return 'Try again';
                            }
 

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
                  value.setPinToConfirm(v);
                  if(value.pin==value.pinToConfirm)
                  {
                    showDefaultBottomSheet(
                                context,
                                'Your account has been created successfully',
                                '',
                                'Login', () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            });

                  }
                  // else
                  // {


                  // }            
                },
                beforeTextPaste: (text) {
                  debugPrint("Allowing to paste $text");
                  return true;
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
