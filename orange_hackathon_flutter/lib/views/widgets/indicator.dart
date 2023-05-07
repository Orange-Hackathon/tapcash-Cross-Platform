import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Indicator extends StatelessWidget {
  final int positionIndex, currentIndex;
  const Indicator({super.key, required this.currentIndex,required this.positionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
          border: Border.all(color:(positionIndex == currentIndex)? HexColor("#1A1A1A"): HexColor("#CCCCCC")),
          color:
              positionIndex == currentIndex ? HexColor("#1A1A1A") : HexColor("#CCCCCC"),
          borderRadius: BorderRadius.circular(100)),
    );
  }
}
