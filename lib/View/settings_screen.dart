import 'package:flutter/material.dart';
import 'package:insulin_calculator/common.dart';
import 'package:insulin_calculator/main.dart';

class SettingsScreen extends StatefulWidget {


  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  TextEditingController icrController=TextEditingController();
  bool enableTextField=false;
  TextEditingController icfController=TextEditingController();
  TextEditingController setPointController=TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end
            ,
            children: [
              appBarLogo(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 24),
                child: Text("معامل الجرعة التصحيحية",style: TextStyle(fontSize: 24,color: primaryColor),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24,0,24,12),
                child: TextFormField(
                  style: TextStyle(fontSize: 25,color: Colors.red),

                  autovalidateMode: AutovalidateMode.always,
                  controller: icfController,
                  enabled: enableTextField?true:false,

                  keyboardType: TextInputType.number,
                  validator: (value){
                    if (value!.isEmpty) {
                      return 'من فضلك أدخل قيمة رقمية';
                    }
                    if (double.tryParse(englishNumbers(value)) == null) {
                      return 'من فضلك أدخل قيمة رقمية صحيحة';
                    }},
                  decoration:  InputDecoration(
                      border:
                      OutlineInputBorder(
                          borderSide: BorderSide()),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide()),
                      enabledBorder: OutlineInputBorder(
                        borderSide:  BorderSide(),
                      )
                  ) ,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 24),
                child: Text("معدل السكر المضبوط",style: TextStyle(fontSize: 24,color: primaryColor),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24,0,24,12),
                child: TextFormField(
                  style: TextStyle(fontSize: 25,color: Colors.red),
                  autovalidateMode: AutovalidateMode.always,
                  controller: setPointController,
                  enabled:enableTextField?true:false,

                  keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'من فضلك أدخل قيمة رقمية';
                      }
                      if (double.tryParse(englishNumbers(value)) == null) {
                        return 'من فضلك أدخل قيمة رقمية صحيحة';
                      }},
                  decoration:  InputDecoration(
                      border:
                      OutlineInputBorder(
                          borderSide: BorderSide()),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide()),
                      enabledBorder: OutlineInputBorder(
                        borderSide:  BorderSide(),
                      )
                  ) ,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 24),
                child: Text("معامل الانسولين للنشويات",style: TextStyle(fontSize: 24,color: primaryColor),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24,0,24,12),
                child: TextFormField(
                  style: TextStyle(fontSize: 25,color: Colors.red),

                  enabled: enableTextField?true:false,
                  autovalidateMode: AutovalidateMode.always,
                  controller: icrController,
                  keyboardType: TextInputType.number,
                  validator: (value){
    if (value!.isEmpty) {
    return 'من فضلك أدخل قيمة رقمية';
    }
    if (double.tryParse(englishNumbers(value)) == null) {
    return 'من فضلك أدخل قيمة رقمية صحيحة';
    }},

                  decoration:  InputDecoration(
                      border:
                      OutlineInputBorder(
                          borderSide: BorderSide()),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide()),
                      enabledBorder: OutlineInputBorder(
                        borderSide:  BorderSide(),
                      )
                  ) ,
                ),
              ),
              Visibility(
                visible: enableTextField?false:true,

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(child: Container(
                    child: ElevatedButton(onPressed: (){
                          setState(() {

                          showAlertDialog(context);
                        });



                    }, child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text("مسح و ادخال بيانات جديدة",style: TextStyle(fontSize: 29,),),
                    )),
                  )),
                ),
              ),

              Visibility(
                visible: enableTextField?true:false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(child: Container(
                    child: ElevatedButton(onPressed: (){
                      if(_formKey.currentState!.validate()){
                          setState(() {
                            enableTextField=false;
                            localStorage.setString("ICR", icrController.text);
                            localStorage.setString("ICF", icfController.text);
                            localStorage.setString("SP", setPointController.text);

                        });


                      }
                    }, child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text("ادخال",style: TextStyle(fontSize: 29,),),
                    )),
                  )),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }

  @override
  void initState() {
    super.initState();
    if(selectedLang=="en"){
      setPointController.text=localStorage.getString("SP")??setPoint;
      icrController.text=localStorage.getString("ICR")??ICR;
      icfController.text=localStorage.getString("ICF")??ICF;
    }else{
      setPointController.text=arabicNumbers(localStorage.getString("SP")??arabicNumbers(setPoint));
      icrController.text=arabicNumbers(localStorage.getString("ICR")??arabicNumbers(ICR));
      icfController.text=arabicNumbers(localStorage.getString("ICF")??arabicNumbers(ICF));
    }

  }

  showAlertDialog(BuildContext context) {

    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("لا"),
      onPressed:  () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: Text("نعم"),
      onPressed:  () {
        setState(() {
          enableTextField=true;
          icrController.clear();
          icfController.clear();
          setPointController.clear();
          Navigator.pop(context);
        });




      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("هل انت متأكد من انك تريد الحذف ؟"
      ),
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
