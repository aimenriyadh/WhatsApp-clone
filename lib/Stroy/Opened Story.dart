import 'package:flutter/material.dart';
import 'package:whatsapp_app/main.dart';
class Opened_Story extends StatelessWidget {
  String name;
  String url;
  Opened_Story({required this.name,required this.url});
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: IconButton(icon: Icon(Icons.download_rounded,size: 30,),onPressed: () {},),
        backgroundColor: const Color(0xff43978D),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              height: 25,
              alignment: Alignment.topLeft,
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  PositionedDirectional(child: GridView.builder(
                    // shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    itemCount: 4,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,crossAxisSpacing: 5,mainAxisSpacing: 0,childAspectRatio: 2
                    ),
                    itemBuilder: (context,i)=> Divider(color: Theme.of(context).dividerColor,thickness: 3,),
                  ),)
                ],
              )
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 20),
              child: Row(
                children: [
                  GestureDetector(
                    child: Icon(Icons.arrow_back,color: Colors.white,size: 25),onTap: (){Navigator.pop(context);},),
                  SizedBox(width: 15,),
                  SizedBox(
                    width: 290,
                    child: Row(
                    children: [
                      CircleAvatar(backgroundImage: AssetImage(url),radius: 22,),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17),),
                          SizedBox(height: 2,),
                          Text("Today, 2:30 pm",style: Theme.of(context).textTheme.headline5,),
                        ],
                      ),
                    ],
                  ),
                  ),
                  // const SizedBox(width: 10,),
                  Column(
                    children: [
                      GestureDetector(child: Text("⋮",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),),
                      SizedBox(height: 18,),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 60,),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 400,
              color: Colors.black,
              child: Image.asset(url,height:double.infinity,fit: BoxFit.fill,),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Good",style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(width: 8,),
                Icon(Icons.favorite,color: Colors.red,size: 23,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
