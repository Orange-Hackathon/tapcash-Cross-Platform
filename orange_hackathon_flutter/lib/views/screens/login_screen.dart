import 'package:flutter/material.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_text_field.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget
{
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();

  LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 100,
          ),
                 DefaultTextFormField(
              controller: firstNameController,
              keyboaredType: TextInputType.phone,
              label: "Phone number",
              obsecure: false,
              onSubmitted: () {},
              ontap: () {},
              prefix: null,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your phone number';
                }
              }),
          const SizedBox(
            height: 10,
          ),
          DefaultTextFormField(
              controller: lastNameController,
              keyboaredType: TextInputType.number,
              label: "Pin",
              obsecure: false,
              onSubmitted: () {},
              ontap: () {},
              prefix: null,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your Pin';
                }
              }),

          const SizedBox(height: 40),
          DefaultButton(
              onSubmitted: () {},
              color: Colors.greenAccent,
              textColor: Colors.white,
              text: 'Login'),
        ],
      ),)
    );
  }

}