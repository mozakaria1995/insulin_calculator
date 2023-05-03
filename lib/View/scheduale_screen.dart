import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insulin_calculator/Models/food_model.dart';
import 'package:insulin_calculator/View/Magnifier.dart';
import 'package:insulin_calculator/View/widgets/food_view.dart';
import 'package:insulin_calculator/common.dart';
import 'package:insulin_calculator/food_list.dart';
import 'package:photo_view/photo_view.dart';


class ScheduleScreen extends StatefulWidget {
  String title;
  List<FoodModel> foodList=[];

  ScheduleScreen(this.title, this.foodList);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  String searchText = '';
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final filteredList =
    widget.foodList.where((food) => food.title.contains(searchText)).toList();
    return MagnifierWidget(Column(
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
                widget.title,
                style: TextStyle(fontSize: 30, color: Colors.white),
              )),
        ),
        if(widget.foodList!=kfcList)
          TextField(
            controller: searchController,
            decoration: InputDecoration(hintText: "بحث..",hintTextDirection: TextDirection.rtl,contentPadding: const EdgeInsets.symmetric(horizontal: 24),hintStyle: TextStyle(fontSize: 24)),
            onChanged: (letter){
              setState(() {
                searchText = letter;
              });


            },
          ),

        widget.foodList!=kfcList?
        foodView(filteredList,"default")
            :
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Container(
                height: 100,

                width: 200,
                child: Image.asset(streetFoodType[0]),
              ),
            ),
            MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: foodView(kfcList,"kfc")),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Divider(thickness: 4,),
            ),
            Container(
              height: 100,
              width: 200,
              child: Image.asset(streetFoodType[1]),
            ),
            MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: foodView(macList,"mac")),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Divider(thickness: 4,),
            ),
            Container(
              height: 100,
              width: 200,
              child: Image.asset(streetFoodType[2]),
            ),
            MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: foodView(cinabbonList,"cinabbon")),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Divider(thickness: 4,),
            ),
            MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: foodView(streetList,"street")),
          ],
        )





      ],
    ));
  }
}
