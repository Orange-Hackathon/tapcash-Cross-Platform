//define a class for child
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Child {
  String childName;
  String childImage;
  int childBalance;

  Child(
      {required this.childName,
      required this.childImage,
      required this.childBalance});
}

//make a list of children data
List<Child> children = [
  Child(
      childName: 'Childy1',
      childImage: 'assets/images/child1.png',
      childBalance: 1000),
  Child(
      childName: 'Childy2',
      childImage: 'assets/images/child2.png',
      childBalance: 2000),
  Child(
      childName: 'Childy3',
      childImage: 'assets/images/child3.png',
      childBalance: 3000),
  Child(
      childName: 'Childy4',
      childImage: 'assets/images/child4.png',
      childBalance: 4000),
];

//class transaction
class Transaction {
  IconData icon;
  String header;
  String subHeader;
  int trailing;

  Transaction(
      {required this.icon,
      required this.header,
      required this.subHeader,
      required this.trailing});
}

//List of transactions , each contains image icon , Header text and small text under it , and trailing is the amount of money
List<Transaction> transactions = [
  Transaction(
      icon: Icons.shopping_bag,
      header: 'Shopping',
      subHeader: 'Shopping at Carrefour',
      trailing: 1000),
  Transaction(
      icon: Icons.shopping_bag,
      header: 'Shopping',
      subHeader: 'Shopping at Carrefour',
      trailing: 1000),
  Transaction(
      icon: Icons.shopping_bag,
      header: 'Shopping',
      subHeader: 'Shopping at Carrefour',
      trailing: 1000),
];

final Widget add_icon = Image.asset(
  "assets/images/dashboard/add_icon.png",
  height: 43,
  width: 43,
  // color: Colors.,
);
final Widget send_icon = Image.asset(
  "assets/images/dashboard/send_icon.png",
  height: 27,
  width: 32,
  // color: Colors.,
);
final Widget payment_icon = Image.asset(
  "assets/images/dashboard/payment.png",
  height: 36,
  width: 36,
  // color: Colors.,
);
final Widget bill_icon = Image.asset(
  "assets/images/dashboard/bill.png",
  height: 31,
  width: 32,
  // color: Colors.,
);
final Widget card_icon = Image.asset(
  "assets/images/dashboard/card.png",
  height: 32,
  width: 32,
  // color: Colors.,
);
final Widget home_icon = Image.asset(
  "assets/images/dashboard/home.png",
  height: 32,
  width: 32,
  // color: Colors.,
);
final Widget insights_icon = Image.asset(
  "assets/images/dashboard/insights.png",
  height: 32,
  width: 32,
  // color: Colors.,
);
final Widget user_icon = Image.asset(
  "assets/images/dashboard/user.png",
  height: 32,
  width: 32,
  // color: Colors.,
);
final Widget qr_icon = Image.asset(
  "assets/images/dashboard/QR.png",
  height: 32,
  width: 32,
  // color: Colors.,
);
final Widget notification_icon = Image.asset(
  "assets/images/dashboard/notification.png",
  height: 24,
  width: 22,
  // color: Colors.,
);
final Widget boy_icon = Image.asset(
  "assets/images/dashboard/boy.png",
  height: 30,
  width: 26,
);
final Widget girl_icon = Image.asset(
  "assets/images/dashboard/girl.png",
  height: 30,
  width: 26,
);
final Gradient qr_gradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF636EC1),
    Color(0xFF333E96),
  ],
);
//icons
