import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insulin_calculator/View/scheduale_screen.dart';
import 'package:insulin_calculator/common.dart';
import 'package:insulin_calculator/food_list.dart';

class FoodCategoriesScreen extends StatelessWidget {
  const FoodCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                  color: primaryColor,
                  border: Border.all(color: primaryColor),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                ),
                width: double.infinity,
                child: Center(
                    child: Text(
                  "جدول الوجبات",
                  style: TextStyle(fontSize: 38, color: Colors.white),
                )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: (){
                  navigateTo(context, ScheduleScreen("جدول الإفطار و العشاء",breakfastList));
                },
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 2.0
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(5.0) //                 <--- border radius here
                      ),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Container(
                              height:100,
                              width: 100,
                              child: Image.asset("assets/images/breakfast.png")),
                          SizedBox(width: 10,),

                          Expanded(child: Text("جدول الإفطار و العشاء",style: TextStyle(fontSize: 23,color: primaryColor),))

                        ],
                      ),
                    ),

                  ),
                ),
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,

                onTap: (){
                  navigateTo(context, ScheduleScreen("جدول الغداء",dinnerList));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 2.0
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(5.0) //                 <--- border radius here
                      ),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Container(
                              height:100,
                              width: 100,
                              child: Image.asset("assets/images/meat.png")),
                          SizedBox(width: 10,),

                          Expanded(child: Text("جدول الغداء",style: TextStyle(fontSize: 23,color: primaryColor),))

                        ],
                      ),
                    ),

                  ),
                ),
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,

                onTap: (){
                  navigateTo(context, ScheduleScreen("جدول الفاكهة",fruitList));
                },
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 2.0
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),

                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Container(
                                  height:100,
                                  width: 100,
                                  child: Image.asset("assets/images/vegtable.png")),
                              SizedBox(width: 10,),
                              Expanded(child: Text("جدول الفاكهة",style: TextStyle(fontSize: 23,color: primaryColor),))

                            ],
                          ),
                        ),

                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,

                  onTap: (){
                    navigateTo(context, ScheduleScreen("جدول المكسرات",nutsList));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                width: 2.0
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(5.0) //                 <--- border radius here
                            ),

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Container(
                                    height:100,
                                    width:100,
                                    child: Image.asset("assets/images/Group 7911.png")),
                                SizedBox(width: 10,),

                                Expanded(child: Text("جدول المكسرات",style: TextStyle(fontSize: 23,color: primaryColor),))

                              ],
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,

                  onTap: (){
                    navigateTo(context, ScheduleScreen("اكل السوبرماركت",superMarketList));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                width: 2.0
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(5.0) //                 <--- border radius here
                            ),

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Container(
                                    height:100,
                                    width:100,
                                    child: Image.asset("assets/images/supermarket.png")),
                                SizedBox(width: 10,),

                                Expanded(child: Text("اكل السوبرماركت",style: TextStyle(fontSize: 23,color: primaryColor),))

                              ],
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,

                  onTap: (){
                    navigateTo(context, ScheduleScreen("اكل الشارع",kfcList));
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24,0,24, 24,),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                width: 2.0
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(5.0) //                 <--- border radius here
                            ),

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Container(
                                    height:100,
                                    width:100,
                                    child: Image.asset("assets/images/streetfood.png")),
                                SizedBox(width: 10,),

                                Expanded(child: Text("اكل التيك اواى",style: TextStyle(fontSize: 23,color: primaryColor),))

                              ],
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
