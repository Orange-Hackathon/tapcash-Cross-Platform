import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget
{
  late Function onSubmitted;
  late Color color;
  late Color textColor;
  late String text;
   DefaultButton({super.key,required this.onSubmitted,required this.color,required this.textColor,required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){onSubmitted();},
      color: color,
      child: Text(text,style: TextStyle(color: textColor),),

      );
  }

}