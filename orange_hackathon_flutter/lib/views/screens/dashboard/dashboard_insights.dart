//a scaffold that contains the insights of the user
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/models/dashboard/dashboard_home_model.dart';
import '../../widgets/bar_graph.dart';
import '../../widgets/months_wraps.dart';
import '../../widgets/pie_graph.dart';

class DashboardInsights extends StatelessWidget {
  static const routename = '/dashboard/insights';
  //constructor
  const DashboardInsights({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#EFEFEF"),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#EFEFEF"),
          shadowColor: Colors.transparent,
          // leading: ,
          //title of the page
          leading: IconButton(
            icon: returnArrowIcon,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: const Text(
            'Insights',
            style: TextStyle(
              fontFamily: 'poppins',
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: ListView(children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Total Balance",
                        style: TextStyle(
                          color: Color(0xFF939094),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "10,000 EGP",
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),

                //make adjusted space between the two columns
                const Spacer(),

                Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    //3 wraps for the past 3 months
                    MonthSelectionWidget(),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 312,
              height: 176,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  color: Colors.white,
                  // color: const Colors.White,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: const BarChartSample3(),
              ),
            ),
            // Text( "Categories")
            const SizedBox(
              height: 16,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
              child: const Text(
                "Categories",
                style: TextStyle(
                  color: Color(0xFF939094),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),

            SizedBox(
              width: 312,
              height: 200,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  color: Colors.white,
                  // color: const Colors.White,
                ),
                width: MediaQuery.of(context).size.width,
                child: const PieChartSample2(),
                // height: MediaQuery.of(context).size.height,
              ),
            ),
          ]),
        ));
  }
}
