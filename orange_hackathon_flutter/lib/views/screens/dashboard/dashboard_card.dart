//a scaffold that contains the insights of the user
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/models/dashboard/dashboard_home_model.dart';

import '../../widgets/card.dart';

class DashboardCard extends StatelessWidget {
  static const routename = '/dashboard/card';
  //constructor
  const DashboardCard({Key? key}) : super(key: key);
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
          'Card',
          style: TextStyle(
            fontFamily: 'poppins',
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
      body: ListView(children: const [
        SizedBox(
          height: 37,
        ),
        VisaCard()
      ]),
    );
  }
}
