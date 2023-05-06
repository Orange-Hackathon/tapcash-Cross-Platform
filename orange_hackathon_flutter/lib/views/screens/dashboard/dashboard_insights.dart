//a scaffold that contains the insights of the user
import 'package:flutter/material.dart';

import '../../../models/dashboard/hist_demo.dart';
import '../../widgets/bar_graph.dart';
import '../../widgets/pie_graph.dart';

class DashboardInsights extends StatelessWidget {
  static const routename = '/dashboard/insights';
  //constructor
  const DashboardInsights({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: ,
        //title of the page
        title: const Text('Insights'),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            child: Container(
              child: BarChartSample3(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: Colors.white,
                // color: const Colors.White,
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            width: 312,
            height: 176,
          ),
          // Text( "Categories"),
          SizedBox(
            child: Container(
              child: PieChartSample2(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: Colors.white,
                // color: const Colors.White,
              ),
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
            ),
            width: 312,
            height: 176,
          ),
        ]),
      ),
    );
  }
}
