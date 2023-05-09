// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:orange_hackathon_flutter/views/widgets/dashboard/dashboard_text.dart';

import '../../../methods/dashboard/dashboard_methods.dart';
import '../../../models/dashboard/dashboard_home_model.dart';
import '../../../models/dashboard/recent_transactions_model.dart';
import '../../widgets/dashboard/transactions_list.dart';

class DashboardHome extends StatelessWidget {
  const DashboardHome({super.key});
  static const routename = "/dashboard/home";

  @override
  Widget build(BuildContext context) {
    final transactionLists = getTransactionLists(transactions);
    return Scaffold(
        body: ListView(
      children: [
        const BalanceBox(),
        SizedBox(
          height: 16,
        ),
        Container(
          // margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          padding: const EdgeInsets.only(right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  "Service",
                  style: const TextStyle(
                    color: Color(0xFF939094),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ServiceButtonsRow()
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            "Add Children",
            style: const TextStyle(
              color: Color(0xFF939094),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: Image.asset(
                          "assets/images/dashboard/add_icon3.png",
                          height: 54,
                          width: 54,
                        ),
                      ),
                    ),
                    //iterate over the list of children and display them
                    for (var child in children)
                      ChildIconForParent(
                        childImage: child.childImage,
                        childName: child.childName,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            "Transactions",
            style: const TextStyle(
              color: Color(0xFF939094),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: SizedBox(
            child: Container(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width,
              child: TransactionListWidget(transactionLists: transactionLists),
            ),
          ),
        ),
      ],
    ));
  }
}

class ServiceButtonsRow extends StatelessWidget {
  const ServiceButtonsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 72,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xffE3E3E4)),
                // color: Color(0xffE3E3E4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    sendIcon,
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Send",
                style: TextStyle(
                  color: Color(0xff1A1A1A),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              )
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 72,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xffE3E3E4)),
                // color: Color(0xffE3E3E4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    paymentIcon,
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Payment",
                style: TextStyle(
                  color: Color(0xff1A1A1A),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              )
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 72,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xffE3E3E4)),
                // color: Color(0xffE3E3E4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    billIcon,
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Send",
                style: TextStyle(
                  color: Color(0xff1A1A1A),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ChildIconForParent extends StatelessWidget {
  ChildIconForParent({
    Key? key,
    required this.childName,
    required this.childImage,
  }) : super(key: key);
  String? childName;
  Widget? childImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xFFEFEFEF),
              child: childImage,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            childName!,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class BalanceBox extends StatelessWidget {
  const BalanceBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      padding: const EdgeInsets.all(20),
      height: 152,
      decoration: BoxDecoration(
        color: Color(0xFF333E96),
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(24)),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
        //make the bottom right corner of the box rounded
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //contains a word balance and a balance amount
              Text(
                "Hello",
                style: TextStyle(
                  color: Color(0xffE3E3E4),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              InkWell(onTap: () {}, child: notificationIcon)
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Balance",
                    style: TextStyle(
                      color: Color(0xffCCCCCC),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "10,000 EGP",
                    style: TextStyle(
                      color: Color(0xffE3E3E4),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  InkWell(
                    child: addIcon2,
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Add",
                    style: TextStyle(
                      color: Color(0xffE3E3E4),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
