import 'package:insulin_calculator/common.dart';

class FoodModel {

   String image="";
   String title="";
   String description="";
   String type="";
   String carbRatio=arabicNumbers("");
   bool? showHeader = false;

   FoodModel({
     required this.image, required this.title, required this.description, required this.type, required this.carbRatio,this.showHeader
}
      );
}
