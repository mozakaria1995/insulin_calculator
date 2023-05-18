import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:insulin_calculator/common.dart';
import 'package:insulin_calculator/main.dart';

import 'calculator_screen.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  TextEditingController icrController = TextEditingController();
  bool enableTextField = false;
 late  int _selectedLanguage;
  TextEditingController icfController = TextEditingController();
  TextEditingController setPointController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: appBarLogo(),
          )),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24.0, horizontal: 24),
                child: Text(
                  "معامل الجرعة التصحيحية",
                  style: TextStyle(fontSize: 24, color: primaryColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
                child: TextFormField(
                  style: TextStyle(fontSize: 25, color: Colors.red),
                  autovalidateMode: AutovalidateMode.always,
                  controller: icfController,
                  enabled: enableTextField ? true : false,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'من فضلك أدخل قيمة رقمية';
                    }
                    if (double.tryParse(englishNumbers(value)) == null) {
                      return 'من فضلك أدخل قيمة رقمية صحيحة';
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide()),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(),
                      )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24.0, horizontal: 24),
                child: Text(
                  "معدل السكر المضبوط",
                  style: TextStyle(fontSize: 24, color: primaryColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
                child: TextFormField(
                  style: TextStyle(fontSize: 25, color: Colors.red),
                  autovalidateMode: AutovalidateMode.always,
                  controller: setPointController,
                  enabled: enableTextField ? true : false,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'من فضلك أدخل قيمة رقمية';
                    }
                    if (double.tryParse(englishNumbers(value)) == null) {
                      return 'من فضلك أدخل قيمة رقمية صحيحة';
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide()),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(),
                      )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24.0, horizontal: 24),
                child: Text(
                  "معامل الانسولين للنشويات",
                  style: TextStyle(fontSize: 24, color: primaryColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
                child: TextFormField(
                  style: TextStyle(fontSize: 25, color: Colors.red),
                  enabled: enableTextField ? true : false,
                  autovalidateMode: AutovalidateMode.always,
                  controller: icrController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'من فضلك أدخل قيمة رقمية';
                    }
                    if (double.tryParse(englishNumbers(value)) == null) {
                      return 'من فضلك أدخل قيمة رقمية صحيحة';
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide()),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(),
                      )),
                ),
              ),
              Visibility(
                visible: enableTextField ? false : true,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              showAlertDialog(context);
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Text(
                              "مسح و ادخال بيانات جديدة",
                              style: TextStyle(
                                fontSize: 29,
                              ),
                            ),
                          ))),
                ),
              ),
              Visibility(
                visible: enableTextField ? false : true,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
                  child: Center(
                    child: Container(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          navigateTo(context, CalculatorScreen());
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            'حساب جرعة الانسولين',
                            style: TextStyle(fontSize: 29, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: enableTextField ? true : false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                      child: Container(
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              enableTextField = false;
                              localStorage.setString("ICR", icrController.text);
                              localStorage.setString("ICF", icfController.text);
                              localStorage.setString(
                                  "SP", setPointController.text);
                            });
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            "ادخال",
                            style: TextStyle(
                              fontSize: 29,
                            ),
                          ),
                        )),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 40),
                child: Text(
                  'تغيير اللغة',
                  style: TextStyle(fontSize: 29, color: Colors.black),
                ),
              ),
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    child: Flag.fromString("US"),
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("اللغة الإنجليزية"),
                  Radio(
                    value: 2,
                    groupValue: _selectedLanguage,
                    onChanged: (int? value) {
                      setState(() {
                        selectedLang="en";
                        localStorage.setString("lang", "en");

                        _selectedLanguage = value!;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [

                  Container(
                    child: Flag.fromString("EG"),
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("اللغة العربية"),
                  Radio(
                    value: 1,
                    groupValue: _selectedLanguage,
                    onChanged: (int? value) {
                      setState(() {
                        selectedLang="ar";
                        localStorage.setString("lang", "ar");

                        _selectedLanguage = value!;
                      });
                    },
                  ),
                ],
              ),

            ],
          ),
        ),

            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    if(localStorage.getString("lang")!=null){
      if(localStorage.getString("lang")=="en"){
        _selectedLanguage=2;
      }else{
        _selectedLanguage=1;
      }

    }
    if (selectedLang == "en") {
      setPointController.text = localStorage.getString("SP") ?? setPoint;
      icrController.text = localStorage.getString("ICR") ?? ICR;
      icfController.text = localStorage.getString("ICF") ?? ICF;
    } else {
      setPointController.text = arabicNumbers(
          localStorage.getString("SP") ?? arabicNumbers(setPoint));
      icrController.text =
          arabicNumbers(localStorage.getString("ICR") ?? arabicNumbers(ICR));
      icfController.text =
          arabicNumbers(localStorage.getString("ICF") ?? arabicNumbers(ICF));
    }
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("لا"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: Text("نعم"),
      onPressed: () {
        setState(() {
          enableTextField = true;
          icrController.clear();
          icfController.clear();
          setPointController.clear();
          Navigator.pop(context);
        });
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("هل انت متأكد من انك تريد الحذف ؟"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
