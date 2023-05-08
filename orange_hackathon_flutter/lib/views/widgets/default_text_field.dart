import 'package:flutter/material.dart';


// ignore: must_be_immutable
class DefaultTextFormField extends StatelessWidget
{
   late TextEditingController controller;
    late TextInputType keyboaredType;
      IconData? prefix;
     late String label;
     late FormFieldValidator validator;
    late Function onSubmitted;
    late GestureTapCallback ontap; 
     IconData? suffix;
    late bool obsecure=false;

  DefaultTextFormField({super.key,required this.controller,required this.keyboaredType,required this.label,required this.obsecure,required this.onSubmitted,required this.ontap, this.prefix, this.suffix,required this.validator});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      controller: controller,
      keyboardType: keyboaredType,
      obscureText: obsecure,
      maxLines: 1,
      enableSuggestions: true,
      onFieldSubmitted: (s) {
        onSubmitted();
      },
      onTap: ontap,
      validator: validator,
      decoration: InputDecoration(
        //focusColor: Colors.greenAccent,
        prefixIconColor: Colors.greenAccent,
        prefixIcon: (prefix!=null)?Icon(prefix):null,
        suffixIcon: (suffix!=null)?Icon(suffix):null,
        labelText: label,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        enabledBorder:const  OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
    );
  }

}