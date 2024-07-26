import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Appbarcustom_Adapter.dart';
class moreapps extends StatefulWidget {
  const moreapps({Key? key}) : super(key: key);

  @override
  State<moreapps> createState() => _moreappsState();
}

class _moreappsState extends State<moreapps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text("More Apps",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
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
                child: Image.asset("images/clogo.png",width: 50,height: 100,),
              ),
              SizedBox(height: 10,),
              Center(child: Text("More Apps from SunRiseSoftwares Technologies",style: TextStyle(fontWeight: FontWeight.bold),)),
              SizedBox(height: 10,),
              Container(

                margin: EdgeInsets.all(5),
                height: 120,
                color: Colors.greenAccent,
                //color: Colors.green,
                width: double.infinity,
                child:
                Card(
                  elevation: 5,
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("images/quoteapplogo.png",width: 60,height: 60,),
                      title: Text('Life Quotes',style: TextStyle(fontWeight: FontWeight.bold),),
                      tileColor: Colors.white,
                      onTap: (){
                        bestquotes();
                      },
                    ),
                  ),
                ),

              ),



              Container(

                margin: EdgeInsets.all(5),
                height: 120,
                color: Colors.greenAccent,
                //color: Colors.green,
                width: double.infinity,
                child:
                Card(
                  elevation: 5,
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("images/javablogo.png",width: 60,height: 60,),
                      title: Text('Learn Java Basics',style: TextStyle(fontWeight: FontWeight.bold),),
                      tileColor: Colors.white,
                      onTap: (){
                        Fluttertoast.showToast(
                            msg: "This App is not available. Please try again in some few days. Thanks.",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 3,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      },
                    ),
                  ),
                ),

              ),
              Container(

                margin: EdgeInsets.all(5),
                height: 120,
                color: Colors.greenAccent,
                //color: Colors.green,
                width: double.infinity,
                child:
                Card(
                  elevation: 5,
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("images/walpaperlogo.png",width: 60,height: 60,),
                      title: Text('Awesome Wallpapers',style: TextStyle(fontWeight: FontWeight.bold),),
                      tileColor: Colors.white,
                      onTap: (){
                        Fluttertoast.showToast(
                            msg: "This App is not available. Please try again in some few days. Thanks.",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 3,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      },
                    ),
                  ),
                ),

              ),
              Container(

                margin: EdgeInsets.all(5),
                height: 120,
                color: Colors.greenAccent,
                //color: Colors.green,
                width: double.infinity,
                child:
                Card(
                  elevation: 2,
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("images/flashlightlogo.png",width: 60,height: 60,),
                      title: Text('Flashlight Controller',style: TextStyle(fontWeight: FontWeight.bold),),
                      tileColor: Colors.white,
                      onTap: (){
                        flashlight();
                      },
                    ),
                  ),
                ),

              ),
              Container(

                margin: EdgeInsets.all(5),
                color: Colors.greenAccent,
                height: 120,
                //color: Colors.green,
                width: double.infinity,
                child:
                Card(
                  elevation: 5,
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("images/cppbooklogo.png",width: 60,height: 60,),
                      title: Text('Learn c++ Basis',style: TextStyle(fontWeight: FontWeight.bold),),
                      tileColor: Colors.white,
                      onTap: (){
                        Fluttertoast.showToast(
                            msg: "This App is not available. Please try again in some few days. Thanks.",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 3,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      },
                    ),
                  ),
                ),

              ),
              Container(

                margin: EdgeInsets.all(5),
                color: Colors.greenAccent,
                height: 120,
                //color: Colors.green,
                width: double.infinity,
                child:
                Card(
                  elevation: 5,
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("images/hrdeveloperslogo.png",width: 60,height: 60,),
                      title: Text('HR Developers',style: TextStyle(fontWeight: FontWeight.bold),),
                      tileColor: Colors.white,
                      onTap: (){
                        hrd();
                      },
                    ),
                  ),
                ),

              ),
              SizedBox(height: 10,),
            ],
          )
      ),
    );
  }
}
bestquotes()async
{
  final Uri facebook = Uri.parse('https://www.mediafire.com/file/uqsihoygaxbl7ei/app-debug.apk/file');
  if (!await launchUrl((facebook))) {
    throw 'Could not launch $facebook';
  }
}
flashlight()async
{
  final Uri facebook = Uri.parse('https://www.mediafire.com/file/9chx5tgip0oae1i/Flahlight_Controller.apk/file');
  if (!await launchUrl((facebook))) {
    throw 'Could not launch $facebook';
  }
}
hrd()async
{
  final Uri facebook = Uri.parse('https://www.mediafire.com/file/lr9e882b4wudu1v/app-debug.apk/file');
  if (!await launchUrl((facebook))) {
    throw 'Could not launch $facebook';
  }
}