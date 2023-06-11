import 'package:flutter/cupertino.dart';
import 'package:insulin_calculator/common.dart';

import 'Models/food_model.dart';

String breakfastImagePath(String im)=>"assets/images/breakfast/$im.png";
String dinnerImagePath(String im)=>"assets/images/dinner/$im.png";
String fruitImagePath(String im)=>"assets/images/vegtable/$im.png";
String nutsImagePath(String im)=>"assets/images/nuts/$im.png";
String kfcImagePath(String im)=>"assets/images/kfc/$im.png";
String cinabbon(String im)=>"assets/images/cinabbon/$im.png";
String macImagePath(String im)=>"assets/images/mac/$im.png";
String streetImagePath(String im)=>"assets/images/street/$im.png";
String supermarketImagePath(String im)=>"assets/images/supermarket/$im.png";

List <FoodModel> breakfastList=[
  FoodModel(image: breakfastImagePath("bread"), title: "عيش بلدى", description: "ربع رغيف حوالى 30 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: breakfastImagePath("toast"), title: "توست اسمر", description: "شريحة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: breakfastImagePath("lightBread"), title: "العيش السن", description: "نصف رغيف", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: breakfastImagePath("boksmat"), title: "بقسماط بدون سمسم", description: "عدد 2 متوسط الحجم", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: breakfastImagePath("fino"), title: "عيش فينو", description: "نصف رغيف حوالى 26 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: breakfastImagePath("fool"), title: "فول مدمس", description: "عدد 3 ملاعق ممسوحة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: breakfastImagePath("shofan"), title: "بليلة - شوفان", description: "عدد 3 ملاعق ممسوحة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: breakfastImagePath("falafel"), title: "طعمية", description: "عدد 1 قرص صغير", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: breakfastImagePath("feteer"), title: "فطير", description: "فى حجم ربع رغيف بلدى", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: breakfastImagePath("cornflakes"), title: "كورن فلكس", description: "علبة صغيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers( "30"): "30"),
  FoodModel(image: breakfastImagePath("milk"), title: "لبن كامل الدسم", description: "مج كبير", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("12"): "12"),
  FoodModel(image: breakfastImagePath("halfskimmed"), title: "لبن نصف الدسم", description: "مج كبير", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("12"): "12"),
  FoodModel(image: breakfastImagePath("skimmed"), title: "لبن خالى الدسم", description: "مج كبير", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("12"): "12"),
  FoodModel(image: breakfastImagePath("rayeb"), title: "لبن رايب", description: "مج كبير", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("12"): "12"),
  FoodModel(image: breakfastImagePath("zabady"), title: "زبادى كامل الدسم", description: "عدد 2 كوب زبادى صغير", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("12"): "12"),
  FoodModel(image: breakfastImagePath("zabadyfruit"), title: "مشروب زبادى بالفواكة لايت", description: "نصف كوب متوسط", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("10"): "10"),
  FoodModel(image: breakfastImagePath("zabadyfruit2"), title: "زبادى بالفاكهة", description: "علبة زبادى صغير", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("18"): "18"),
  FoodModel(image: breakfastImagePath("boiledegg"), title: "بيض مسلوق", description: "بيضة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: breakfastImagePath("friedegg"), title: "بيض مقلي", description: "بيضة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: breakfastImagePath("bastrami"), title: "بسطرمة", description: "شريحة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: breakfastImagePath("sausage"), title: "سوسيس", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: breakfastImagePath("burger"), title: "هامبرجر", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: breakfastImagePath("arish"), title: "جبن قريش", description: "حجم جبنة نستو", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: breakfastImagePath("romy"), title: "جبن رومى", description: "شريحة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: breakfastImagePath("goda"), title: "جبن جودة", description: "شريحة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: breakfastImagePath("chedder"), title: "جبن شيدر", description: "شريحة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: breakfastImagePath("nesto"), title: "جبن نستو", description: "عدد 2 مكعب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: breakfastImagePath("rkford"), title: "جبن ركفورد", description: "فى حجم الجبنة النستو", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: breakfastImagePath("dansh"), title: "دانش", description: "حجم البيضة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("24"): "24"),
  FoodModel(image: breakfastImagePath("danshfruit"), title: "دانش بالفواكة", description: "حجم البيضة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("28"): "28"),
  FoodModel(image: breakfastImagePath("croissent"), title: "كرواسون", description: "قطعة حجم كف اليد", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("28"): "28"),
  FoodModel(image: breakfastImagePath("salad"), title: "سلطة خضراء", description: "طبق متوسط", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers( "-"): "-"),
  FoodModel(image: breakfastImagePath("milkpowder"), title: "لبن بودرة", description: "عدد 2 معالق", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("12"): "12"),
  FoodModel(image: breakfastImagePath("coffemix"), title: "كوفى ميكس", description: "كيس", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("11"): "11"),
  FoodModel(image: breakfastImagePath("zabado"), title: "زبادو صغير", description: "عبوة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("28"): "28"),
  FoodModel(image: breakfastImagePath("zbaadolarge"), title: "زبادو كبير", description: "عبوة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("55"): "55"),
  FoodModel(image: breakfastImagePath("suger"), title: "سكر او عسل او مربى", description: "معلقة صغيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("5"): "5"),
  FoodModel(image: breakfastImagePath("sugerlarge"), title: "سكر او عسل او مربى", description: "معلقة كبيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: breakfastImagePath("fries"), title: "بطاطس محمرة", description: "عدد 10 صوابع حجم 10 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("10"): "10"),
  FoodModel(image: breakfastImagePath("shofan2"), title: "شوفان", description: "عدد 3 معالق", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),


];

List <FoodModel> dinnerList=[
  FoodModel(image: dinnerImagePath("whiterice"), title: "أرز أبيض", description: "عدد 3 ملعقة طعام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("macroni"), title: "مكرونة مسلوقة-فريك", description: "عدد 4 ملعقة طعام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("lesanasfor"), title: "لسان عصفور او شعرية", description: "عدد 4 معالق", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("koshri"), title: "كشرى", description: "عدد 4 ملعقة طعام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("kromb"), title: "محشى كرنب", description: "عدد 6 أصابع متوسطة أو 8 أصابع صغيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("kosa"), title: "محشى كوسه", description: "صباع متوسط", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("betngan"), title: "محشى باذنجان", description: "صباع متوسط", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("felfel"), title: "محشى طماطم او فلفل", description: "ثمرة متوسطة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("war3enab"), title: "محشى ورق عنب", description: "عدد 6 أصابع متوسطة أو 8 أصابع صغيرة ", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("potato"), title: "بطاطس", description: "ثمرة صغيرة او 4 ترانش", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("sweetpotato"), title: "بطاطا", description: "ثمرة صغيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("kolkas"), title: "قلقاس", description: "عدد 5 ملاعق", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("besla"), title: "بسلة", description: "نصف كوب ( 3 معالق )", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("khodar"), title: "خضار غير نشوى", description: "من 6 الى 9 ملاعق", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("shorbtkhodar"), title: "شوربة خضار", description: "1 كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("24"): "24"),
  FoodModel(image: dinnerImagePath("bqool"), title: "بقول", description: "عدد 3 ملاعق", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("rokak"), title: "قطعة بحجم ورقة الكوتشينة - جلاش باللحم المفروم", description: "ربع رغيف حوالى 30 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("macronioven"), title: "مكرونة فرن", description: "قطعة بحجم ورقة الكوتشينة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("45"): "45"),
  FoodModel(image: dinnerImagePath("betlomeat"), title: "لحم بتلو", description: "حجم بطن كف اليد", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: dinnerImagePath("dekromy"), title: "فراخ-ارانب-ديك رومى", description: "حجم بطن كف اليد", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: dinnerImagePath("duck"), title: "بط - حمام", description: "حجم بطن كف اليد", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: dinnerImagePath("meatdany"), title: "لحم ضانى - كندوز", description: "حجم بطن كف اليد", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: dinnerImagePath("fish"), title: "سمك - تونة", description: "حجم بطن كف اليد", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: breakfastImagePath("salad"), title: "سلطة خضراء", description: "طبق متوسط", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("-"): "-"),
  FoodModel(image: dinnerImagePath("nagts"), title: "ناجتس", description: "عدد 4 قطع", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers( "15"): "15"),
  FoodModel(image: dinnerImagePath("paneh"), title: "بانية", description: "عدد 2 شريحة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: dinnerImagePath("carrot"), title: "جزر او بنجر", description: "ثمرة صغيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("6"): "6"),
  FoodModel(image: dinnerImagePath("ads"), title: "شوربة عدس بدون شعرية", description: "بولة صغيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("20"): "20"),
  FoodModel(image: dinnerImagePath("ads2"), title: "شوربة عدس بالشعرية", description: "بولة صغيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("30"): "30"),
  FoodModel(image: dinnerImagePath("katshb"), title: "كاتشب", description: "كيس صغير", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("3"): "3"),
  FoodModel(image: dinnerImagePath("thomya"), title: "ثومية او سلطة طحينة", description: "عدد 3 معالق", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers( "15"): "15"),


];

List <FoodModel> fruitList=[
  FoodModel(image: fruitImagePath("apple"), title: "تفاح", description: "ثمرة متوسطة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("komthra"), title: "كمثرى", description: "ثمرة صغيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("orange"), title: "برتقال", description: "برتقالة صغيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("guava"), title: "جوافة", description: "ثمرة متوسطة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("grabefruit"), title: "جريبفروت", description: "ثمرة متوسطة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("yosfy"), title: "يوسفى", description: "عدد 2 ثمرة صغيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("khokh"), title: "خوخ", description: "عدد 2 ثمرة صغيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("barkok"), title: "برقوق", description: "عدد 2 برقوق صغير", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("meshmesh"), title: "مشمش", description: "عدد 2 مشمش صغير", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("kiwi"), title: "كيوى", description: "عدد 2 ثمرة صغيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("ananas"), title: "اناناس", description: "عدد 4/3 مج قطع اناناس", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("kantalob"), title: "كنتالوب", description: "عدد 4/3 مج قطع كنتالوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("frawla"), title: "فراولة", description: "عدد 4/3 مج قطع فراولة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("shamam"), title: "شمام", description: "مج قطع شمام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("roman"), title: "رمان", description: "عنصف ثمرة متوسطة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("kraze"), title: "كريز", description: "عدد 10 حبات", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("banana"), title: "موز", description: "ثمرة صغيرة موز بلدى", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("watermelon"), title: "بطيخ", description: "شريحة حجم كف اليد", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("dates"), title: "بلح احمر", description: "عدد 2 بلحة صغيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("grabes"), title: "عنب", description: "عدد 10 حبات", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("mango"), title: "مانجو", description: "شريحة مانجو", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("teen"), title: "تين شوكى", description: "ثمرة في حجم يوسفى متوسطة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("balh"), title: "بلح أصفر أو رطب", description: "عدد 2 ثمرة صغيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("zebeb"), title: "زبيب", description: "ملعقة كبيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: fruitImagePath("toot"), title: "توت", description: "كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),


];

List<FoodModel> nutsList=[
  FoodModel(image: nutsImagePath("leb"), title: "لب أبيض", description: "ملىء راحة اليد حجم 100 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers( "11"): "11"),
  FoodModel(image: nutsImagePath("lebsory"), title: "لب سورى", description: "ملىء راحة اليد حجم 100 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("24"): "24"),
  FoodModel(image: nutsImagePath("folsodany"), title: "فول سودانى", description: "ملىء راحة اليد حجم 100 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("16"): "16"),
  FoodModel(image: nutsImagePath("terms"), title: "ترمس", description: "ملىء راحة اليد حجم 100 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("10"): "10"),
  FoodModel(image: nutsImagePath("feshar"), title: "فشار", description: "حجم 2 كوب متوسط", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),


];
List<FoodModel> superMarketList=[
  FoodModel(image: dinnerImagePath("pepsi"), title: "بيبسى", description: "حجم 350 مل", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("72.4"): "72.4"),
  FoodModel(image: supermarketImagePath("8"), title: "بيبسى", description: "حجم 320 مل", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("70.4"): "70.4"),
  FoodModel(image: supermarketImagePath("7"), title: "بيبسى جيب ", description: "حجم 240 مل", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("52.8"): "52.8"),

  FoodModel(image: supermarketImagePath("1"), title: "مولتو قطع فراولة", description: "كيس", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("42"): "42"),
  FoodModel(image: supermarketImagePath("2"), title: "عصير جهينة عنب", description: "علبة عصير", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("37"): "37"),
  FoodModel(image: supermarketImagePath("3"), title: "اندومى", description: "كيس صغير", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("44"): "44"),
  FoodModel(image: supermarketImagePath("4"), title: "لبن مكس", description: "حجم 200 مل", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("23"): "23"),
  FoodModel(image: supermarketImagePath("5"), title: "زبادو", description: "حجم 440 مل", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("55"): "55"),
  FoodModel(image: supermarketImagePath("6"), title: "ريد بول مشروب طاقة", description: "حجم 250 مل", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("55"): "55"),
  FoodModel(image: supermarketImagePath("9"), title: "شيكولاتة جالكسى", description: "حجم 18 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("10"): "10"),
  FoodModel(image: supermarketImagePath("10"), title: "شيكولاتة بوينتى", description: "حجم 57 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("28"): "28"),
  FoodModel(image: supermarketImagePath("11"), title: "شيكولاتة بوينتى", description: "حجم صغير 28.5 جرام - قطعة واحدة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("14"): "14"),
  FoodModel(image: supermarketImagePath("12"), title: " شيكولاتة مارس", description: "حجم 51 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("31"): "31"),
  FoodModel(image: supermarketImagePath("13"), title: "شيكولاتة سنيكرز", description: "حجم 50 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("25.9"): "25.9"),
  FoodModel(image: supermarketImagePath("14"), title: "شيكولاتة كيت كات", description: "حجم 41.5 جرام - 4 صوابع", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("60.1"): "60.1"),
  FoodModel(image: supermarketImagePath("15"), title: "بسكويت مكفتيز بالشوفان", description: "حجم 24 جرام - عدد قطعتين", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("14.7"): "14.7"),
  FoodModel(image: supermarketImagePath("15"), title: "بسكويت مكفتيز بالشوفان", description: "حجم 24 جرام - قطعة واحدة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("7.3"): "7.3"),
  FoodModel(image: supermarketImagePath("16"), title: "شيبسى", description: "كيس شيبسى وزن 50 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("30"): "30"),
  FoodModel(image: supermarketImagePath("17"), title: "فلامنكو شوفان-سودانى", description: "وزن 50 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("15"): "15"),
  FoodModel(image: supermarketImagePath("18"), title: "فلامنكو بالجبنة", description: "وزن 50 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("40"): "40"),
  FoodModel(image: supermarketImagePath("19"), title: "كيس ويندوز", description: "وزن 50 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("40"): "40"),
  FoodModel(image: supermarketImagePath("20"), title: "بيك رولز", description: "وزن 50 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("30"): "30"),
  FoodModel(image: supermarketImagePath("20"), title: "بيك رولز", description: "وزن 2.28 جرام", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("1.39"): "1.39"),


];

List<FoodModel> kfcList=[
  FoodModel(image: kfcImagePath("1"), title: "ساندوتش زنجر سوبريم", description: "ساندوتش", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("90"): "90"),
  FoodModel(image: kfcImagePath("2"), title: "ساندوتش تويستر", description: "ساندوتش", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("16"): "16"),
  FoodModel(image: kfcImagePath("3"), title: "ساندوتش زنجر", description: "ساندوتش", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("57"): "57"),
  FoodModel(image: kfcImagePath("4"), title: "سلطة كولسلو", description: "الحجم الكبير", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("23"): "23"),
  FoodModel(image: kfcImagePath("5"), title: "بطاطس KFC", description: "باكيت بطاطس", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("39"): "39"),
  FoodModel(image: kfcImagePath("6"), title: "ريزو سبايسى", description: "طبق", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("104"): "104"),
  FoodModel(image: kfcImagePath("7"), title: "ريزو عادى", description: "طبق", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("99"): "99"),
  FoodModel(image: kfcImagePath("8"), title: "دبوس عادى", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("6"): "6"),
  FoodModel(image: kfcImagePath("9"), title: "صدر عادى", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("14"): "14"),
  FoodModel(image: kfcImagePath("10"), title: "فخذ عادى", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers( "22"): "22"),
  FoodModel(image: kfcImagePath("11"), title: "جناح عادى", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("5"): "5"),
  FoodModel(image: kfcImagePath("17"), title: "استربس عادى", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers( "7"): "7"),
  FoodModel(image: kfcImagePath("13"), title: "دبوس حار", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("5.5"): "5.5"),
  FoodModel(image: kfcImagePath("14"), title: "صدر حار", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("29"): "29"),
  FoodModel(image: kfcImagePath("10"), title: "فخذ حار", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("30"): "30"),
  FoodModel(image: kfcImagePath("16"), title: "جناح حار", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("10"): "10"),
  FoodModel(image: kfcImagePath("17"), title: "استربس حار", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("7.2"): "7.2"),


];
List<FoodModel> cinabbonList=[
  FoodModel(image: cinabbon("1"), title: "كلاسيك سينابون", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("190"): "190"),
  FoodModel(image: cinabbon("2"), title: "كلاسيك سينابون", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("226"): "226"),
  FoodModel(image: cinabbon("3"), title: " مينى بون سينابون", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("76"): "76"),

];
List<FoodModel> macList=[
  FoodModel(image: macImagePath("1"), title: "بيج ماك بيف", description: "ساندوتش", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("57"): "57"),
  FoodModel(image: macImagePath("2"), title: "بيج تايستى بيف", description: "ساندوتش", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("61"): "61"),
  FoodModel(image: macImagePath("3"), title: "ماك رويال بيف", description: "ساندوتش", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("60"): "60"),
  FoodModel(image: macImagePath("4"), title: "ليتل تايستى بيف", description: "ساندوتش", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers( "36"): "36"),
  FoodModel(image: macImagePath("5"), title: "تشيز برجر بيف", description: "ساندوتش", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("39.6"): "39.6"),
  FoodModel(image: macImagePath("6"), title: "ماك تشيكن", description: "ساندوتش", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("55"): "55"),
  FoodModel(image: macImagePath("7"), title: "بيج تايستى تشيكن", description: "ساندوتش", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("63"): "63"),
  FoodModel(image: macImagePath("8"), title: "تشيكن ماك", description: "ساندوتش", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("66"): "66"),
  FoodModel(image: macImagePath("9"), title: " تشيكن ناجتس", description: "عدد 4 قطع", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers( "9"): "9"),
  FoodModel(image: macImagePath("10"), title: "تشيكن ناجتس", description: "عدد 6 قطع", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("14"): "14"),
  FoodModel(image: macImagePath("11"), title: "تشيكن ناجتس", description: "عدد 9 قطع", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("21"): "21"),
  FoodModel(image: macImagePath("24"), title: "بطاطس ماكدونالدز", description: "باكيت بطاطس حجم كبير", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("69"): "69"),
  FoodModel(image: macImagePath("25"), title: "ميلك شيك شوكولاتة", description: "كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("109"): "109"),
  FoodModel(image: macImagePath("26"), title: "ميلك شيك فراولة", description: "كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("105"): "105"),
  FoodModel(image: macImagePath("27"), title: "ميلك شيك فانيليا", description: "كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("111"): "111"),
  FoodModel(image: macImagePath("12"), title: "ماك فلورى", description: "كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("103"): "103"),
  FoodModel(image: macImagePath("13"), title: "صانداى شوكولاتة", description: "كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("67.5"): "67.5"),
  FoodModel(image: macImagePath("14"), title: "صانداى كاراميل", description: "كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("94"): "94"),
  FoodModel(image: macImagePath("15"), title: "صانداى فراولة", description: "كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("88"): "88"),
  FoodModel(image: macImagePath("16"), title: "آيس كريم كون", description: "كون واحد", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers( "41"): "41"),
  FoodModel(image: macImagePath("17"), title: "موكا فرابتشينو", description: "كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("51"): "51"),
  FoodModel(image: macImagePath("18"), title: "كاراميل فرابتشينو", description: "كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("54"): "54"),
  FoodModel(image: macImagePath("19"), title: "شيكولاتة فرابتشينو", description: "كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers( "45"): "45"),
  FoodModel(image: macImagePath("20"), title: "كابتشينو", description: "كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("12"): "12"),
  FoodModel(image: macImagePath("21"), title: "لاتيه", description: "كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("18"): "18"),
  FoodModel(image: macImagePath("22"), title: "فلات وايت", description: "كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("13"): "13"),
  FoodModel(image: macImagePath("23"), title: "كاراميل ميكاتو", description: "كوب", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers( "33"): "33"),

];
List<FoodModel> streetList=[
  FoodModel(image: streetImagePath("1"), title: "اكلير شيكولاتة", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("16"): "16"),
  FoodModel(image: streetImagePath("2"), title: "وافيل سادة", description: "بحجم كف اليد - سادة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("16"): "16"),
  FoodModel(image: streetImagePath("3"), title: "كيكة براونيز", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("69"): "69"),
  FoodModel(image: streetImagePath("4"), title: "تشيز كيك", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("60"): "60"),
  FoodModel(image: streetImagePath("5"), title: "تيراميسو", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("24"): "24"),
  FoodModel(image: streetImagePath("6"), title: "أيس كريم بولة", description: "بولة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("10"): "10"),
  FoodModel(image: streetImagePath("7"), title: "أيس كريم 2 بولة", description: "عدد 2 بولة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("20"): "20"),
  FoodModel(image: streetImagePath("8"), title: "أيس كريم 3 بولة", description: "عدد 3 بولة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("30"): "30"),
  FoodModel(image: streetImagePath("9"), title: "مافن شيكولاتة", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("52"): "52"),
  FoodModel(image: streetImagePath("10"), title: "كيك شيكولاتة", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("42"): "42"),
  FoodModel(image: streetImagePath("11"), title: "جيلى", description: "بولة صغيرة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("26"): "26"),
  FoodModel(image: streetImagePath("12"), title: "جليزد دونات", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("25"): "25"),
  FoodModel(image: streetImagePath("13"), title: " دونات شيكولاتة", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("36"): "36"),
  FoodModel(image: streetImagePath("14"), title: "دونات مربى", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("34"): "34"),
  FoodModel(image: streetImagePath("15"), title: "سبرنكلز دونات", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("39"): "39"),
  FoodModel(image: streetImagePath("16"), title: "دونات بالسكر", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("32"): "32"),
  FoodModel(image: streetImagePath("17"), title: "Maki Sushi", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("7"): "7"),
  FoodModel(image: streetImagePath("18"), title: "Nigiri", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("9"): "9"),
  FoodModel(image: streetImagePath("19"), title: "Salmon Nigiri", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("9"): "9"),
  FoodModel(image: streetImagePath("20"), title: "Tuna Nigiri", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("8"): "8"),
  FoodModel(image: streetImagePath("21"), title: "California Roll", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("9"): "9"),
  FoodModel(image: streetImagePath("22"), title: "كريب", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("20"): "20"),
  FoodModel(image: streetImagePath("23"), title: "ساندوتش سورى", description: "ساندوتش", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("10"): "10"),
  FoodModel(image: streetImagePath("24"), title: "شريحة بيتزا", description: "قطعة", type: "كربوهيدرات", carbRatio:selectedLang!="en"?arabicNumbers("20"): "20"),

];
List streetFoodType=[
  "assets/images/kfc.png",
  "assets/images/mac.png",
  "assets/images/cinabbon.png",
];
