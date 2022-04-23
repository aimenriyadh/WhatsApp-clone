import 'package:flutter/material.dart';
class Profile extends StatelessWidget{
  String profile_image;
  String profile_name;
  Profile({required this.profile_image,required this.profile_name});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",style: TextStyle(fontSize: 20),),
        backgroundColor: const Color(0xff2F4F4F),
        elevation: 0,
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xff1f2c34), //0xff2F4F4F
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 25),
              // ************ Second element on the column((image)) *********************
              Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    child:  Center(
                      child: CircleAvatar(backgroundImage: AssetImage("${profile_image}"),radius: 75,),
                    ),
                  ),
                  // ************ Third element on the column(( Photo Icon on the profile image)) *********************
                  Positioned(
                    left: 200,
                    top: 115,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff2F4F4F),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(Icons.photo_camera,size: 22,color: Colors.white,),
                    ),
                  ),
                ],
              ),
              // ************ Four element on the column((name)) *********************
              Container(
                padding: const EdgeInsets.only(left: 20,top: 35),
                height: 450,
                child: Column(
                  children:  [
                    Row(
                      children: const [
                        SizedBox(width: 50,),
                        Text("Name",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),),
                      ],),
                    const SizedBox(height: 2,),
                    Container(
                      child: ListTile(
                        leading : Icon(Icons.person,size: 30,color: Colors.grey,),
                        minLeadingWidth: 10,
                        contentPadding: const EdgeInsets.only(left: 0,right: 20),
                        title: Text(profile_name,style: TextStyle(color: Colors.white,fontSize: 17),),
                        trailing: Icon(Icons.edit,size: 25,color: Color(0xff2F8F4F),),
                      ),
                    ),
                    const SizedBox(height: 3,),
                    Row(
                      children: const [
                        SizedBox(width: 50,),
                        Text("This is not your username or pin. This name",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),)
                      ],
                    ),
                    const SizedBox(height: 3,),
                    Row(
                      children: const [
                        SizedBox(width: 50,),
                        Text("will be visible to your WhatsApp contacts",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),)
                      ],
                    ),
                    // ************** End **************************************
                    const SizedBox(height: 30,),
                    Row(
                      children: const [
                        SizedBox(width: 50,),
                        Text("About",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),),
                      ],),
                    const SizedBox(height: 2,),
                    Row(
                      children: const [
                        Icon(Icons.info,size: 25,color: Colors.grey,),
                        SizedBox(width: 22),
                        Text("Software Engineer",style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                        ),
                        SizedBox(width: 110,),
                        Icon(Icons.edit,size: 25,color: Color(0xff2F8F4F),),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      children: const [
                        SizedBox(width: 50,),
                        Text("Phone",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),),
                      ],),
                    const SizedBox(height: 2,),
                    Row(
                      children: const [
                        Icon(Icons.call,size: 25,color: Colors.grey,),
                        SizedBox(width: 23),
                        Text("+20 120 *** 8425",style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 110,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                        Row(children: const [
                          SizedBox(width: 155,),
                          Text("from",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                        ],),
                        const SizedBox(height: 6,),
                        Row(children: const [
                          SizedBox(width: 130,),
                          Text("FACEBOOK",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing: 1),),
                        ],),
                      ],
                    ),
                  ],
                ),
              ),


            ],
          )
      ),
    );
  }
}
