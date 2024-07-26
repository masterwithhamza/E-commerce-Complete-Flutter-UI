import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';

import '../Appbarcustom_Adapter.dart';

void main() {
  runApp(setting());
  //TextEditingController textController = TextEditingController();
}

class setting extends StatelessWidget {
const setting({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var textController;
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:  Center(child: Text("Settings",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
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
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
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
                  hintText: "Search setting",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                   // borderRadius: Radius.circular(30),
                  )
                ),
              ),

          ),
              // user card

              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.pencil_outline,
                    iconStyle: IconStyle(),
                    title: 'Appearance',
                    subtitle: "Change Setting",
                  ),
                   SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.arrow_up_circle,
                    iconStyle: IconStyle(
                      iconsColor: Colors.blue,
                      withBackground: true,
                      backgroundColor: Colors.orange,
                    ),
                    title: 'Update Flip Market',
                    subtitle: " Check updates ",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.fingerprint,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.red,
                    ),
                    title: 'Privacy',
                    subtitle: "Fingerprint, App lock",
                  ),
                   SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.app_badge,
                    iconStyle: IconStyle(
                      iconsColor: Colors.pinkAccent,
                      withBackground: true,
                      backgroundColor: Colors.grey,
                    ),
                    title: 'Notifications',
                    subtitle: "Notificaton and status bar",
                  ),
                   SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.pencil_outline,
                    iconStyle: IconStyle(),
                    title: 'Accessibiltiy',
                    subtitle: "Shortcuts",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.dark_mode_rounded,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.black,
                    ),
                    title: 'Dark mode',
                    subtitle: "Automatic",
                    trailing: Switch.adaptive(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {
                    },
                    icons: Icons.info_rounded,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.purple,
                    ),
                    title: 'About Us',
                    subtitle: "Please Click to visit  ",
                  ),
                ],
              ),
              // You can add a settings title
              SettingsGroup(
                settingsGroupTitle: "Account",
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.repeat,
                    title: "Change E-mail",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.exit_to_app_rounded,
                    title: "Log Out",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.delete_solid,
                    title: "Permanent Delete Account",
                    titleStyle: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}