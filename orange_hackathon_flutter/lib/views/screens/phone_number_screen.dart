import 'package:flutter/material.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_text_field.dart';

// ignore: must_be_immutable
class PhoneNumberScreen extends StatelessWidget {
  var phoneController = TextEditingController();

  PhoneNumberScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            "assets/images/wallet.png",
            height: 40,
            width: 40,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: DefaultTextFormField(
                controller: phoneController,
                keyboaredType: TextInputType.phone,
                label: 'Phone number',
                obsecure: false,
                onSubmitted: () {},
                ontap: () {},
                prefix: Icons.phone,
                suffix: null,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your number';
                  }
                }),
          ),
          const SizedBox(height: 50,),
          DefaultButton(onSubmitted: (){}, color: Colors.greenAccent, textColor: Colors.white, text: "Sign up")
          
        ],
      ),);
  }
}
