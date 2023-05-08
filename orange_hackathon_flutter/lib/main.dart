import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orange_hackathon_flutter/controllers/authentication_controller.dart';
import 'package:orange_hackathon_flutter/views/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white, // Change this to your desired color
    ));

    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>AuthenticationProvider())
    ],child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Orange',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    ),);
  }
}
