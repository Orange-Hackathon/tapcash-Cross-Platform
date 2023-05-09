//a scaffold that contains the insights of the user
import 'package:flutter/material.dart';
import 'package:orange_hackathon_flutter/models/dashboard/dashboard_home_model.dart';
import 'package:orange_hackathon_flutter/views/widgets/dashboard/dashboard_text.dart';
import '../../widgets/dashboard/card.dart';
import '../../widgets/dashboard/get_card_number_button.dart';

class DashboardCard extends StatelessWidget {
  static const routename = '/dashboard/card';
  //constructor
  const DashboardCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
      body: ListView(children: [
        SizedBox(
          height: 37,
        ),
        VisaCard(),
        SizedBox(
          height: 24,
        ),
        //button to get card number
        Padding(
            padding: EdgeInsets.fromLTRB(28, 0, 28, 0),
            child: GetCardNumberButton()),
        SizedBox(
          height: 16,
        ),
        GreyLabel(text: "Payments"),
        SizedBox(
          height: 12,
        ),
        //make a horizontal sliding list of store logos
        // Padding(padding: EdgeInsets.fromLTRB(28, 0, 28, 0), child: 
        // //sliding list of containers with a floating button arrow to the right to slide view od containers by one
        // // SingleChildScrollView(child: ,)
        // ),
      ]),
    );
  }
}
