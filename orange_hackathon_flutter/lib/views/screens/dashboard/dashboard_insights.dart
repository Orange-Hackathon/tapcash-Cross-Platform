import 'package:flutter/material.dart';

class DashboardInsights extends StatelessWidget {
  //constructor
  const DashboardInsights({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insights'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Scaffold(
              body: Center(
                child: Text('Insights Page'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
