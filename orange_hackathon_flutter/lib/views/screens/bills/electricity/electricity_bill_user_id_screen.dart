import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/views/screens/bills/electricity/electricity_bill_amount_screen.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';

// ignore: must_be_immutable
class ElectricityBillUserIDScreen extends StatelessWidget {
  late String companyName;

  ElectricityBillUserIDScreen({super.key, required this.companyName});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
        title: Text(
          "$companyName Bill",
          style: const TextStyle(
              fontFamily: 'poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(height: 30),
                Container(
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: HexColor("#EFEFEF"),
                  ),
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please enter your ID';
                      }
                    },
                    cursorColor: Colors.transparent,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.4, horizontal: 16),
                        border: InputBorder.none,
                        hintText: 'User ID',
                        hintStyle: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: HexColor("#939094"))),
                  ),
                ),
                const SizedBox(height: 48),
                Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: DefaultButton(
                          onSubmitted: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ElectricityBillsAmountScreen()));
                            }
                          },
                          color: HexColor("#333E96"),
                          text: "Continue",
                          textColor: HexColor("#F7F7F7")),
                    )),
              ],
            ),
          )),
    );
  }
}
