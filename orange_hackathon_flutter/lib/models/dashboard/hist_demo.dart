import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DataPoint {
  final int value;
  final int frequency;

  DataPoint(this.value, this.frequency);
}
List<DataPoint> weeklyTransactions = [
  DataPoint(1, 10),
  DataPoint(2, 20),
  DataPoint(3, 15),
  DataPoint(4, 30),
  DataPoint(5, 25),
  DataPoint(6, 40),
  DataPoint(7, 35),
];
