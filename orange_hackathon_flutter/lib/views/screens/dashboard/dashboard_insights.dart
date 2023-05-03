//a scaffold that contains the insights of the user
import 'package:flutter/material.dart';
import 'package:orange_hackathon_flutter/views/widgets/dashboard_insights_graph.dart';

import '../../../models/dashboard/hist_demo.dart';

class DashboardInsights extends StatelessWidget {
  static const routename = '/dashboard/insights';
  //constructor
  const DashboardInsights({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title of the page
        title: const Text('Insights'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Scaffold(
              body: Center(child: Container()
                  //builds the insights widget that contains the insights of the user from widgets/dashboard_insights_graph.dart
                  // HistogramChart(data: weeklyTransactions, title: 'Weekly transactions'),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
