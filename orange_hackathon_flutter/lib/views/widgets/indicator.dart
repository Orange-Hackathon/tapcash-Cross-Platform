import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OnBoardingIndicator extends StatelessWidget {
  final int positionIndex, currentIndex;
  const OnBoardingIndicator({super.key, required this.currentIndex,required this.positionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
          border: Border.all(color:(positionIndex == currentIndex)? HexColor("#1A1A1A"): HexColor("#CCCCCC")),
          color:
              positionIndex == currentIndex ? HexColor("#1A1A1A") : HexColor("#CCCCCC"),
          borderRadius: BorderRadius.circular(100)),);
  }}

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 10,
    this.textColor,
  });
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        )
      ],
    );
  }
}
