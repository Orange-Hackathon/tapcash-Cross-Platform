import 'package:flutter/material.dart';

import '../../../models/dashboard/dashboard_home_model.dart';

class GetCardNumberButton extends StatelessWidget {
  const GetCardNumberButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1A1A1A),
        splashFactory:
            InkRipple.splashFactory,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        minimumSize: const Size(312, 48),
      ),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            refresh,
            const Text(
              "Get Card Number",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
          ]),
    );
  }
}
