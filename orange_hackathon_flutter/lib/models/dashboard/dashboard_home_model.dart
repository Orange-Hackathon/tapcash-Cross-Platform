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

Widget add_icon = SvgPicture.asset(
  'assets/dashboard/add_icon.svg',
  semanticsLabel: 'add_icon',
);
// Widget add_icon = SvgPicture.asset(
//       'assets/dashboard/add_icon.svg',
//       semanticsLabel: 'add_icon',
//     );

//icons
