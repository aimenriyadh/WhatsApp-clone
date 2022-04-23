import 'package:flutter/material.dart';
import 'package:whatsapp_app/Stroy/Opened%20Story.dart';
import 'package:whatsapp_app/main.dart';
List Items = ChatData.reversed.toList();
class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  _StoryState createState() => _StoryState();
}
class _StoryState extends State<Story> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff1f2c34),
        height: double.infinity,
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20,top: 2),
              child: ListTile(
                leading: Stack(
                  overflow: Overflow.visible,
                  children: const [
                    Positioned(child: CircleAvatar(backgroundImage: AssetImage("images/113.jpg"),radius: 30,)),
                    Positioned(left:39,top: 36,child:
                    CircleAvatar(child: Icon(Icons.add,color: Colors.white,size: 15,),radius: 10,backgroundColor : const Color(0xff2F4F4F),)),
                  ],
                ),
                title: Text("My Status",style: Theme.of(context).textTheme.subtitle1,),
                subtitle: Text("Tap to add status update",style: Theme.of(context).textTheme.headline5,),
                contentPadding: const EdgeInsets.all(0),
              ),
            ),
            Container(
              color: Colors.teal.withOpacity(0.1),
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              height: 40,
              child: Text("Recent updates",style: Theme.of(context).textTheme.subtitle1,),
            ),
            // =>>>>>>>>>>>>>>>>>>> Stories
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Items.length,
                itemBuilder: (context,i){
                return Container(
                  margin: const EdgeInsets.only(left: 20,right: 20,top: 0),
                  child: ListTile(
                    leading: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff43978D).withOpacity(1),width: 2),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: CircleAvatar(backgroundImage: AssetImage(Items[i]['image']),radius: 30,),
                    ),
                    title: Text(Items[i]['name'],style: Theme.of(context).textTheme.subtitle1),
                    subtitle: Text("39 minuets ago",style: Theme.of(context).textTheme.headline5,),
                    contentPadding: const EdgeInsets.all(0),
                    minVerticalPadding: 4,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        // notice Items is a list from ChatData List but reversed
                        return Opened_Story(name: Items[i]['name'], url : Items[i]['image']);
                      }));
                    },
                  ),
                );
                }
                ),
          ],
        ),
      )
    );
  }
}
