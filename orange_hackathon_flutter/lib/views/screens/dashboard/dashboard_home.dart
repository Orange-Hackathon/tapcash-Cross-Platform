// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/methods/show_bills_bottom_sheet.dart';
import 'package:orange_hackathon_flutter/methods/show_search_contacts_bottom_sheet.dart';
import 'package:orange_hackathon_flutter/views/widgets/balance_box.dart';
import 'package:orange_hackathon_flutter/views/widgets/child_icon.dart';

import '../../../models/dashboard/dashboard_home_model.dart';

class DashboardHome extends StatelessWidget {
  const DashboardHome({super.key});
  static const routename = "/dashboard/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(30)),
                color: HexColor("#333E96"),
              ),
              height: 200,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 46),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                              color: HexColor("#E3E3E4"),
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              fontFamily: 'poppins'),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_active_outlined,
                              color: HexColor("#E3E3E4"),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Balance",
                        style: TextStyle(
                            color: HexColor("#CCCCCC"),
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "10,000 EGP",
                            style: TextStyle(
                                color: HexColor("#E3E3E4"),
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 24),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor:
                                HexColor("#F7F7F7").withOpacity(0.2),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Services",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: HexColor("#939094"),
                            fontFamily: 'poppins'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Container(
                                height: 82,
                                width: 92,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(24)),
                                  color: HexColor("#E3E3E4"),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    showPhoneContactsSheet(context);
                                  },
                                  child: Image.asset("assets/images/send.png"),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Send",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'poopins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          )),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              Container(
                                height: 82,
                                width: 92,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(24)),
                                  color: HexColor("#E3E3E4"),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    showBillsBottomSheet(context);
                                  },
                                  child: Image.asset("assets/images/bills.png"),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Bills",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'poopins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          )),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              Container(
                                height: 82,
                                width: 92,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(24)),
                                  color: HexColor("#E3E3E4"),
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/images/payment.png",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Payment",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'poopins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Add children",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: HexColor("#939094"),
                        fontFamily: 'poppins'),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: HexColor("#E3E3E4"),
                          radius: 30,
                          child: InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 50,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        CircleAvatar(
                          backgroundColor: HexColor("#E3E3E4"),
                          radius: 30,
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assets/images/dashboard/boy.png",
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        CircleAvatar(
                          backgroundColor: HexColor("#E3E3E4"),
                          radius: 30,
                          child: InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              backgroundColor: HexColor("#E3E3E4"),
                              radius: 30,
                              child: InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  "assets/images/dashboard/girl.png",
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),

                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Transactions",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: HexColor("#939094"),
                        fontFamily: 'poppins'),
                  ),
                ),

                //a group of circled icons ended with plus icon to add a new child . the icons are clickable including the plus icon.
                //they are surrounded by a box with border and a title intersecting the box named "My Children"
                //take care of flex and alignment , the circled icons are a bit small and scrollable

                //a title "Recent Transactions" with a list of tiles under it with a leading icon, a title and a subtitle and a trailing amount of money
                //iterates over a list of transactions and display them
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      //iterate over the list of transactions and display them
                      ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundColor: HexColor("#D9D9D9"),
                        ),
                        title: const Text(
                          'Amazon',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        subtitle: const Text(
                          '5 pm',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        trailing: const Text(
                          '2600 EGP',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundColor: HexColor("#D9D9D9"),
                        ),
                        title: const Text(
                          'Jumia',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        subtitle: const Text(
                          '10 pm',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        trailing: const Text(
                          '700 EGP',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundColor: HexColor("#D9D9D9"),
                        ),
                        title: const Text(
                          'Carrefour',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        subtitle: const Text(
                          '1 am',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        trailing: const Text(
                          '250 EGP',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      // for (var transaction in transactions)
                      //   ListTile(
                      //     leading: CircleAvatar(
                      //       radius: 20,
                      //       backgroundColor: HexColor("#D9D9D9"),
                      //     ),
                      //     title: Text(transaction.header),
                      //     subtitle: Text(transaction.subHeader),
                      //     trailing: Text(transaction.trailing.toString()),
                      //   ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
