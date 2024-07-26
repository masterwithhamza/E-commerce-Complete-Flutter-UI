import 'package:flipmarket/Detailscreens/DetailscreenCbooks.dart';
import 'package:flutter/material.dart';

import '../Appbarcustom_Adapter.dart';
class books {
  final String p_title;
  final String p_price;
  final String description;
  final String p_condation;
  final String seller_name;
  final String location;
  final String image;

  const books(this.p_title, this.p_price,
      this.description, this.p_condation , this.seller_name,this.location, this.image);
}
class Cbooks extends StatefulWidget {
  const Cbooks({Key? key}) : super(key: key);

  @override
  State<Cbooks> createState() => _CbooksState();
}

class _CbooksState extends State<Cbooks> {
  @override
  Widget build(BuildContext context) {
    final Books = [
      const books('C++', '1500', 'C++ programming book you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/C++.jpg'),
      const books('Java', '1400', 'Java programming book and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/java.jpg'),
      const books('Python', '1400', 'Python programming book and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/python.jpg'),
      const books('Flutter', '1400', 'Flutter programming book and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/flutter.jpg'),
      const books('Flutter Practical', '3500', 'Songbirds is very beautiful bird and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/flutter1.jpg'),

    ];
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text("Best Books",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
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
       body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: Books.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children:  [
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(5),
                height: 120,
                //color: Colors.green,
                width: double.infinity,
                child: Card(
                  elevation: 5,
                 child: Center(
                   child: ListTile(
                      // tileColor: Colors.green[colorCodes[index]],
                      leading: Image.asset(Books[index].image,height: 70,width: 70,),
                      title: Text(Books[index].p_title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      subtitle: Text(Books[index].description,style: TextStyle(fontSize: 11),),
                      trailing: Icon(Icons.favorite,color: Colors.red,),
                      textColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailscreenCbooks(Books: Books[index]),
                          ),
                        );
                      },

                      //dense: true,
                    ),
                 ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
