import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",style: TextStyle(color: Colors.black),),

        backgroundColor: Colors.white,
        elevation: 1,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Image.asset("assets/icons/profile.png"),
        ),
      ),

      body: ListView(
        children: [
          Stack(
            children: [

              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(


                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: <Color>[Colors.purple, Colors.blue]),



          borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    )
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 60,),
                  Text("Md Sohagh",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 28,color: Colors.white),),
                  SizedBox(height: 40,),
                  CircleAvatar(
                    radius: 64,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 60,

                      backgroundImage:
                      AssetImage("assets/icons/profile.png"),
                    ),
                  ),
                  SizedBox(height: 40,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 26,
                          child: Image.asset("assets/icons/home.png",
                          color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 25,),
                        Text("Sohagh",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.grey),),

                      ],
                    ),
                  ),
                  Divider(thickness: 1,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 26,
                          child: Image.asset("assets/icons/home.png",
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 25,),
                        Text("Birthday",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.grey),),

                      ],
                    ),
                  ),
                  Divider(thickness: 1,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 26,
                          child: Image.asset("assets/icons/home.png",
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 25,),
                        Text("7673735",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.grey),),

                      ],
                    ),
                  ),
                  Divider(thickness: 1,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 26,
                          child: Image.asset("assets/icons/home.png",
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 25,),
                        Text("Instagram Account",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.grey),),

                      ],
                    ),
                  ),
                  Divider(thickness: 1,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 26,
                          child: Image.asset("assets/icons/home.png",
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 25,),
                        Text("email@example.com",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.grey),),

                      ],
                    ),
                  ),
                  Divider(thickness: 1,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 26,
                          child: Image.asset("assets/icons/home.png",
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 25,),
                        Text("password",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.grey),),

                      ],
                    ),
                  ),
                  Divider(thickness: 1,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 26,
                          child: Image.asset("assets/icons/home.png",
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(width: 25,),
                        Text("Logout",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.grey),),

                      ],
                    ),
                  ),
                  Divider(thickness: 1,),

                  SizedBox(height: 20,),
                  Container(
                    width: 200,
                    height: 50,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: <Color>[Colors.purple, Colors.blue]),
                    ),

                    child: Center(child: Text('Edit Profile',style: TextStyle(color: Colors.white),)),
                  ),
                  SizedBox(height: 20,),



                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}

