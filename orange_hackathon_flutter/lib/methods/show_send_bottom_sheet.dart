import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orange_hackathon_flutter/methods/show_receipt_bottom_sheet.dart';

void showSendSheet(BuildContext context) {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var cashController = TextEditingController();
  showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
          height: MediaQuery.of(context).size.height * 0.963,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const CircleAvatar(
                      radius: 28,
                      child: Text(
                        "H",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            fontFamily: 'poppins'),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Send to Habiba",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontFamily: 'poppins'),
                        ),
                        // Text(
                        //   "098765432",
                        //   style: TextStyle(
                        //       color: HexColor("#939094"),
                        //       fontWeight: FontWeight.w400,
                        //       fontSize: 12,
                        //       fontFamily: 'poppins'),
                        // )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 100),
                          child: Container(
                            height: 48,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              onEditingComplete: () {
                                if (formKey.currentState!.validate()) {
                                  showReceiptSheet(context,cashController.text);
                                }
                              },
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              controller: cashController,
                              style: const TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 29,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                              autofocus: true,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Please enter your amount';
                                }
                              },
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                suffix: Text(
                                  "EGP",
                                  style: TextStyle(
                                      fontFamily: 'poppins',
                                      fontSize: 29,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 0),
                                errorStyle: TextStyle(
                                    fontFamily: 'poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.red),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ],
                ),
              )));
    },
  );
}
