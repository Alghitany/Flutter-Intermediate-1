
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.deepPurple,
          ),
          title: const Text("Task 1",
              style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold),

          ),
          leading: IconButton(icon: const Icon(Icons.dehaze,color: Colors.white,),
              onPressed: (){
            scaffoldKey.currentState?.openDrawer();
              }),
        ),
        drawer: const Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                    accountName: Text("Cat",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                    accountEmail: Text("Cat@Cat.com"),
                    currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.pinkAccent,
                    child: Text("C",style: TextStyle(color: Colors.white),),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home,color: Colors.black54,),
                  title: Text("Home Page",style: TextStyle(fontWeight: FontWeight.w500),)
                ),
                ListTile(
                    leading: Icon(Icons.help,color: Colors.black54,),
                    title: Text("Help",style: TextStyle(fontWeight: FontWeight.w500),)
                ),
                ListTile(
                    leading: Icon(Icons.help_center,color: Colors.black54,),
                    title: Text("About",style: TextStyle(fontWeight: FontWeight.w500),)
                )
              ],
            ),
        ),
        body:  Container(
          decoration: const BoxDecoration(
            color: Colors.black12
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0,left: 8,right: 8,bottom: 8),
            child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 115,
                        width: 115,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.black,
                              width: 5),
                          gradient: const LinearGradient(
                            colors: [
                              Colors.black,
                              Colors.white
                            ]
                          )
                        ),
                      ),
                      Container(
                        height: 115,
                        width: 115,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.blue,
                                width: 5),
                            gradient: const RadialGradient(
                              colors: [Colors.blue,
                                Colors.black
                              ]
                            )
                        ),
                      ),
                      Container(
                        height: 115,
                        width: 115,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.blueAccent,
                                width: 5),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.blue, Colors.red]
                            )
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: Colors.white,
                              width: 3.5),
                        gradient: LinearGradient(
                          colors: [
                            Colors.black,
                            Colors.blue,
                            Colors.green.shade300
                          ]
                        )

                      ),
                      child: const Center(child: Text("Posts",
                        style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 50.0),
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black38
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 20,
                                ),
                                SizedBox(width: 10,),
                                Text("CAT",style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 22),)
                              ],
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text("It's Flutter task.. good luck.^^")
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 2.0),
                                  child: Icon(Icons.favorite_border),
                                ),
                                Text("Like",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                Spacer(flex: 1,),
                                Padding(
                                  padding: EdgeInsets.only(right: 2.0),
                                  child: Icon(Icons.comment_outlined),
                                ),
                                Text("Comment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                Spacer(flex: 1,),
                                Padding(
                                  padding: EdgeInsets.only(right: 2.0),
                                  child: Icon(Icons.share_outlined),
                                ),
                                Text("Share",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8.0),
                            padding: const EdgeInsets.all(18.0),
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: const BorderRadius.only(topRight: Radius.circular(12),bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12))
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Hello CAT ^^",style: TextStyle(fontWeight: FontWeight.w500),),
                                Text("Flutter task is great :)",style: TextStyle(fontWeight: FontWeight.w500),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
            ),
          ),
        ),
      ),
    );
  }
}
