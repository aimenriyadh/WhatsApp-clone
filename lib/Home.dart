import 'package:flutter/material.dart';
import 'package:whatsapp_app/Call/call.dart';
import 'package:whatsapp_app/Chat/Outside_Chat.dart';
import 'package:whatsapp_app/Settings.dart';
import 'package:whatsapp_app/Stroy/Stories.dart';
import 'Chat/Profile.dart';
import 'main.dart';
class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}
class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  List<Tab> MyTabs = const [
    Tab(child: Icon(Icons.camera_alt),),
    Tab(child: Text("Chat"),),
    Tab(child: Text("Story"),),
    Tab(child: Text("Call"),),
  ];
  late TabController _tabController;
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4,initialIndex: 1);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          child: const Text("WhatsApp"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){ return Profile(profile_image: 'images/moha.jpg',profile_name: "Mohamed Hashim",);}));},
        ),
        backgroundColor : const Color(0xff2F4F4F),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              children: [
                const Icon(Icons.account_circle_outlined,size: 25,color: Colors.white60,),
                const SizedBox(width: 15),
                const Icon(Icons.signal_wifi_4_bar,size: 25,color: Colors.white60,),
                const SizedBox(width: 15),
                const Icon(Icons.wb_sunny_rounded,size: 27,color: Colors.white60,),
                const SizedBox(width: 13),
                const Icon(Icons.search,size: 25,color: Colors.white60,),
                const SizedBox(width: 13),
                GestureDetector(
                  child: Text("⋮",style: TextStyle(fontSize: 22),),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){ return Settings();}));},
                ),
              ],
            ),
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.grey,
          labelStyle: TextStyle(fontSize: 18),
          controller: _tabController,
          tabs: MyTabs,                    // contain 4 Tab Widget on the top
        ),
      ),
      body: TabBarView(
        controller: _tabController,
          children: [
            Container(
              color: const Color(0xff1f2c34),
              height: double.infinity,
              child: const Center(child: Text("Camera",style:
              TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),),
            ),
            Chat(),
            Story(),
            Call(),
          ]),
    );
  }
}