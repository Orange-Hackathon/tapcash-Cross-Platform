import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/controllers/authentication_controller.dart';
import 'package:orange_hackathon_flutter/methods/show_default_bottom_sheet.dart';
import 'package:orange_hackathon_flutter/services/authentication_services.dart';
import 'package:orange_hackathon_flutter/views/widgets/default_button.dart';
import 'package:provider/provider.dart';

class ElectricityBillsAmountScreen extends StatelessWidget {
  late String companyName;
  TextEditingController amountController = TextEditingController();
  @override
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  ElectricityBillsAmountScreen({super.key, required this.companyName});

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
              child: Consumer<AuthenticationUIProvider>(
                builder: (context, value, child) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    const Text("Bill amount to pay",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                    const SizedBox(height: 8),
                    Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: HexColor("#EFEFEF"),
                      ),
                      child: TextFormField(
                        onFieldSubmitted: (val) {
                          value.showUnShowElectricityButtons();
                        },
                        controller: amountController,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                        ],
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
                            hintText:
                                '                                      EGP',
                            hintStyle: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: HexColor("#939094"))),
                      ),
                    ),
                    const SizedBox(height: 48),
                    (amountController.text != '')
                        ? Column(
                            children: [
                              SizedBox(
                                height: 48,
                                width: double.infinity,
                                child: DefaultButton(
                                    onSubmitted: () {
                                      if (formKey.currentState!.validate()) {
                                        showDefaultBottomSheet(
                                            context,
                                            'Your electricity bill amount ${amountController.text} EGP',
                                            'was paid successfully',
                                            'Done', () {
                                          Navigator.pop(context);
                                        });
                                      }
                                    },
                                    color: HexColor("#333E96"),
                                    text: "Pay ${amountController.text} EGP",
                                    textColor: HexColor("#F7F7F7")),
                              ),
                              const SizedBox(height: 16),
                              SizedBox(
                                height: 48,
                                width: double.infinity,
                                child: DefaultButton(
                                    onSubmitted: () {
                                      if (formKey.currentState!.validate()) {}
                                    },
                                    color: HexColor("#E3E3E4"),
                                    text: "Cancel",
                                    textColor: HexColor("#939094")),
                              ),
                            ],
                          )
                        : const SizedBox(
                            height: 0,
                          )
                  ],
                ),
              ))),
    );
  }
}
