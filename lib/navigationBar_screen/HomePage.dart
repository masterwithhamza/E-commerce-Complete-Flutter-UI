import 'package:flipmarket/sell%20screens/charger1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flipmarket/sell%20screens/charger2.dart';
import 'package:flipmarket/sell%20screens/charger3.dart';
import 'package:flipmarket/sell%20screens/charger4.dart';
import 'package:flipmarket/sell%20screens/handfree1.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flipmarket/sell%20screens/handfree2.dart';
import 'package:flipmarket/sell%20screens/handfree3.dart';
import 'package:flipmarket/sell%20screens/handfree4.dart';
import 'package:flipmarket/sell%20screens/mcover1.dart';
import 'package:flipmarket/sell%20screens/mcover2.dart';
import 'package:flipmarket/sell%20screens/mcover3.dart';
import 'package:flipmarket/sell%20screens/mcover4.dart';
import 'package:flipmarket/navigationBar_screen/signup.dart';
import 'package:flutter/material.dart';
//import 'package:anim_search_bar/anim_search_bar.dart';

import '../sell screens/book2.dart';
import '../sell screens/book3.dart';
import '../sell screens/book4.dart';
import '../sell screens/books.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();
  var _container = Container(
    height: 200,
    color: Colors.blue,
    margin: EdgeInsets.symmetric(vertical: 10),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      //appBar: AppBar(title: Text("flip"),backgroundColor: Colors.pink,),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView( // parent ListView
          children: <Widget>[
          Container(
            height: 60,
              width: 80,
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
               color: Colors.white,
              child: TextField(
                controller: textController,
                decoration:  InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Find Items From Here",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                   // borderRadius: Radius.circular(30),
                  )
                ),
              ),

          ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
             child: Text("Top Programming Books",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
            ),
            SizedBox(height: 10,),
            Container(

              height: 200, // give it a fixed height constraint
              color: Colors.black12,
              // child ListView
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const book1()),
                        );
                      },
                      child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Image.asset("images/C++.jpg",width: 80,height: 87,fit: BoxFit.cover,),
                        SizedBox(height: 5,),
                        Container(margin:EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: Text("C++ Programming",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                        SizedBox(height: 5,),

                        Row(
                          mainAxisAlignment:MainAxisAlignment.end,
                          children: [
                            Text("RS 1500  ",style: TextStyle(fontSize: 15,color: Colors.black),),
                            SizedBox(width: 70,),
                            Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.location_on,size: 15,color: Colors.black),
                            Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                          ],
                        ),
                      ],
                    ),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,////////////////////////////////////////////////////////////////
                          MaterialPageRoute(builder: (context) => const book2()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/java.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                          SizedBox(height: 5,),
                          Container(margin:EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: Text("Java Programming",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              Text("RS 1450",style: TextStyle(fontSize: 15,color: Colors.black),),
                              SizedBox(width: 70,),
                              Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 15,color: Colors.black),
                              Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const book3()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/python.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                          SizedBox(height: 5,),
                          Container(margin:EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: Text("Python Programming",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              Text("RS 1450",style: TextStyle(fontSize: 15,color: Colors.black),),
                              SizedBox(width: 70,),
                              Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 15,color: Colors.black),
                              Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const book4()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/flutter.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                          SizedBox(height: 5,),
                          Container(margin:EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: Text("Flutter Programming",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              Text("RS 1450",style: TextStyle(fontSize: 15,color: Colors.black),),
                              SizedBox(width: 70,),
                              Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 15,color: Colors.black),
                              Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                ],
              ),
            ),
///////////////////////////////////////////////////////////////////////////////////////////////
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Text("Original Mobile Chargers",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
            ),
            SizedBox(height: 10,),
            Container(
              height: 200, // give it a fixed height constraint
              color: Colors.black12,
              // child ListView
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const charger1()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/image5.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                          SizedBox(height: 5,),
                          Container(margin:EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: Text("HT-71 Charger",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              Text("RS 350",style: TextStyle(fontSize: 15,color: Colors.black),),
                              SizedBox(width: 70,),
                              Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 15,color: Colors.black),
                              Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const charger2()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/image7.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                          SizedBox(height: 5,),
                          Container(margin:EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: Text("Techno Fast Charger",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              Text("RS 600",style: TextStyle(fontSize: 15,color: Colors.black),),
                              SizedBox(width: 70,),
                              Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 15,color: Colors.black),
                              Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const charger3()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/image6.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                          const SizedBox(height: 5,),
                          Container(margin:const EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: const Text("Desktop Charger",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                          const SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: const [
                              Text("RS 170",style: TextStyle(fontSize: 15,color: Colors.black),),
                              SizedBox(width: 70,),
                              Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: const [
                              Icon(Icons.location_on,size: 15,color: Colors.black),
                              Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const charger4()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/image8.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                          SizedBox(height: 5,),
                          Container(margin:EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: Text("Oppo Fast Charger",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              Text("RS 600",style: TextStyle(fontSize: 15,color: Colors.black),),
                              SizedBox(width: 70,),
                              Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 15,color: Colors.black),
                              Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                ],
              ),
            ),
            ////////////////////////////////////////////////////////////////////////////////////
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Text("Best HandFrees",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
            ),
            SizedBox(height: 10,),
            Container(
              height: 200, // give it a fixed height constraint
              color: Colors.black12,
              // child ListView
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const handfree1()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/image1.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                          SizedBox(height: 5,),
                          Container(margin:EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: Text("D1  Handfree",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              Text("RS 200",style: TextStyle(fontSize: 15,color: Colors.black),),
                              SizedBox(width: 70,),
                              Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 15,color: Colors.black),
                              Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const handfree2()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/image2.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                          SizedBox(height: 5,),
                          Container(margin:EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: Text("L-2  Handfree",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              Text("RS 200",style: TextStyle(fontSize: 15,color: Colors.black),),
                              SizedBox(width: 70,),
                              Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 15,color: Colors.black),
                              Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const handfree3()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/image3.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                          SizedBox(height: 5,),
                          Container(margin:EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: Text("H-3  Handfree",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              Text("RS 200",style: TextStyle(fontSize: 15,color: Colors.black),),
                              SizedBox(width: 70,),
                              Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 15,color: Colors.black),
                              Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const handfree4()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/image4.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                          SizedBox(height: 5,),
                          Container(margin:EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: Text("U-4  Handfree",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              Text("RS 200",style: TextStyle(fontSize: 15,color: Colors.black),),
                              SizedBox(width: 70,),
                              Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 15,color: Colors.black),
                              Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                ],
              ),
            ),
    ////////////////////////////////////////////////////////////////////////////////////////////
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Text("Beautiful Mobile Covers",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
            ),
            SizedBox(height: 10,),
            Container(
              height: 200, // give it a fixed height constraint
              color: Colors.black12,
              // child ListView
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const mcover1()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/cover1.png",width: 80,height: 90,fit: BoxFit.cover,),
                          SizedBox(height: 5,),
                          Container(margin:EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: Text("Iphone 7+",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              Text("RS 250",style: TextStyle(fontSize: 15,color: Colors.black),),
                              SizedBox(width: 70,),
                              Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 15,color: Colors.black),
                              Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const mcover2()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/cover2.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                          SizedBox(height: 5,),
                          Container(margin:EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: Text("Huawai Back Cover",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              Text("RS 250",style: TextStyle(fontSize: 15,color: Colors.black),),
                              SizedBox(width: 70,),
                              Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 15,color: Colors.black),
                              Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const mcover3()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/cover3.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                          SizedBox(height: 5,),
                          Container(margin:EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: Text("I Phone13  Pro",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              Text("RS 450",style: TextStyle(fontSize: 15,color: Colors.black),),
                              SizedBox(width: 70,),
                              Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 15,color: Colors.black),
                              Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5,5,5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 200,
                    width: 230,
                    color: Colors.white12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const mcover4()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/cover4.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                          SizedBox(height: 5,),
                          Container(margin:EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: Text("Huawai mobile cover",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              Text("RS 250",style: TextStyle(fontSize: 15,color: Colors.black),),
                              SizedBox(width: 70,),
                              Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 15,color: Colors.black),
                              Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                ],
              ),
            ),
   //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}
