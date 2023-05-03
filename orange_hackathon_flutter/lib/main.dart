import 'package:flutter/material.dart';
import 'package:orange_hackathon_flutter/assets/colors.dart';
import 'package:orange_hackathon_flutter/views/screens/dashboard/dashboard.dart';
import 'package:orange_hackathon_flutter/views/screens/dashboard/dashboard_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TAPcash',
      theme: ThemeData(
        primarySwatch: blueShade, //Colors.deepPurple, //CCCE96
      ),
      home: const MyHomePage(title: 'TAPcash'),
      routes: {
        DashboardHome.routename: (ctx) => const DashboardHome(),
        Dashboard.routename: (ctx) => const Dashboard(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Dashboard.routename);
                },
                child: const Text("Go to dashboard"))
          ],
        ),
      ),
    );
  }
}
