import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:insulin_calculator/View/contact_us_screen.dart';
import 'package:insulin_calculator/View/language_screen.dart';
import 'package:insulin_calculator/View/food_categories_screen.dart';
import 'package:insulin_calculator/View/settings_screen.dart';
import 'package:insulin_calculator/common.dart';

import 'calculator_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: HexColor("#3968FF"),
              width: double.infinity,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    SvgPicture.asset('assets/images/1.svg',fit: BoxFit.fill
                      ,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text("...مرحباً بك",style: TextStyle(color: Colors.white,fontSize: 30),),
                    )

                  ],
                )),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: (){
                      navigateTo(context, CalculatorScreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/images/aaaaa.svg"),
                          SizedBox(width: 10,),
                          Text("حسبة الانسولين",style: TextStyle(fontSize: 29,color: primaryColor),)
                        ],
                      ),
                    ),
                  ),
                  Divider(color: Colors.grey[500],),
                  GestureDetector(
    behavior: HitTestBehavior.translucent,
    onTap: (){
    navigateTo(context, FoodCategoriesScreen());},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/images/scheduale.svg"),
                          SizedBox(width: 10,),
                          Text("جدول الوجبات",style: TextStyle(fontSize: 29,color: primaryColor),)
                        ],
                      ),
                    ),
                  ),
                  Divider(color: Colors.grey[500],),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: (){
                      navigateTo(context, SettingsScreen());},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/images/settings.svg"),
                          SizedBox(width: 10,),
                          Text("الاعدادات",style: TextStyle(fontSize: 29,color: primaryColor),)
                        ],
                      ),
                    ),
                  ),
                  Divider(color: Colors.grey[500],),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: (){
                      navigateTo(context, ContactUsScreen());},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/images/contactus.svg"),
                          SizedBox(width: 10,),
                          Text("اتصل بنا",style: TextStyle(fontSize: 29,color: primaryColor),)
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            )


          ],
        ),
      )
    );
  }
}
