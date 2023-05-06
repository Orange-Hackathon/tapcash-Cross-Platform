import 'package:flutter/material.dart';

import '../../../models/dashboard/dashboard_home_model.dart';

class DashboardHome extends StatelessWidget {
  const DashboardHome({super.key});
  static const routename = "/dashboard/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
            //surronded by a beautiful box with border only and a shadow but no color
            const BalanceBox(),

            //a title "Services" with 3 buttons under it padded and equally spaces
            //the buttons are clickable and have a title and an icon
            //the buttons are surrounded by a box with border and a shadow and has a color
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                // border: Border.all(
                //   color: Colors.grey,
                //   width: 1,
                // ),
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
                children: [
                  const Text(
                    "Services",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: const [
                            Icon(
                              Icons.send,
                              size: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Send",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: const [
                            Icon(
                              Icons.request_page,
                              size: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Payment",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: const [
                            Icon(
                              // Icons.history,
                              //icon for bill
                              Icons.history_edu,
                              size: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Bill",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //a group of circled icons ended with plus icon to add a new child . the icons are clickable including the plus icon.
            //they are surrounded by a box with border and a title intersecting the box named "My Children"
            //take care of flex and alignment , the circled icons are a bit small and scrollable

            Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "My Children",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: add_icon,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  /////////////////////////////////////////////////////
                  ///
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //iterate over the list of children and display them
                        for (var child in children)
                          ChildIconForParent(
                            childImage: child.childImage,
                            childName: child.childName,
                          ),
                      ],
                    ),
                  ),

                  // section named "Recent transactions"
                  //under it we make tiles with a leading icon, a title and a subtitle and a trailing amount of money
                  //iterates over a list of transactions and display them
                ],
              ),
            ),
            //a title "Recent Transactions" with a list of tiles under it with a leading icon, a title and a subtitle and a trailing amount of money
            //iterates over a list of transactions and display them
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
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
                children: [
                  const Text(
                    "Recent Transactions",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //iterate over the list of transactions and display them
                  for (var transaction in transactions)
                    ListTile(
                      leading: const Icon(
                        Icons.send,
                        size: 30,
                      ),
                      title: Text(transaction.header),
                      subtitle: Text(transaction.subHeader),
                      trailing: Text(transaction.trailing.toString()),
                    ),
                ],
              ),
            )
          ],
        ));
  }
}

class ChildIconForParent extends StatelessWidget {
  ChildIconForParent({
    Key? key,
    required this.childName,
    required this.childImage,
  }) : super(key: key);
  String? childName;
  String? childImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: const CircleAvatar(
              radius: 30,
              foregroundColor: Colors.lightBlueAccent,
              //AssetImage(childImage!),
            ),
          ),
          const SizedBox(
            height: 10,
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
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          //contains a word balance and a balance amount
          Text(
            "Balance",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "1000",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
