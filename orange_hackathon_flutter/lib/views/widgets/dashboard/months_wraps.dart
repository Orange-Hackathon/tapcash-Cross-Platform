// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../../models/dashboard/insights_model.dart';

class MonthSelectionWidget extends StatefulWidget {
  const MonthSelectionWidget({super.key});

  @override
  _MonthSelectionWidgetState createState() => _MonthSelectionWidgetState();
}

class _MonthSelectionWidgetState extends State<MonthSelectionWidget> {
  int selectedMonthIndex = 0;

  void onMonthSelected(int index) {
    setState(() {
      selectedMonthIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: pastMonths.asMap().entries.map((entry) {
        int index = entry.key;
        String month = entry.value;

        return GestureDetector(
          onTap: () => onMonthSelected(index),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: (selectedMonthIndex == index)
                    ? const Color(
                        0xFF333E96) // change background color for selected month
                    : Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Text(
                  month,
                  style: TextStyle(
                    fontSize: 10.0,
                    color: selectedMonthIndex == index
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
