import 'package:flutter/material.dart';
import 'package:whatsapp_app/Chat/Opened_Chat.dart';
import '../main.dart';
class Chat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: const Color(0xff1f2c34),
      child: ListView(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(0),           // very important as ListView.builder take an initial value in padding like 20 pixels
            itemCount: ChatData.length,
            itemBuilder: (context,i){
              return ListTile(
                title: Text("${ChatData[i]["name"]}",style: const TextStyle(color: Colors.white,fontSize: 17,),),
                subtitle: Text("${ChatData[i]["message"]}",style: const TextStyle(color: Colors.white60,fontSize: 15),),
                leading: CircleAvatar(radius: 27,backgroundImage: AssetImage("${ChatData[i]["image"]}"),),
                trailing: Text("${ChatData[i]["time"]}",style: const TextStyle(color: Colors.grey,fontSize: 15,),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                    return Opened_Chat(image_url: ChatData[i]["image"], person_name: ChatData[i]["name"]);
                  }));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}