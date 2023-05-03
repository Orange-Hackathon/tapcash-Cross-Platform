import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DataPoint {
  final int value;
  final int frequency;

  DataPoint(this.value, this.frequency);
}

class HistogramChart extends StatelessWidget {
  final List<DataPoint> data;
  final String title;

  HistogramChart({required this.data, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Container(
            height: 300,
            child: charts.BarChart(
              [
                charts.Series<DataPoint, String>(
                  id: 'Histogram',
                  colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
                  domainFn: (DataPoint data, _) => data.value.toString(),
                  measureFn: (DataPoint data, _) => data.frequency,
                  data: data,
                ),
              ],
              animate: true,
              vertical: false,
              barRendererDecorator: charts.BarLabelDecorator<String>(),
              domainAxis: charts.NumericAxisSpec(
                renderSpec: charts.NoneRenderSpec(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
