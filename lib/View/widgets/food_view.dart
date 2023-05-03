import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../../common.dart';

Widget foodView(list,image)=>ListView.builder(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: list.length,
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
                                  tag: '$image${index}',
                                  child: PhotoView(
                                    imageProvider: AssetImage(list[index].image),
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
                      tag: '$image${index}',
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Image.asset(list[index].image),
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
                    list[index].title,
                    style: TextStyle(fontSize: 22),
                  ),
                  selectedLang=="en"?
                  Text(

                    list[index].description,
                    style: TextStyle(
                        fontSize: 16, color: primaryColor),
                  ):Text(
                    arabicNumbers(list[index].description)

                    ,
                    style: TextStyle(
                        fontSize: 16, color: primaryColor),
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
                          child: selectedLang=="en"?Text(list[index].carbRatio,style:  TextStyle(
                              fontSize: 20,
                              color: Colors.white),):Text(
                            arabicNumbers(list[index].carbRatio)
                            ,

                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        color: primaryColor,
                      ),
                      Text(                                 list[index].type,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    });