import 'package:flutter/material.dart';
import '../categories/CLaptops.dart';
import '../categories/Cbirds.dart';
import '../categories/Cbooks.dart';
import '../categories/Cclothes.dart';
import '../categories/Cfurniture.dart';
import '../categories/Cmobilephone.dart';
import '../categories/Cmotorbike.dart';
import '../categories/Csports.dart';
import '../categories/Cwatches.dart';


class categories2 extends StatefulWidget {
  const categories2({Key? key}) : super(key: key);

  @override
  State<categories2> createState() => _categories2State();
}

class _categories2State extends State<categories2> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: (Text("All Categories",style: TextStyle(fontSize: 17,),)),scrolledUnderElevation: 20,),
      body: Padding(
      padding: EdgeInsets.all(5),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Popular",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
          ),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cmotorbike()),
              );
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cfurniture()),
              );
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Claptops()),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Others",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cbirds()),
              );
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cclothes()),
              );
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cbooks()),
              );
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Csports()),
              );
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cwatches()),
              );
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
