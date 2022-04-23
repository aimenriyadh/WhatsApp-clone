import 'package:flutter/material.dart';
import 'package:whatsapp_app/main.dart';
import 'Profile.dart';
class Opened_Chat extends StatelessWidget {
  String person_name;
  String image_url;
  Opened_Chat({required this.image_url,required this.person_name});
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width : double.infinity,
        color: Colors.black,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          // shrinkWrap: true,
          children: [
            // instead of appBar
            Container(
              height: 60,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.arrow_back,color: Colors.white,),),
                  GestureDetector(child: CircleAvatar(backgroundImage: AssetImage(image_url),radius: 20,),
                    onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){ return Profile(profile_image: image_url,profile_name: person_name,);}));},
                  ),
                  GestureDetector(onTap: (){},child: Text(person_name,style: Theme.of(context).textTheme.subtitle2,)),
                  GestureDetector(onTap: (){},child: Icon(Icons.videocam,color: Colors.white,),),
                  GestureDetector(onTap: (){},child: Icon(Icons.call,color: Colors.white,),),
                  GestureDetector(onTap: (){},child: Text("⋮",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),)),
                ],
              ),
            ),
            // The beginning of the Chat
            Container(
              height: 585,
              width: double.infinity,
              color : Colors.green.withOpacity(0.1),
              padding: const EdgeInsets.only(left: 10,right: 10),
              // color: Colors.white,
              child: ListView(
                children: [
                  const SizedBox(height: 7,),
                  Container(
                    padding: const EdgeInsets.all(5),
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 140,right: 140),
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(25)),
                    child: Text("Today",style: TextStyle(color: Colors.white,fontSize: 15),),
                  ),  // Text Today
                  SizedBox(height: 5,),
                  Container(
                    padding: const EdgeInsets.all(5),
                    alignment: Alignment.center,
                    // margin: const EdgeInsets.only(left: 140,right: 140),
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text("Messages and Calls are end-to-end encrupted. No",style: TextStyle(color: Colors.white,fontSize: 12),),
                        SizedBox(height: 3,),
                        Text("one outside of this caht, not even WhatsApp, can read",style: TextStyle(color: Colors.white,fontSize: 12),),
                        SizedBox(height: 3,),
                        Text("or listen to them. Tap to learn more.",style: TextStyle(color: Colors.white,fontSize: 12),),
                      ],
                    )
                  ),
                  SizedBox(height: 15,),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: messages1.length,
                      itemBuilder: (context,i){
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.greenAccent.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(5)),
                                  alignment: Alignment.centerRight,
                                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                                  child: Text("${messages1[i]}",style: TextStyle(fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                              ),
                            ],
                          ),
                          SizedBox(height: 8,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.teal.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(5)),
                                  alignment: Alignment.centerRight,
                                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                                  child: Text("${messages2[i]}",style: TextStyle(fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,)
                              ),
                            ],
                          ),
                        ],
                      );
                      }),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            // End Of the Chat
            Container(
              height: 60,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(onTap: (){},child: Icon(Icons.add,color: const Color(0xff43978D),size: 25,),),
                  GestureDetector(onTap: (){},child:
                  Container(
                    width: 180,
                    height: 30,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xff329D9C).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25),border: Border.all(width: 1)),
                    child: Text("Message",style: Theme.of(context).textTheme.headline5,),),
                  ),
                  GestureDetector(onTap: (){},child: Icon(Icons.camera_alt_outlined,color: Color(0xff43978D),),),
                  GestureDetector(onTap: (){},child: Icon(Icons.mic_rounded,color: const Color(0xff43978D)),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
