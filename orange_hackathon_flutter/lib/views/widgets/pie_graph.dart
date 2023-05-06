import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'indicator.dart';

class PieChartSample2 extends StatefulWidget {
  const PieChartSample2({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 39.5,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Indicator(
                color: Color(0xff333E96),
                text: 'Transfer',
                isSquare: false,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Color(0xFFF9DB6D),
                text: 'Food',
                isSquare: false,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Color(0xFF1A1A1A),
                text: 'General',
                isSquare: false,
              ),
              SizedBox(
                height: 4,
              ),
              // Indicator(
              //   color: Color(0xFFEFEFEF),
              //   text: 'Fourth',
              //   isSquare: true,
              // ),
              // SizedBox(
              //   height: 18,
              // ),
            ],
          ),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 12.0 : 8.0;
      final radius = isTouched ? 29.41 : 25.0;
      // const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Color(0xff333E96),
            value: 50 * 85.0 / 100,
            title: '50%',
            borderSide: BorderSide(),
            radius: radius * 1.25,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE3E3E4),
              // shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Color(0xFFF9DB6D),
            value: 15 * 85.0 / 100,
            title: '15%',
            radius: radius * 1.1,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A1A1A),
              // shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Color(0xFF1A1A1A),
            value: 35 * 85.0 / 100,
            title: '35%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE3E3E4),
              // shadows: shadows,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: Color(0xFFEFEFEF),
            value: 15,
            title: '',
            radius: radius * .8,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A1A1A),
              // shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}
