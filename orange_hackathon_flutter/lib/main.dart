import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // ignore: prefer_const_literals_to_create_immutables
      providers: [
        // ChangeNotifierProvider(
        //     create: (context) =>
        //         ProfileProvider(profileService: ProfileService())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TapCash',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            color: Colors.white,
          ),
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange)
              .copyWith(secondary: Colors.lightBlue),
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyLarge: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
        ),
        initialRoute: '/',
        home: const Scaffold(
          body: Center(
            child: Text('Hello World'),
          ),
        ),
        // home: const SplashScreen(),
        routes: const {
          // Home.routeName: (c.tx) => HomePage(),
        },
      ),
    );
  }
}
