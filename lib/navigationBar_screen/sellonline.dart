import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../categories/Cmotorbike.dart';
class sellonline extends StatefulWidget {
  const sellonline({Key? key}) : super(key: key);

  @override
  State<sellonline> createState() => _sellonlineState();
}

class _sellonlineState extends State<sellonline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("What are you offering ? ",style: TextStyle(color: Colors.white),)),backgroundColor: Colors.black,),
        body: Padding(
        padding: EdgeInsets.all(5),
    child: ListView(
    scrollDirection: Axis.vertical,
    children: [
    SizedBox(
    height: 10,
    ),
    ListTile(
    leading: ClipRRect(
    borderRadius: BorderRadius.circular(25),
    child: Image.asset("images/catmobile.jpg",width: 40,height: 40,fit: BoxFit.fill,),
    ),

    title: const Text("Mobile Phones",style: TextStyle(fontSize: 14,color: Colors.black)),
    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 20,),
    onTap: () {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => const Cmobilephone()),
    // );
    },
    ),
    SizedBox(
    height: 17,
    ),
    ListTile(
    leading: ClipRRect(
    borderRadius: BorderRadius.circular(25),
    child: Image.asset("images/catbike.jpg",width: 40,height: 40,fit: BoxFit.fill,),
    ),
    title: const Text("Motor Bikes",style: TextStyle(fontSize: 14,color: Colors.black)),
    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 20,),
    onTap: () {
    // Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const Cmotorbike()),
    // );
    },
    ),
    SizedBox(
    height: 17,
    ),
    ListTile(
    leading: ClipRRect(
    borderRadius: BorderRadius.circular(25),
    child: Image.asset("images/catfurniture.jpg",width: 40,height: 40,fit: BoxFit.fill,),
    ),
    title: const Text("Furniture & Home Decor",style: TextStyle(fontSize: 14,color: Colors.black)),
    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 20,),
    onTap: () {
    // Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const Cfurniture()),
    // );
    },
    ),
    SizedBox(
    height: 17,
    ),
    ListTile(
    leading: ClipRRect(
    borderRadius: BorderRadius.circular(25),
    child: Image.asset("images/catcharger.jpg",width: 40,height: 40,fit: BoxFit.fill,),
    ),
    title: const Text("Laptop & Mobile Chargers",style: TextStyle(fontSize: 14,color: Colors.black)),
    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 20,),
    onTap: () {
    // Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const Claptops()),
    // );
    },
    ),


    SizedBox(
    height: 10,
    ),
    ListTile(
    leading: ClipRRect(
    borderRadius: BorderRadius.circular(25),
    child: Image.asset("images/catbirds.jpg",width: 40,height: 40,fit: BoxFit.fill,),
    ),
    title: const Text("Beautiful Birds",style: TextStyle(fontSize: 14,color: Colors.black)),
    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 20,),
    onTap: () {
    // Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const Cbirds()),
    // );
    },
    ),
    SizedBox(
    height: 17,
    ),
    ListTile(
    leading: ClipRRect(
    borderRadius: BorderRadius.circular(25),
    child: Image.asset("images/catclothes.jpg",width: 40,height: 40,fit: BoxFit.cover,),
    ),
    title: const Text("Beautiful Clothes",style: TextStyle(fontSize: 14,color: Colors.black)),
    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 20,),
    onTap: () {
    // Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const Cclothes()),
    // );
    },
    ),
    SizedBox(
    height: 17,
    ),
    ListTile(
    leading: ClipRRect(
    borderRadius: BorderRadius.circular(25),
    child: Image.asset("images/book.png",width: 40,height: 40,fit: BoxFit.fill,),
    ),
    title: const Text("Best Books",style: TextStyle(fontSize: 14,color: Colors.black)),
    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 20,),
    onTap: () {
    // Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const Cbooks()),
    // );
    },
    ),
    SizedBox(
    height: 17,
    ),
    ListTile(
    leading: ClipRRect(
    borderRadius: BorderRadius.circular(25),
    child: Image.asset("images/footbal.jpg",width: 40,height: 40,fit: BoxFit.fill,),
    ),
    title: const Text("Sports",style: TextStyle(fontSize: 14,color: Colors.black)),
    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 20,),
    onTap: () {
    // Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const Csports()),
    // );
    },
    ),
    SizedBox(
    height: 17,
    ),
    ListTile(
    leading: ClipRRect(
    borderRadius: BorderRadius.circular(25),
    child: Image.asset("images/catwatch.jpg",width: 40,height: 40,fit: BoxFit.fill,),
    ),
    title: const Text("Beautiful Watches",style: TextStyle(fontSize: 14,color: Colors.black)),
    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 20,),
    onTap: () {
    // Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const Cwatches()),
    // );
    },
    ),
    SizedBox(
    height: 17,
    ),
    ],
    ),
    ),
    );
  }
}


