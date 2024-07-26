import 'package:flutter/material.dart';

import '../Appbarcustom_Adapter.dart';
class shoppingcart extends StatefulWidget {
  const shoppingcart({Key? key}) : super(key: key);

  @override
  State<shoppingcart> createState() => _shoppingcartState();
}

class _shoppingcartState extends State<shoppingcart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text("Shopping Cart",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
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
        child: Column(
          children: [
            SizedBox(height: 300,),
            Icon(Icons.hourglass_empty),
            SizedBox(height: 15,),
            Text("Your Cart is empty.",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
