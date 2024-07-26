import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
final Uri _url = Uri.parse('https://flutter.dev');
final Color facebookColor = const Color(0xff39579A);
final Color twitterColor = const Color(0xff00ABEA);
final Color instaColor = const Color(0xffBE2289);
final Color whatsappColor = const Color(0xff075E54);
final Color phoneColor = const Color(0xff0085E0);
final Color tiktokColor = const Color(0xff202020);
final Color googleColor = const Color(0xffDF4A32);

class CustomWidgets {
  static Widget socialButtonRect(title, color, icon, {Function? onTap}) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),
      ),
    );
  }

  static Widget socialButtonCircle(color, icon, {iconColor, Function? onTap}) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Icon(
            icon,
            color: iconColor,
          )), //
    );
  }
}
//Complete code and implementation
class another extends StatelessWidget {
  const another({Key? key}) : super(key: key);
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
      appBar: AppBar(
        title: Text('Login with Account '),
      ),
      body: ListView(
        children: [
          CustomWidgets.socialButtonRect(
              'Login with Facebook', facebookColor, FontAwesomeIcons.facebookF,
              onTap: () {
            Fluttertoast.showToast(msg: 'Please Wait...');

          }),
          CustomWidgets.socialButtonRect(
              'Login with Google', googleColor, FontAwesomeIcons.googlePlusG,
              onTap: () {
            Fluttertoast.showToast(msg: 'Loading...');
          }),
          CustomWidgets.socialButtonRect(
              'Login with Phone', phoneColor, FontAwesomeIcons.phone,
              onTap: () {
            Fluttertoast.showToast(msg: 'Loading...');
          }),
          CustomWidgets.socialButtonRect(
              'Login with Tiktok', tiktokColor, FontAwesomeIcons.tiktok,
              onTap: () {
            Fluttertoast.showToast(msg: 'Loading...');
          }),
          CustomWidgets.socialButtonRect(
              'Whatsapp Now', whatsappColor, FontAwesomeIcons.whatsapp,
              onTap: () {
            Fluttertoast.showToast(msg: 'How can i help you');
            whatsapp();
          }),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomWidgets.socialButtonCircle(
                    facebookColor, FontAwesomeIcons.facebookF,
                    iconColor: Colors.white, onTap: () {
                  Fluttertoast.showToast(msg: 'try again later');
                }),
                CustomWidgets.socialButtonCircle(
                    googleColor, FontAwesomeIcons.googlePlusG,
                    iconColor: Colors.white, onTap: () {
                  Fluttertoast.showToast(msg: 'To many attempts');
                }),
                CustomWidgets.socialButtonCircle(
                    whatsappColor, FontAwesomeIcons.whatsapp,
                    iconColor: Colors.white, onTap: () {
                  Fluttertoast.showToast(msg: 'I am here');
                   whatsapp();
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
Future<void> whatsapp() async {
  const wurl="whatsapp://send?phone=+923125099960&text=Hi Dear customer!now you can chat with seller and buy your product.";
  if (!await launchUrl(Uri.parse(wurl))) {
    throw 'Could not launch $wurl';
  }
}