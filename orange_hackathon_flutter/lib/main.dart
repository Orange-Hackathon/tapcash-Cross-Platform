import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:orange_hackathon_flutter/controllers/authentication_controller.dart';
import 'package:orange_hackathon_flutter/services/authentication_services.dart';
import 'package:orange_hackathon_flutter/views/screens/authentication/splash_screen.dart';
import 'package:orange_hackathon_flutter/views/screens/authentication/test.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: HexColor("#EFEFEF"), // Change this to your desired color
    ));

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthenticationUIProvider(),
        ),
        ChangeNotifierProvider(create: (context) => AuthenticationServices())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Orange',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: HexColor("#EFEFEF"),
          )),
          scaffoldBackgroundColor: HexColor("#EFEFEF"),
          primarySwatch: Colors.blue,
        ),
        home: Test(),
        //const SplashScreen(),
      ),
    );
  }
}
