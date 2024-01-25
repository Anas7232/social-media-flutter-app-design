import 'package:first/follower.dart';
import 'package:first/likes.dart';
import 'package:first/watch.dart';
import 'package:first/website.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                  ),
                  color: Color(0xFFFE7286)
                ),
                width: MediaQuery.of(context).size.width/1,
                height: MediaQuery.of(context).size.height/8,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  leading: const Padding(
                    padding: EdgeInsets.all(9),
                    child: Icon(Icons.arrow_back, color: Colors.white,size: 25,),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text('Social Media Services',
                    style: TextStyle(color: Colors.white, fontSize: 20, height: 1.2),
                    ),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20)
                        ),
                        color: Color(0xFFFE9DAB)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                        child: Text('Balance',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  )
                ),
              )
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 19),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const WatchTime()));
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('backfirst.png')
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10)
                            ),
                            // color: Colors.grey
                          ),
                          width: MediaQuery.of(context).size.width/2.2,
                          height: MediaQuery.of(context).size.height/5,
                          child: const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 35, right: 90),
                                child: Image(image: AssetImage('Video.png'),width: 55,),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 32),
                                child: Text('Watch Time',
                                style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                              )
                            ],
                          )
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 19),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const WebsitePage()));
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('backsec.png')
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(10)
                            ),
                            // color: Colors.grey
                          ),
                          width: MediaQuery.of(context).size.width/2.2,
                          height: MediaQuery.of(context).size.height/5,
                          child: const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 45, right: 90),
                                child: Image(image: AssetImage('website.png'),width: 35,),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 50,top: 8),
                                child: Text('Website',
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                              )
                            ],
                          )
                        ),
                      ),
                    )
                  ],
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LikesPage()));
                        },
                        child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('backthird.png')
                              ),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              ),
                              // color: Colors.grey
                            ),
                            width: MediaQuery.of(context).size.width/2.2,
                            height: MediaQuery.of(context).size.height/5,
                            child: const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 35, right: 90),
                                  child: Image(image: AssetImage('ThumbsUp.png'),width: 55,),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 95),
                                  child: Text('Likes',
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const FollowerPage()));
                        },
                        child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('backfor.png')
                              ),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              ),
                              // color: Colors.grey
                            ),
                            width: MediaQuery.of(context).size.width/2.2,
                            height: MediaQuery.of(context).size.height/5,
                            child: const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 35, right: 90),
                                  child: Image(image: AssetImage('follow.png'),width: 55,),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 60),
                                  child: Text('Followers',
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      );
  }
}
