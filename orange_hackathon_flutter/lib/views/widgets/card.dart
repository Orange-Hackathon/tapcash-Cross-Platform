import 'package:flutter/material.dart';

import '../../models/dashboard/dashboard_home_model.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
      child: Container(
        height: 200,
        width: 312,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: cardGradient,
        ),
        child: Column(
          children: [
            //card number
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 16.17),
                    child: tapWhite),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 16.17, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Balance",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "10,000 EGP",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          color: Color(0xffCCCCCC),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 47),
                  child: Text(
                    "1234",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  width: 31,
                ),
                Text(
                  "1234",
                  style: TextStyle(
                    fontFamily: 'poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  width: 31,
                ),
                Text(
                  "1234",
                  style: TextStyle(
                    fontFamily: 'poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  width: 31,
                ),
                Text(
                  "1234",
                  style: TextStyle(
                    fontFamily: 'poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 47),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "EXP 24hr",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16.17),
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        "Mamdouh Ahmed",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          color: Color(0xffCCCCCC),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 17),
                        child: visa,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
