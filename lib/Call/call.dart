import 'package:flutter/material.dart';
import 'package:whatsapp_app/Call/Class.dart';
class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xff1f2c34),
        child: ListView(
          shrinkWrap: true,
          children: [
            Call_class(url: "images/moha.jpg", name: "Saleh Gomaa", icon: Icon(Icons.videocam,color: Colors.grey,)),
            Call_class(url: "images/fergani.jpg", name: "Fergani Sassi", icon: Icon(Icons.call,color: Colors.grey,)),
            Call_class(url: "images/113.jpg", name: "Ahmed Rezk", icon: Icon(Icons.videocam,color: Colors.grey,)),
            Call_class(url: "images/ed.jpg", name: "Eid Ibrahim", icon: Icon(Icons.call,color: Colors.grey,)),
          ],
        ),
      ),
    );
  }
}
