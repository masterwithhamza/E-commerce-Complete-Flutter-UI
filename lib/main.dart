import 'package:flipmarket/navigationBar_screen/Categories.dart';
import 'package:flipmarket/drawer_items/ContactUs.dart';
import 'package:flipmarket/app_bar_and_Drawer%20items/Faviourties.dart';
import 'package:flipmarket/navigationBar_screen/HomePage.dart';
import 'package:flipmarket/app_bar_and_Drawer%20items/categories2.dart';
import 'package:flipmarket/menu_items/moreapps.dart';
import 'package:flipmarket/drawer_items/notifications.dart';
import 'package:flipmarket/menu_items/privacypolicy.dart';
import 'package:flipmarket/app_bar_and_Drawer%20items/setting.dart';
import 'package:flipmarket/app_bar_and_Drawer%20items/shoppingcart.dart';
import 'package:flipmarket/navigationBar_screen/signup.dart';
import 'package:flipmarket/menu_items/termconditions.dart';
import 'package:flipmarket/navigationBar_screen/sellonline.dart';
import 'package:flutter/material.dart';
import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'drawer_items/aboutus.dart';
import 'splashscreen.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flip Market',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //////////////////////////////////////// Bottom Navigation Bar///////////////////////////////////////
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Categories(),
    Faviourties(),
    signup(),
  ];

//////////////////////////////////////// Bottom Navigation Bar///////////////////////////////////////


  //////////// Function for Bottom Navigation Bar/////////////////////////// start
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    },

    );
  }
  //////////// Function for Bottom Navigation Bar/////////////////////////// end
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          //////////////////////////////////////////// ICON BUTTON ON APP BAR//////////////////////////////////////////////////////
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => shoppingcart()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const setting()),
              );
            },
          ),
          //////////////////////////////////////////// ICON BUTTON ON APP BAR//////////////////////////////////////////////////////

///////////////////////////////////// 3 DOT POP UP MENU//////////////////////////////////////////////////////

          PopupMenuButton(itemBuilder: (context) => [
            const PopupMenuItem(
                value: 1,
                child:  Card(
                  elevation: 0,
                  child: ListTile(
                    leading: Icon(Icons.category,size: 20,color: Colors.black,),
                    title: Text('Categories',style: TextStyle(fontSize: 13),),
                    trailing:Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Colors.blue,) ,                    //  tileColor: Colors.white,
                    //  selectedTileColor: Colors.green,
                    //selectedColor: Colors.red,

                  ),
                ),
            ),
            const PopupMenuItem(
              value: 2,
              child:  Card(
                elevation: 0,
                child: ListTile(
                  leading: Icon(Icons.feedback,size: 20,color: Colors.black,),
                  title: Text('Give Feedback',style: TextStyle(fontSize: 13),),
                  trailing:Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Colors.blue,) ,                  //  tileColor: Colors.white,
                  //  selectedTileColor: Colors.green,
                  //selectedColor: Colors.red,

                ),
              ),
            ),
            const PopupMenuItem(
              value: 3,
              child:  Card(
                elevation: 0,
                child: ListTile(
                  leading: Icon(Icons.apps,size: 20,color: Colors.black,),
                  title: Text('More Apps',style: TextStyle(fontSize: 13),),
                  trailing:Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Colors.blue,) ,                  //  tileColor: Colors.white,
                  //  selectedTileColor: Colors.green,
                  //selectedColor: Colors.red,

                ),
              ),
            ),
            const PopupMenuItem(
              value: 4,
              child:  Card(
                elevation: 0,
                child: ListTile(
                  leading: Icon(Icons.privacy_tip,size: 20,color: Colors.black,),
                  title: Text('Privacy Policy',style: TextStyle(fontSize: 13),),
                  trailing:Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Colors.blue,) ,                  //  tileColor: Colors.white,
                  //  selectedTileColor: Colors.green,
                  //selectedColor: Colors.red,

                ),
              ),
            ),
            const PopupMenuItem(
              value: 5,
              child:  Card(
                elevation: 0,
                child: ListTile(
                  leading: Icon(Icons.security,size: 20,color: Colors.black,),
                  title: Text('Term & Conditions',style: TextStyle(fontSize: 13),),
                  trailing:Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Colors.blue,) ,                  //  tileColor: Colors.white,
                  //  selectedTileColor: Colors.green,
                  //selectedColor: Colors.red,

                ),
              ),
            ),
            const PopupMenuItem(
              value: 6,
              child:  Card(
                elevation: 0,
                child: ListTile(
                  leading: Icon(Icons.exit_to_app,size: 20,color: Colors.black,),
                  title: Text('Exit',style: TextStyle(fontSize: 13),),
                  trailing:Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Colors.blue,) ,
                  //  tileColor: Colors.white,
                  //  selectedTileColor: Colors.green,
                  //selectedColor: Colors.red,

                ),
              ),
            ),
          ],
         onSelected: (int menu){
            if(menu==1)
              {
                Navigator.of(context).push(_createRoute());
              }
            else if(menu==2)
            {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title:  Row(
                    children: [
                      Icon(Icons.feedback,size: 25,color: Colors.green,),
                      SizedBox(width: 10,),
                      Text('Give Your Feedback ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                  content: const Text('You can give us your feedback on this email.\nhamza.rehman.shaikh@gmail.com',style: TextStyle(fontSize: 15),),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'help'),
                      child: const Text('Contact us',textAlign: TextAlign.left,style: TextStyle(color: Colors.blue),),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Got it'),
                      child: const Text('Got it',style: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),
              );
            }
            else if(menu==3)
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const moreapps()),
              );
            }
            else if(menu==4)
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const privacypolicy()),
              );
            }
            else if(menu==5)
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const termconditions()),
              );
            }
            else if(menu==6){
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title:  Row(
                    children: [
                      Icon(Icons.exit_to_app,size: 25,color: Colors.red,),
                      SizedBox(width: 10,),
                      Text('Exit',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red),),
                    ],
                  ),
                  content: const Text('Are you sure you want to Exit from this app ?',style: TextStyle(fontSize: 15),),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'help'),
                      child: const Text('Help',textAlign: TextAlign.left,style: TextStyle(color: Colors.green),),
                    ),
                    TextButton(

                      onPressed: () => SystemNavigator.pop(),
                      child: const Text('Exit'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                  ],
                ),
              );
            }
         },
          ),
///////////////////////////////////// 3 DOT POP UP MENU//////////////////////////////////////////////////////
        ],
      ),
      body:  Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      /////////////////////////////////////////////////////////////// DRAWER /////////////////////////////////////////////////////////////////
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(height: 20,),
            Image.asset("images/flipm.png",width: 180,height: 100,),
            ListTile(
              leading: const Icon(Icons.home_outlined,color: Colors.black,size: 27,), title: const Text("Home",style: TextStyle(fontSize: 14,color: Colors.black),),
              onTap: () {
                Navigator.pop(context);
                Fluttertoast.showToast(
                    msg: "You are on Home page.",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 3,
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle_outlined,color: Colors.black,size: 27,), title: const Text("My Profile",style: TextStyle(fontSize: 14,color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const signup()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications_outlined,color: Colors.black,size: 27,), title: const Text("Notifications",style: TextStyle(fontSize: 14,color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const notification()),
                );
              },
            ),
            Divider(thickness: 0.4,color: Colors.black,),
            ListTile(
              leading: const Icon(Icons.category_outlined,color: Colors.black,size: 27,), title: const Text("Categories",style: TextStyle(fontSize: 14,color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const categories2()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart_outlined,color: Colors.black,size: 27,), title: const Text("Shopping Cart",style: TextStyle(fontSize: 14,color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const shoppingcart()),
                );
              },
            ),
            Divider(thickness: 0.4,color: Colors.black,),
            ListTile(
              leading: const Icon(Icons.settings_outlined,color: Colors.black,size: 27,), title: const Text("Settings",style: TextStyle(fontSize: 14,color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const setting()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.help_outline,color: Colors.black,size: 27,), title: const Text("Help",style: TextStyle(fontSize: 14,color: Colors.black)),
              onTap: () {
                whatsapp();
              },
            ),
            Divider(thickness: 0.4,color: Colors.black,),
            ListTile(
              leading: const Icon(Icons.accessibility_outlined,color: Colors.black,size: 27,), title: const Text("About Us",style: TextStyle(fontSize: 14,color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const aboutus()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_page_outlined,color: Colors.black,size: 27,), title: const Text("Contact Us",style: TextStyle(fontSize: 14,color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactUs()),
                );
              },
            ),
            Divider(thickness: 0.4,color: Colors.black,),
            ListTile(
              leading: const Icon(Icons.share_outlined,color: Colors.black,size: 27,), title: const Text("Share App",style: TextStyle(fontSize: 14,color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title:  Row(
                      children: [
                        Icon(Icons.share_outlined,size: 40,color: Colors.black,),
                        SizedBox(width: 10,),
                        Text('Share Our App ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                      ],
                    ),
                    content: const Text('You can share our app by clicking on share now button.',style: TextStyle(fontSize: 15),),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'No thanks'),
                        child: const Text('No thanks',style: TextStyle(color: Colors.blue)),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Share now'),
                        child: const Text('Share now',textAlign: TextAlign.left,style: TextStyle(color: Colors.blue),),
                      ),

                    ],
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.star_rate_outlined,color: Colors.black,size: 27,), title: const Text("Rate Us",style: TextStyle(fontSize: 14,color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title:  Row(
                      children: [
                        Icon(Icons.star,size: 40,color: Colors.yellow,),
                        SizedBox(width: 10,),
                        Text('Ratus Us Our App ',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),),
                      ],
                    ),
                    content: const Text('You can give Rating to our app by clicking on the rate us button.',style: TextStyle(fontSize: 15),),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'No thanks'),
                        child: const Text('No thanks',style: TextStyle(color: Colors.blue)),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Rate us'),
                        child: const Text('Rate us',textAlign: TextAlign.left,style: TextStyle(color: Colors.blue),),
                      ),

                    ],
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.more_horiz_outlined,color: Colors.black,size: 27,), title: Text("More Apps",style: TextStyle(fontSize: 14,color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const moreapps()),
                );
              },

            ),
            Divider(thickness: 0.2,color: Colors.black,),
            const SizedBox(height: 30,),
            Container(child: Center(child: const Text("Version 1.0",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),))),
            const SizedBox(height: 30,),
          ],
        ),

      ),

      /////////////////////////////////////////////////////////////// DRAWER /////////////////////////////////////////////////////////////////
     //////////////////////////////////////// Bottom Navigation Bar///////////////////////////////////////

      bottomNavigationBar: AnimatedBottomNavigationBar(
        bottomBarItems: [
          BottomBarItemsModel(
              icon: const Icon(Icons.home,size: 30,color: Colors.pink,),
              iconSelected: const Icon(Icons.home,size: 30, color: Colors.orange, ),
              title: "Home",
              dotColor: Colors.black,
              onTap:(){
                _onItemTapped(0);
              }
          ),
          BottomBarItemsModel(
              icon: const Icon(Icons.category,size: 30,color: Colors.pink,),
              iconSelected: const Icon(Icons.category,size: 30,color: Colors.orange, ),
              title: "Categories",
              dotColor: Colors.black,
              onTap:(){
                _onItemTapped(1);
              }
          ),
          BottomBarItemsModel(
              icon: const Icon(Icons.new_label,size: 30,color: Colors.pink),
              iconSelected: const Icon(Icons.new_label,size: 30, color: Colors.orange, ),
              title: "New items",
              dotColor: Colors.black,
              onTap:(){
                _onItemTapped(2);
              }
          ),
          BottomBarItemsModel(
              icon: const Icon(Icons.account_circle,size: 30,color: Colors.pink),
              iconSelected: const Icon(Icons.account_circle,size: 30, color: Colors.orange, ),
              title: "My profile",
              dotColor: Colors.black,
              onTap:(){
                _onItemTapped(3);
              }
          ),
        ],
        bottomBarCenterModel: BottomBarCenterModel(
          centerBackgroundColor: Colors.pink,
          centerIcon: const FloatingCenterButton(
            child: Icon(
              Icons.sell,size: 30,
              color: AppColors.white,
            ),
          ),
          centerIconChild: [
            FloatingCenterButtonChild(
              child: Text("Sell",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const sellonline()),
                );
              },
            ),
            FloatingCenterButtonChild(
              child: const Icon(
                Icons.close,
                color: AppColors.black,
              ),
              onTap: () {

              },
            ),
          ],
        ),
      ),

      //////////////////////////////////////// Bottom Navigation Bar///////////////////////////////////////

    );
  }
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, Animation) => const categories2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }
}
Future<void> whatsapp() async {
  const wurl="whatsapp://send?phone=+923065305703&text=Hi dear tell me your problem.how can i help you.";
  if (!await launchUrl(Uri.parse(wurl))) {
    throw 'Could not launch $wurl';
  }
}

