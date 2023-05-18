import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import 'main.dart';

HexColor primaryColor=HexColor("#3968FF");
//////////////////////////////////////////////////
svgPicture(image)=>SvgPicture.asset("assets/images/${image}.svg",fit: BoxFit.fill);
/////////////////////////////////////////////////

navigateTo(
    context,
    widget,
    ) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
//////////////////////////////////////////////////
void navigateAndFinish(
    context,
    widget,
    ) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
          (route) {
        return false;
      },
    );

/////////////////////////////////////////////////
String arabicNumbers(String input) {
  const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const farsi = ['۰', '١', '۲', '۳', '٤', '٥', '٦', '۷', '۸', '۹'];

  for (int i = 0; i < english.length; i++) {
    input = input.replaceAll(english[i], farsi[i]);
  }

  return input;
}
//////////////////////////
 appImage(image)=>Image.asset("assets/images/$image");

/////////////////////////////////////////////
String englishNumbers(String input) {
  const arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
  const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

  for (int i = 0; i < arabic.length; i++) {
    input = input.replaceAll(arabic[i], english[i]);
  }

  return input;
}


//////////////////////////////////
String selectedLang=localStorage.getString("lang")??"";

///////////////////////////////////////
Widget appBarLogo()=>Container(
    color: HexColor("#3968FF"),
    width: double.infinity,
    child: SvgPicture.asset('assets/images/hand.svg',fit: BoxFit.fitHeight,alignment: Alignment.topLeft,
    ));

//////////////////////////////////
String setPoint=localStorage.getString("SP")??"0";
String ICR=localStorage.getString("ICR")??"0";
String ICF=localStorage.getString("ICF")??"0";


