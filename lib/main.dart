import 'package:flutter/material.dart';
import 'package:insulin_calculator/common.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'View/splash_screen.dart';

late SharedPreferences localStorage;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  localStorage = await SharedPreferences.getInstance();

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ICF;
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
    outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
    side: BorderSide(
    color: Colors.black,
    width: 1,
    ))),

        colorScheme:
        ColorScheme.fromSwatch().copyWith(primary: primaryColor),

      ),
      home: SplashScreen()
    );
  }
}


