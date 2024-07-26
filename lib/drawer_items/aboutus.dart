import 'package:flutter/material.dart';

import '../Appbarcustom_Adapter.dart';
class aboutus extends StatefulWidget {
  const aboutus({Key? key}) : super(key: key);

  @override
  State<aboutus> createState() => _aboutusState();
}

class _aboutusState extends State<aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text("About Us",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
        actions: <Widget>[
        ],
        toolbarHeight: 130,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: Appbarcustom_adapter(),
          child: Container(
            height: 170,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.pink,
                    Colors.pink,
                  ]
              ),
            ),
            // child: Center(
            //   child: Text("Home",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            // ),
          ),
        ),
      ),
      body: Center(
          child:ListView(
            scrollDirection: Axis.vertical,
            children:  <Widget>[
              SizedBox(height: 10,),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("images/clogo.png",width: 80,height: 150,),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(10),
                  child: Text("Our objective is to design and create the most elegant, functional,powerful,attractive and multi-stylish mobile application that re-innovate functionality. We comprehend that android is the fastest developing mobile platform and, because of which ,the interest for android applications' development is relentlessly expanding. This is a leading android application development incorporation that renders qualitative development solutions to enterprises across the globe. we have demonstrated mastery in application development that guarantees performance and productivity to your versatile operations bt harnessing our maximum intricate potential. We have a technically-sound team of android experts that have polished,best in class skills and certified expertise in mobile application development for the android platform. Our software engineers are dedicatedly focused on creating adaptable and powerful android application and also porting them to mobile platforms.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),))
            ],
          )
      ),

    );
  }
}
