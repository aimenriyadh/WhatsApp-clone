import 'package:flutter/material.dart';
import 'package:whatsapp_app/Home.dart';
import 'package:whatsapp_app/Chat/Profile.dart';
import 'package:whatsapp_app/Settings.dart';
import 'Chat/Outside_Chat.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        dividerColor: Colors.grey,
        textTheme: const TextTheme(
          subtitle1 : TextStyle(color: const Color(0xff43978D),fontSize: 17),
          subtitle2: TextStyle(color: Colors.white,fontSize: 17),
          headline5 : TextStyle(color: Colors.grey,fontSize: 15),
        )
      ),
      /*
      * 1. Profile()
      * 2. Settings()
      * 3. Chat()
      */
    );
  }
}
// ************************* All The Data Related to the ** Outside_Chat.dart **
List ChatData = [
  {"name":"Mahmoud Ayman","message":"ان شاء الله يهندسه","image":"images/fergani.jpg","time":"12:05 pm"},
  {"name":"Tiger Shroff","message":"you are my best actor","image":"images/ta.png","time":"12:05 pm"},
  {"name":"Captain Ayman Sobhy","message":"حبيب قلبي ي قائد","image":"images/ay.jpg","time":"12:05 pm"},
  {"name":"Mohamed Shrif","message":"ربنا يوفقك ي حبيب قلبي","image":"images/1.jpg","time":"12:05 pm"},
  {"name":"Ahmed El Sabahy","message":"تسلم يخويااا","image":"images/ninga.jpg","time":"12:05 pm"},
  {"name":"Hassan Mohamed","message":"لك واحشه ي شيخ","image":"images/fr.jpg","time":"12:05 pm"},
  {"name":"Mohamed Hashim","message":"ان شاء الله يااارب","image":"images/moha.jpg","time":"12:05 pm"},
  {"name":"Ahmed Shawki","message":"اخبار النتيجه اي ي شوقي","image":"images/28.jpg","time":"12:05 pm"},
  {"name":"Informa","message":"ان شاء الله هنروح الجيم امته ؟","image":"images/forma.jpg","time":"12:05 pm"},
  {"name":"Abo Gabal","message":"تسلم ي ابو جبل","image":"images/gabal.jpg","time":"12:05 pm"},
  {"name":"Sara Kabour","message":"you are my favourite actor","image":"images/20.jpg","time":"12:05 pm"},
  {"name":"Mahmoud Reda","message":"اخبارك اي ي حوده","image":"images/hoda.jpg","time":"12:05 pm"},
  {"name":"Mohamed Ahmed","message":"How are you broo","image":"images/moha.jpg","time":"7:07 pm"},
  {"name":"Big Shenawi","message":"ربنا يوفقك ويصلح حالك ياااارب","image":"images/2.png","time":"12:05 pm"},
  {"name":"Mohamed Walid","message":"عاااااش ي دحيح","image":"images/24.jpg","time":"12:05 pm"},
  {"name":"Ahmed Yaser","message":"حبيبي","image":"images/mo.png","time":"12:05 pm"},
  {"name":"Elwishy","message":"شكرا ي مستر","image":"images/el.jpg","time":"5:40 pm"},
  {"name":"Mohamed Reda","message":" تسلم ي محمد ربنا يخليك","image":"images/elsh.jpg","time":"7:08 pm"},
  {"name":"Ibrahim Salama","message":" حبيبي يخوياا","image":"images/26.jpg","time":"7:08 pm"},
  {"name":"Dr Mohamed Elsayed","message":" حبيبي ي دكتور","image":"images/25.jpg","time":"7:08 pm"},
  {"name":"Eid Ibrahim","message":" تسلم ي عيد","image":"images/ed.jpg","time":"2:08 pm"},
  {"name":"Ahmed Zaki","message":" ماشي ي زكي","image":"images/za.jpg","time":"2:08 pm"},
  {"name":"Mohamed Wael","message":" تسلم ي يخوياا","image":"images/wael.jpg","time":"2:08 pm"},
];
// List For Messages
List messages1 = [
  "اخبارك اي يخويااا",
  "دايما ياااارب",
  "بخير والله الحمد لله",
  "الكليه عامله معاك اي؟",
  "مشغول ف الكليه معلش",
  "ربنا يعينك",
  "هتروح امته",
  "تمام هقابلك هنام",
  "انا هنا اهو انت فين",
  "خلاص تمام جاي لك",
  "هتروح امته",
  "خلاص تمام جاي لك",
  "اخبارك اي يخويااا",
  "دايما ياااارب",
  "بخير والله الحمد لله"
];
List messages2 = [
  "كله تمام الحمد لله",
  "وانت اخبارك اي لك واحشه",
  "حتي الان تمام",
  "كان الله في العون",
  "اوك",
  "حبيبي يهندسه",
  "نتقابل الاربعاء عند الشيخ حسن",
  "ان شاء الله",
  "جاي لك",
  "تمام",
  "الخميس الجاي",
  "مستنيك",
  "كله تمام الحمد لله",
  "وانت اخبارك اي لك واحشه",
  "حتي الان تمام",
];