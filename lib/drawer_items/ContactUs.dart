import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
final Uri _url = Uri.parse('https://flutter.dev');
class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {


  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if(!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Contact Us"),backgroundColor: Colors.pink,),
      body: Center(
         child:ListView(
           scrollDirection: Axis.vertical,
            children:  <Widget>[
              Container(

                margin: EdgeInsets.all(5),
                height: 80,
                //color: Colors.green,
                width: double.infinity,
                child:
                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: Image.asset("images/whatsapplogo.png",width: 45,height: 45,),
                    title: Text('Whatsapp'),
                    subtitle: Text("You can contact us on whatsapp."),
                    tileColor: Colors.white,
                    onTap: (){
                    whatsapp();
                    },
                  ),
                ),

              ),



              Container(

                margin: EdgeInsets.all(5),
                height: 80,
                //color: Colors.green,
                width: double.infinity,
                child:
                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: Image.asset("images/gmaillogo.png",width: 45,height: 45,),
                    title: Text('Gmail'),
                    subtitle: Text("You can contact us on this gmail."),
                    tileColor: Colors.white,
                    onTap: (){
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                        title:  Row(
                          children: [
                            Icon(Icons.feedback,size: 25,color: Colors.green,),
                            SizedBox(width: 10,),
                            Text('Email',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          ],
                        ),
                        content: const Text('You can contact us on this email.\nhamza.rehman.shaikh@gmail.com',style: TextStyle(fontSize: 15),),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Got it'),
                            child: const Text('Got it',style: TextStyle(color: Colors.blue)),
                          ),
                        ],
                      ),
                      );
                    },
                  ),
                ),

              ),
              SizedBox(height: 10,),
              Container(child: Text("Follow us",style: TextStyle(fontSize: 17,),),margin: EdgeInsets.only(left: 20),),
              SizedBox(height: 10,),
              Container(

                margin: EdgeInsets.all(5),
                height: 80,
                //color: Colors.green,
                width: double.infinity,
                child:
                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: Image.asset("images/twitterlogo.png",width: 45,height: 45,),
                    title: Text('Twitter'),
                    subtitle: Text("You can follow us on twitter."),
                    tileColor: Colors.white,
                    onTap: (){
                     twitter();
                    },
                  ),
                ),

              ),
              Container(

                margin: EdgeInsets.all(5),
                height: 80,
                //color: Colors.green,
                width: double.infinity,
                child:
                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: Image.asset("images/instagramlogo.png",width: 45,height: 45,),
                    title: Text('Instagram'),
                    subtitle: Text("You can follow us on instagram."),
                    tileColor: Colors.white,
                    onTap: (){
                     instagram();
                    },
                  ),
                ),

              ),
             SizedBox(height: 10,),
             Container(child: Text("Like us",style: TextStyle(fontSize: 17,),),margin: EdgeInsets.only(left: 20),),
              SizedBox(height: 10,),
              Container(

                margin: EdgeInsets.all(5),
                height: 80,
                //color: Colors.green,
                width: double.infinity,
                child:
                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: Image.asset("images/fblogo.png",width: 45,height: 45,),
                    title: Text('Facebook Page'),
                    subtitle: Text("You can like our facebookpage."),
                    tileColor: Colors.white,
                    onTap: (){
                      facebookpage();
                    },
                  ),
                ),

              ),
              Container(

                margin: EdgeInsets.all(5),
                height: 80,
                //color: Colors.green,
                width: double.infinity,
                child:
                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: Image.asset("images/weblogo.png",width: 45,height: 45,),
                    title: Text('Website'),
                    subtitle: Text("You can visit our website."),
                    tileColor: Colors.white,
                    onTap: (){
                     website();
                    },
                  ),
                ),

              ),
              SizedBox(height: 10,),
              Container(child: Text("Join us",style: TextStyle(fontSize: 17,),),margin: EdgeInsets.only(left: 20),),
              SizedBox(height: 10,),
              Container(

                margin: EdgeInsets.all(5),
                height: 80,
                //color: Colors.green,
                width: double.infinity,
                child:
                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: Image.asset("images/fblogo.png",width: 45,height: 45,),
                    title: Text('Facebook Group'),
                    subtitle: Text("You can join our facebook group."),
                    tileColor: Colors.white,
                    onTap: (){
                      facebookgroup();
                    },
                  ),
                ),

              ),
              Container(

                margin: EdgeInsets.all(5),
                height: 80,
                //color: Colors.green,
                width: double.infinity,
                child:
                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: Image.asset("images/youtubelogo.png",width: 45,height: 45,),
                    title: Text('Youtube'),
                    subtitle: Text("You can visit our youtube channel."),
                    tileColor: Colors.white,
                    onTap: (){
                      youtube();
                    },
                  ),
                ),

              ),
              SizedBox(height: 20,),
            ],
          )
      ),
    );
  }
}
/////////////////////////////////// function for urlluncher//////////////////
youtube()async
{
  final Uri facebook = Uri.parse('https://www.youtube.com/channel/UCgG3aEMj3HoW1Dqbvg-9t0g');
  if (!await launchUrl((facebook))) {
    throw 'Could not launch $facebook';
  }
}
website()async
{
  final Uri facebook = Uri.parse('https://hrcoding.blogspot.com/');
  if (!await launchUrl((facebook))) {
    throw 'Could not launch $facebook';
  }
}
instagram()async
{
  final Uri facebook = Uri.parse('https://www.instagram.com/hr.developers/');
  if (!await launchUrl((facebook))) {
    throw 'Could not launch $facebook';
  }
}
twitter()async
{
  final Uri facebook = Uri.parse('https://twitter.com/hr_developers?t=vPelQrB6mTuUfFMHKSk4IQ&s=08');
  if (!await launchUrl((facebook))) {
    throw 'Could not launch $facebook';
  }
}
facebookpage()async
{
  final Uri facebook = Uri.parse('https://web.facebook.com/HR-Developers-105819101772231');
  if (!await launchUrl((facebook))) {
    throw 'Could not launch $facebook';
  }
}
facebookgroup()async
{
  final Uri facebook = Uri.parse('https://www.facebook.com/groups/1019593908922995/?ref=share');
  if (!await launchUrl((facebook))) {
    throw 'Could not launch $facebook';
  }
}
Future<void> whatsapp() async {
  const wurl="whatsapp://send?phone=+923125099960&text=Hi Dear customer!now you can chat with seller and buy your product.";
  if (!await launchUrl(Uri.parse(wurl))) {
    throw 'Could not launch $wurl';
  }
}