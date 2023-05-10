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
        Container(
          // margin: const EdgeInsets.only(left: 24, right: 24),
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              children: [
                Scrollbar(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var brand in brandIcons)
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: Color(0xffD9D9D9),
                            ),
                            width: 100,
                            height: 48,
                            child: brand,
                          )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
