//define a class for child
import 'package:flutter/material.dart';

class Child {
  String childName;
  Widget childImage;
  int childBalance;

  Child(
      {required this.childName,
      required this.childImage,
      required this.childBalance});
}

//make a list of children data
List<Child> children = [
  Child(childName: 'Omar', childImage: boyIcon, childBalance: 1000),
  Child(childName: 'Dina', childImage: girlIcon, childBalance: 2000),
  Child(childName: 'AbdAllah', childImage: boyIcon, childBalance: 3000),
  Child(childName: 'Shahd', childImage: girlIcon, childBalance: 4000),
];

final Widget addIcon = Image.asset(
  "assets/images/dashboard/add_icon.png",
  height: 43,
  width: 43,
);
final Widget addIcon2 = Image.asset(
  "assets/images/dashboard/add_icon2.png",
  height: 43,
  width: 43,
);
final Widget sendIcon = Image.asset(
  "assets/images/dashboard/send.png",
  height: 27,
  width: 35,
);
final Widget paymentIcon = Image.asset(
  "assets/images/dashboard/payment.png",
  height: 36,
  width: 36,
);
final Widget billIcon = Image.asset(
  "assets/images/dashboard/bill.png",
  height: 31,
  width: 32,
);
final Widget cardIconSelected = Image.asset(
  "assets/images/dashboard/card.png",
  height: 32,
  width: 32,
  color: const Color(0xFF333E96),
);
final Widget cardIconUnselected = Image.asset(
  "assets/images/dashboard/card.png",
  height: 32,
  width: 32,
);
final Widget homeIconSelected = Image.asset(
  "assets/images/dashboard/home.png",
  height: 32,
  width: 32,
  color: const Color(0xFF333E96),
);
final Widget homeIconUnselected = Image.asset(
  "assets/images/dashboard/home.png",
  height: 32,
  width: 32,
);
final Widget insightsIconSelected = Image.asset(
  "assets/images/dashboard/insights.png",
  height: 32,
  width: 32,
  color: const Color(0xFF333E96),
);
final Widget insightsIconUnselected = Image.asset(
  "assets/images/dashboard/insights.png",
  height: 32,
  width: 32,
);
final Widget editIcon = Image.asset(
  "assets/images/dashboard/edit.png",
  height: 24,
  width: 24,
);
final Widget userIconSelected = Image.asset(
  "assets/images/dashboard/user.png",
  height: 32,
  width: 32,
  color: const Color(0xFF333E96),
);
final Widget userIconUnselected = Image.asset(
  "assets/images/dashboard/user.png",
  height: 32,
  width: 32,
);
final Widget qrIcon = Image.asset(
  "assets/images/dashboard/QR.png",
  height: 32,
  width: 32,
);
final Widget notificationIcon = Image.asset(
  "assets/images/dashboard/notifications.png",
  height: 16,
  width: 14,
);
final Widget boyIcon = Image.asset(
  "assets/images/dashboard/boy.png",
  height: 30,
  width: 26,
);
final Widget girlIcon = Image.asset(
  "assets/images/dashboard/girl.png",
  height: 30,
  width: 26,
);
final Widget returnArrowIcon = Image.asset(
  "assets/images/dashboard/return_arrow.png",
  height: 24,
  width: 24,
);
final Widget tapWhite = Image.asset(
  "assets/images/dashboard/white_tap.png",
  height: 27,
  width: 56,
);
final Widget visa = Image.asset(
  "assets/images/dashboard/visa.png",
  height: 30,
  width: 77,
);
final Widget refresh = Image.asset(
  "assets/images/dashboard/refresh.png",
  height: 24,
  width: 24,
);
final Widget amazon = Image.asset(
  "assets/images/dashboard/Amazon.png",
  height: 36,
  width: 76,
);
final Widget dunkin = Image.asset(
  "assets/images/dashboard/Dunkin.png",
  height: 44,
  width: 78,
);

final Widget jumia = Image.asset(
  "assets/images/dashboard/Jumia.png",
  height: 47,
  width: 83,
);
final Widget starbucks = Image.asset(
  "assets/images/dashboard/starbucks.png",
  height: 27,
  width: 87,
);

const Gradient qrGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF636EC1),
    Color(0xFF333E96),
  ],
);
const Gradient cardGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF1A1A1A),
    Color(0xFF333E96),
    Color(0xFF333E96),
    Color(0xFF1A1A1A),
  ],
);
//icons

//list of brand icons
List<Widget> brandIcons = [
  amazon,
  jumia,
  dunkin,
  starbucks,
];
