import 'package:flutter/material.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CreatePinScreen extends StatefulWidget
{
  const CreatePinScreen({super.key});
   @override
  State<StatefulWidget> createState() {
    return CreatePin();
  }
}

class CreatePin extends State<CreatePinScreen>
{
  TextEditingController textEditingController = TextEditingController();

  bool hasError = false;
  String currentText = "";
  @override
  Widget build(BuildContext context) {
        return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            "Create pin",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            child: PinCodeTextField(
              onChanged: (value) {
                debugPrint(value);
                setState(() {
                  currentText = value;
                });
              },
              appContext: context,
              pastedTextStyle: TextStyle(
                color: Colors.green.shade600,
                fontWeight: FontWeight.bold,
              ),
              length: 4,
              obscureText: true,
              obscuringCharacter: '#',
              blinkWhenObscuring: true,
              animationType: AnimationType.fade,
              validator: (v) {
                if (v!.length < 3) {
                  //return "I'm from validator";
                } else {
                  return null;
                }
              },
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  //disabledColor: Colors.amber,
                  inactiveFillColor: const Color.fromARGB(255, 208, 205, 205),
                  inactiveColor: const Color.fromARGB(255, 208, 205, 205),
                  activeColor: Colors.white,
                  selectedColor: Colors.greenAccent,
                  selectedFillColor: Colors.white),
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
          const SizedBox(height: 40),
          DefaultButton(
              onSubmitted: () {},
              color: Colors.greenAccent,
              textColor: Colors.white,
              text: 'Create'),
        ],
      ),
    );
   
  }

}