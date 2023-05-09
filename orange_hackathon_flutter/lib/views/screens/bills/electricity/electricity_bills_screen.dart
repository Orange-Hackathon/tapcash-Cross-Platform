import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/controllers/authentication_controller.dart';
import 'package:provider/provider.dart';

class ElectricityBillsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EFEFEF"),
      appBar: AppBar(
        toolbarHeight: 90,
        centerTitle: true,
        elevation: 0,
        backgroundColor: HexColor("#EFEFEF"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          "Electricity",
          style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Consumer<AuthenticationUIProvider>(
            builder: (context, value, child) => Column(
              children: [
                const SizedBox(height: 30),
                Container(
                    height: 48,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: HexColor("#EFEFEF"),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 24,
                        ),
                        Text('Choose your provider',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: HexColor("#939094"),
                            )),
                        const Spacer(),
                        IconButton(
                          splashRadius: 1,
                          onPressed: () {
                            value.showUnShowElectricityCompanies();
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )),
                const SizedBox(height: 8),
                (value.isElectricityCompaniesShown)
                    ? Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: HexColor("#EFEFEF"),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const Text("Canal Electricity",
                                    style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black)),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text("Middle Egypt Electricity",
                                    style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black)),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text("Middle Egypt Electricity",
                                    style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black)),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text("InJaz Electricity",
                                    style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black)),
                              ),
                            ],
                          ),
                        ))
                    : const SizedBox(height: 1),
              ],
            ),
          )),
    );
  }
}
