import 'package:flutter/material.dart';
class Settings extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings",style: TextStyle(fontSize: 20),),
        backgroundColor: const Color(0xff2F4F4F),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xff1f2c34), //0xff2F4F4F
          child: Column(
            children: [
              const SizedBox(height: 20),
              // ************ Second element on the column((image)) *********************
              Container(
                width: double.infinity,
                height: 80,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      left: 20,
                      child:  Center(
                        child: CircleAvatar(backgroundImage: AssetImage("images/moha.jpg"),radius: 40,),
                      ),
                    ),
                    // ************ Third element on the column(( Photo Icon on the profile image)) *********************
                    Positioned(
                      left: 300,
                      top: 10,
                      child: Container(
                        width: 50,
                        height: 50,
                        child: const Icon(Icons.qr_code,size: 30,color: Color(0xff0F6F4F)),
                      ),
                    ),
                    const Positioned(
                      left: 115,
                      top: 10,
                      child: Text("Mohamed Hashim",style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                    const Positioned(
                      left: 115,
                      top: 37,
                      child: Text("Software Engineer",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              // ************************ End of Stack ************************
              const SizedBox(height: 10,),
              const Divider(thickness: 0.1,color: Colors.grey,),
              // ****************** account and another futures
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 80,
                child: Stack(
                  overflow: Overflow.visible,
                  children: const [
                    Positioned(
                      left: 40,
                      top: 20,
                      child:  Icon(Icons.security,size: 25,color: Colors.grey,),
                    ),
                    // ************ Third element on the column(( Photo Icon on the profile image)) *********************
                    Positioned(
                      left: 100,
                      top: 10,
                      child: Text("Account",style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),),
                    ),
                    Positioned(
                      left: 100,
                      top: 37,
                      child: Text("Privacy, security, change number",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              // ******************** End Account ****************************
              const SizedBox(height: 1,),
              // ******************** start chat ****************************
              Container(
                width: double.infinity,
                height: 80,
                child: Stack(
                  overflow: Overflow.visible,
                  children: const [
                    Positioned(
                      left: 40,
                      top: 20,
                      child:  Icon(Icons.chat,size: 25,color: Colors.grey,),
                    ),
                    // ************ Third element on the column(( Photo Icon on the profile image)) *********************
                    Positioned(
                      left: 100,
                      top: 10,
                      child: Text("Chat",style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),),
                    ),
                    Positioned(
                      left: 100,
                      top: 37,
                      child: Text("Theme, wallpapers, chat history",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 1,),
              // ******************** start Notifications ****************************
              Container(
                width: double.infinity,
                height: 80,
                child: Stack(
                  overflow: Overflow.visible,
                  children: const [
                    Positioned(
                      left: 40,
                      top: 20,
                      child:  Icon(Icons.notifications_rounded,size: 25,color: Colors.grey,),
                    ),
                    Positioned(
                      left: 100,
                      top: 10,
                      child: Text("Notifications",style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),),
                    ),
                    Positioned(
                      left: 100,
                      top: 37,
                      child: Text("Message, group & call tones",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 1,),
              // ******************** start Notifications ****************************
              Container(
                width: double.infinity,
                height: 80,
                child: Stack(
                  overflow: Overflow.visible,
                  children: const [
                    Positioned(
                      left: 40,
                      top: 20,
                      child:  Icon(Icons.data_usage,size: 25,color: Colors.grey,),
                    ),
                    Positioned(
                      left: 100,
                      top: 10,
                      child: Text("Storage and data",style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),),
                    ),
                    Positioned(
                      left: 100,
                      top: 37,
                      child: Text("Network usage, auto-download",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 1,),
              // ******************** start help ****************************
              Container(
                width: double.infinity,
                height: 60,
                child: Stack(
                  overflow: Overflow.visible,
                  children: const [
                    Positioned(
                      left: 40,
                      top: 20,
                      child:  Icon(Icons.help_outline,size: 25,color: Colors.grey,),
                    ),
                    Positioned(
                      left: 100,
                      top: 10,
                      child: Text("Help",style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),),
                    ),
                    Positioned(
                      left: 100,
                      top: 37,
                      child: Text("FaQ, contact us, privacy policy",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 0,),
              // ******************** start Notifications ****************************
              Container(
                width: double.infinity,
                height: 40,
                child: Stack(
                  overflow: Overflow.visible,
                  children: const [
                    Positioned(
                      left: 40,
                      top: 20,
                      child:  Icon(Icons.person_add_sharp,size: 25,color: Colors.grey,),
                    ),
                    Positioned(
                      left: 100,
                      top: 25,
                      child: Text("Invite a friend",style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),),
                    ),
                  ],
                ),
              ),
              // ********************* End Stack **************************
              const SizedBox(height: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Row(children: const [
                    SizedBox(width: 170,),
                    Text("from",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                  ],),
                  const SizedBox(height: 6,),
                  Row(children: const [
                    SizedBox(width: 145,),
                    Text("FACEBOOK",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing: 1),),
                  ],),
                ],
              ),
            ],
          ),
      ),
    );
  }
}