import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:insulin_calculator/common.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 32.0, horizontal: 24),
                  child: Image.asset("assets/images/contactus.png"),
                ),
                Text(
                  "للحجز و الاستعلام",
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          CupertinoIcons.phone_circle_fill,
                          color: primaryColor,
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "01277225995",
                          style: TextStyle(
                              fontSize: 30,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onPressed: () {
                      _callNumber();
                    },
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchURL();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook,
                        size: 40,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "لزيارة صفحة الفيسبوك",
                        style: TextStyle(
                            fontSize: 23,
                            color: primaryColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32.0),
              child: Column(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height / 4,
                      child: Image.asset("assets/images/logo.png")),
                  Text("عيادة التهاب الاعصاب السكرى",
                      style: TextStyle(fontSize: 24, color: Colors.red)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future _launchURL() async {
    final Uri _url = Uri.parse("https://www.facebook.com/diabeticneuropathyclinic?mibextid=ZbWKwL",
        );

    if (!await launchUrl(
      _url,
        mode: LaunchMode.externalApplication
      // mode: LaunchMode.externalNonBrowserApplication,
    )) {
      throw Exception('Could not launch $_url');
    }

  }
}

_callNumber() async {
  const number = '01277225995'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}
