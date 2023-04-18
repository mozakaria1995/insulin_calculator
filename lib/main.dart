import 'package:flutter/material.dart';
import 'package:insulin_calculator/common.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'View/splash_screen.dart';

late SharedPreferences localStorage;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
  localStorage = await SharedPreferences.getInstance();

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: (context, child) {
          return MediaQuery(
            child: child!,
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          );
        },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Tajawal",


        colorScheme:
        ColorScheme.fromSwatch().copyWith(primary: primaryColor),

      ),
      home: SplashScreen()
    );
  }
}

