import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insulin_calculator/Models/food_model.dart';
import 'package:insulin_calculator/common.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
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
                widget.title,
                style: TextStyle(fontSize: 30, color: Colors.white),
              )),
            ),
            TextField(
              controller: searchController,
              decoration: InputDecoration(hintText: "بحث..",hintTextDirection: TextDirection.rtl,contentPadding: const EdgeInsets.symmetric(horizontal: 24),hintStyle: TextStyle(fontSize: 24)),
              onChanged: (letter){
                setState(() {
                  searchText = letter;
                });


              },
            ),

            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
                itemCount: filteredList.length,
                itemBuilder: (context, index) {

                  return Padding(
                      padding: const EdgeInsets.all(32),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey[300]!,
                                      width: 3.0,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).push(
                                      MaterialPageRoute<void>(
                                        builder: (BuildContext context) {
                                          return Scaffold(
                                            appBar: AppBar(backgroundColor: Colors.black,),
                                            body: Center(
                                              child: Hero(
                                                tag: 'imageHero${index}',
                                                child: PhotoView(
                                                  imageProvider: AssetImage(filteredList[index].image),
                                                  minScale: 0.5,
                                                  maxScale: 4.0,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: 'imageHero${index}',
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        child: Image.asset(filteredList[index].image),
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  filteredList[index].title,
                                  style: TextStyle(fontSize: 18),
                                ),
                                selectedLang=="en"?
                                Text(

                                  filteredList[index].description,
                                  style: TextStyle(
                                      fontSize: 10, color: primaryColor),
                                ):Text(
                                  arabicNumbers(filteredList[index].description)

                                  ,
                                  style: TextStyle(
                                      fontSize: 10, color: primaryColor),
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: selectedLang=="en"?Text(filteredList[index].carbRatio,style:  TextStyle(
                                            fontSize: 11,
                                            color: Colors.white),):Text(
                                          arabicNumbers(filteredList[index].carbRatio)
                                          ,

                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.white),
                                        ),
                                      ),
                                      color: primaryColor,
                                    ),
                                    Text(                                 filteredList[index].type,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                })
          ],
        ),
      ),
    );
  }
}
