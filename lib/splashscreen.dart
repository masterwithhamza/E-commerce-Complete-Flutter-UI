import 'dart:async';

import 'package:flipmarket/main.dart';
import 'package:flipmarket/navigationBar_screen/HomePage.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){ //init means initialize
    super.initState();
    Timer(
        Duration(seconds: 2), (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => MyHomePage(title: "Flip Market"),
          ));
    }
    );

  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/1024.png',width: 200,height: 200,),
            SizedBox(
              height: 30,
            ),


            SizedBox(
              height: 250,
            ),
            Center(child: Text('From',style: TextStyle(fontSize: 12,color: Colors.black,fontFamily: "avenir"),)),
            Center(child: Text('SRS Technologies',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black,fontFamily: "avenir"),)),
          ],
        ),
      ),
    );
  }
}

