import 'package:flutter/material.dart';
import 'package:orange_hackathon_flutter/views/widgets/phone_contact_element.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) => PhoneContactElement(),
          separatorBuilder: (context, index) => SizedBox(height: 16),
          itemCount: 10),
    );
  }
}
