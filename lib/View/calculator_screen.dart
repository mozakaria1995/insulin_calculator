import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:insulin_calculator/common.dart';
import 'package:insulin_calculator/main.dart';

class CalculatorScreen extends StatefulWidget {


  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController measuredInsulin=TextEditingController();
  TextEditingController measuredCarb=TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey();

  int result=0;
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
              Container(
                  color: HexColor("#3968FF"),
                  width: double.infinity,
                  child: Stack(
                    children: [
                      SvgPicture.asset('assets/images/calculatorheader.svg',fit: BoxFit.cover
                        ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 60),
                        child: Align(
                          alignment: Alignment.bottomRight,
                            child: Text("حسبة الانسولين",style: TextStyle(color: Colors.white,fontSize: 30),)),
                      )

                    ],
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 24),
                child: Text("قياس السكر قبل الوجبة",style: TextStyle(fontSize: 24,color: primaryColor),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24,0,24,12),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  controller: measuredInsulin,
                  keyboardType: TextInputType.number,
                  validator: (v){
                    if(v!.isEmpty){
                      return "من فضلك ادخل قياس السكر";
                    }
                    if (double.tryParse(englishNumbers(v)) == null) {
                      return 'من فضلك أدخل قيمة رقمية صحيحة';
                    }
                  },
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
                child: Text("كمية النشويات بالوجبة ( جرام )",style: TextStyle(fontSize: 24,color: primaryColor),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24,0,24,12),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  controller: measuredCarb,
                  keyboardType: TextInputType.number,
                  validator: (v){
                    if(v!.isEmpty){
                      return "من فضلك ادخل كميه النشويات";
                    }
    if (double.tryParse(englishNumbers(v)) == null) {
      return 'من فضلك أدخل قيمة رقمية صحيحة';
    }
                  },
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
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Center(child: Container(
                  width: 300,
                  child: ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){
                      print(measuredInsulin.text);
                      setState(() {
                        var insulinDoze=(int.parse(englishNumbers(measuredInsulin.text))-int.parse(englishNumbers(setPoint)))/int.parse(englishNumbers(ICF));
                        var carbInsulinDoze=int.parse(englishNumbers(measuredCarb.text))/int.parse(englishNumbers(ICR));
                        var decimalString=insulinDoze+carbInsulinDoze;
                        result=decimalString.toInt();
                        if(result<0){
                          var snackBar = SnackBar(content: Text('قيمه غير صحيحه',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),backgroundColor: primaryColor,);
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }


                      });

                    }
                  }, child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text("احسب",style: TextStyle(fontSize: 29,),),
                  )),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Visibility(
                  visible: result>0?true:false,
                  child: Center(
                    child: Text(
                      'الناتج',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: result>0?true:false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Center(
                    child: Container(
                      color: primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text(
                              'وحدة انسولين',
                              style: TextStyle(fontSize: 30,color: Colors.white)
                            ),
                            SizedBox(width: 10,),
                            Text(selectedLang=="en"?
                                '${result}':arabicNumbers(result.toString()),
                                style: TextStyle(fontSize: 30,color: Colors.white)
                            ),
                          ],
                        ),
                      ),
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

  @override
  void initState() {
    super.initState();
    ICR=localStorage.getString("ICR")??ICR;
    ICF=localStorage.getString("ICF")??ICR;
    setPoint=localStorage.getString("SP")??setPoint;
  }
}
