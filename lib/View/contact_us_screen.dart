import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:insulin_calculator/common.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,iconTheme: IconThemeData(color: Colors.black),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0,horizontal: 24),
                child: Image.asset("assets/images/contactus.png"),
              ),
              Text("للحجز و الاستعلام",style: TextStyle(fontSize: 30,color: Colors.red),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: TextButton(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Icon(
                          CupertinoIcons.phone_circle_fill,
                          color: primaryColor,
                       size: 30,
                        ),
                    SizedBox(width: 5,),

                    Text("01277225995",style: TextStyle(fontSize: 30,color: primaryColor,fontWeight: FontWeight.bold),)

                    ,
                  ],

                ),
                  onPressed: (){
                  _callNumber();
                  },

                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            child: Text("عيادة التهاب الاعصاب السكرى",style: TextStyle(fontSize: 24,color: Colors.red)),
          )

        ],
      ),



    );
  }
  _callNumber() async{
    const number = '01277225995'; //set the number here
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
  }
}
