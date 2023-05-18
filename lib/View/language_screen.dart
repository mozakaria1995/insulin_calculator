
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:insulin_calculator/View/home_screen.dart';
import 'package:insulin_calculator/main.dart';

import '../common.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              svgPicture("calculator"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text("اختر اللغة",style: TextStyle(fontSize: 47,color: primaryColor),),
              ),
              Container(
                  width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  localStorage.setString("lang", "ar");

                  navigateTo(context, HomeScreen());
                }, child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text("عربى",style: TextStyle(fontSize: 26)),
                )),
              ),
              Container(width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: ElevatedButton(onPressed: (){
                    localStorage.setString("lang", "en");
                    navigateTo(context, HomeScreen());

                  }, child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text("English",style: TextStyle(fontSize: 26),),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
