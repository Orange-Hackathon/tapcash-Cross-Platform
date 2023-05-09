import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void showBillsBottomSheet(BuildContext context) {
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
                  "Bills",
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
                  padding:
                      const EdgeInsets.only(left: 24, right: 24, bottom: 0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          InkWell(
                            child: CircleAvatar(
                              radius: 32,
                              backgroundColor: HexColor("#EFEFEF"),
                              child: Image.asset('assets/images/elec.png'),
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          const Text(
                            "Electricity",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                fontFamily: 'poppins'),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          InkWell(
                            child: CircleAvatar(
                              radius: 32,
                              backgroundColor: HexColor("#EFEFEF"),
                              child: Image.asset('assets/images/gas.png'),
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          const Text(
                            "Gas",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                fontFamily: 'poppins'),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          InkWell(
                            child: CircleAvatar(
                              radius: 32,
                              backgroundColor: HexColor("#EFEFEF"),
                              child: Image.asset('assets/images/water.png'),
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          const Text(
                            "Water",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                fontFamily: 'poppins'),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          InkWell(
                            child: CircleAvatar(
                              radius: 32,
                              backgroundColor: HexColor("#EFEFEF"),
                              child: Image.asset('assets/images/donate.png'),
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          const Text(
                            "Donation",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                fontFamily: 'poppins'),
                          )
                        ],
                      ))
                    ],
                  )),
            ],
          ));
    },
  );
}
