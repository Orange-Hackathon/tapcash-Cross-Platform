import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


void showAddMoneyWaysBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
          height: 270,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 150),
                child: Text(
                  "______________",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 32),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Text(
                  "Choose a way to add your money",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 0, right: 24, bottom: 0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: HexColor("#EFEFEF"),
                          child: Image.asset('assets/images/fawry.png'),
                        ),
                      ),
                      const Expanded(
                          flex: 3,
                          child: Text(
                            "Add cash through fawry",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w400),
                          )),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ],
                  )),
              const SizedBox(
                height: 16,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 0, right: 24, bottom: 0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: HexColor("#EFEFEF"),
                          child: Image.asset('assets/images/bank.png'),
                        ),
                      ),
                      const Expanded(
                          flex: 3,
                          child: Text(
                            "Receive from any local bank",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w400),
                          )),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ],
                  )),
            ],
          ));
    },
  );
}
