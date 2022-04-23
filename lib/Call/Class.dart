import 'package:flutter/material.dart';
class Call_class extends StatelessWidget {
  String name ;
  String url ;
  Icon icon ;
  Call_class({required this.url,required this.name,required this.icon});
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20,right: 20,top: 0),
      child: ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage(url),radius: 30,),
        title: Text(name,style: Theme.of(context).textTheme.subtitle1),
        subtitle: Row(
          children: [
            Icon(Icons.subdirectory_arrow_left,color: Colors.red,),
            SizedBox(width: 5,),
            Text("Yesterday 9:45 pm",style: Theme.of(context).textTheme.headline5,),
          ],
        ),
        trailing: icon,
        contentPadding: const EdgeInsets.all(0),
        minVerticalPadding: 4,
        onTap: (){},
      ),
    );
  }
}
