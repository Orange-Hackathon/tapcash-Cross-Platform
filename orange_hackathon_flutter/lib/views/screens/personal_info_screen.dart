import 'package:flutter/material.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_text_field.dart';

// ignore: must_be_immutable
class PersonalInfoScreen extends StatelessWidget
{
   var firstNameController = TextEditingController();
   var lastNameController = TextEditingController();

  PersonalInfoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: 
    Padding(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 80,),

        const Text("Personal info",style: TextStyle(fontWeight: FontWeight.bold),),
        const SizedBox(height: 30,),
        DefaultTextFormField(controller: firstNameController, keyboaredType: TextInputType.name, label: "First name", obsecure: false, onSubmitted: (){}, ontap: (){}, prefix: null, validator:  (value) {
                  if (value.isEmpty) {
                    return 'Please enter your first name';
                  }
                }),
                const SizedBox(height: 10,),
                        DefaultTextFormField(controller: lastNameController, keyboaredType: TextInputType.name, label: "Last name", obsecure: false, onSubmitted: (){}, ontap: (){}, prefix: null, validator:  (value) {
                  if (value.isEmpty) {
                    return 'Please enter your last name';
                  }
                }),
                const SizedBox(height: 30,),
                          DefaultButton(
              onSubmitted: () {},
              color: Colors.greenAccent,
              textColor: Colors.white,
              text: "Continue")
      ],
    ),));
  
  }

}