import 'package:flipmarket/Detailscreens/DetailscreenCclothes.dart';
import 'package:flutter/material.dart';

import '../Appbarcustom_Adapter.dart';


class clothes {
  final String p_title;
  final String p_price;
  final String description;
  final String p_condation;
  final String seller_name;
  final String location;
  final String image;

  const clothes(this.p_title, this.p_price,
      this.description, this.p_condation , this.seller_name,this.location, this.image);
}
class Cclothes extends StatefulWidget {
  const Cclothes({Key? key}) : super(key: key);

  @override
  State<Cclothes> createState() => _CclothesState();
}

class _CclothesState extends State<Cclothes> {
  @override
  Widget build(BuildContext context) {
    final Clothes = [
      const clothes('Jackets and coats', '3000', 'Beautiful Jackets & Coats and you can buy this by contacting us.', 'New', 'Ahsan irshad', 'Rawalpindi', 'images/coat.jpg'),
      const clothes('Trousers and shorts', '2300', 'Beautiful Trousers and shorts and you can buy this by contacting us.', 'New', 'Ahsan irshad', 'Rawalpindi', 'images/trouser.jpg'),
      const clothes('Underwear', '1200', 'Beautiful Underwear and you can buy this by contacting us..', 'neNeww', 'Ahsan irshad', 'Rawalpindi', 'images/wear.jpg'),
      const clothes('Suits', '7000', 'Beautiful Suits and you can buy this by contacting us.', 'New', 'Ahsan irshad', 'Rawalpindi', 'images/suits.jpg'),
      const clothes('Skirts and dresses.', '3500', 'Beautiful Skirts and dresses and you can buy this by contacting us.', 'New', 'Ahsan irshad', 'Rawalpindi', 'images/skirts.jpg'),
      const clothes('Sweaters and waistcoats', '3600', 'Beautiful Sweaters and waistcoats and you can buy this by contacting us.', 'New', 'Ahsan irshad', 'Rawalpindi', 'images/sweater.jpg'),
    ];

    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text("Beautiful clothes",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
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
        itemCount: Clothes.length,
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
                      leading: Image.asset(Clothes[index].image,height: 70,width: 70,),
                      title: Text(Clothes[index].p_title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      subtitle: Text(Clothes[index].description,style: TextStyle(fontSize: 11),),
                      trailing: Icon(Icons.favorite,color: Colors.red,),
                      textColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailscreenCclothes(Clothes: Clothes[index]),
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
