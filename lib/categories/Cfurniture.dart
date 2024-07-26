import 'package:flipmarket/Detailscreens/DetailscreenCfurniture.dart';
import 'package:flutter/material.dart';

import '../Appbarcustom_Adapter.dart';
class Furniture {
  final String p_title;
  final String p_price;
  final String description;
  final String p_condation;
  final String seller_name;
  final String location;
  final String image;

  const Furniture(this.p_title, this.p_price,
      this.description, this.p_condation , this.seller_name,this.location, this.image);
}
class Cfurniture extends StatefulWidget {
  const Cfurniture({Key? key}) : super(key: key);

  @override
  State<Cfurniture> createState() => _CfurnitureState();
}

class _CfurnitureState extends State<Cfurniture> {
  @override
  Widget build(BuildContext context) {
     final furniture = [
      const Furniture('MoltiFoam', '10000', 'This Foam is very good Quality and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/foam.png'),
      const Furniture('Sofa 2 Seater', '23000', 'Sofa set is in wood quality  and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/sofa.jpg'),
      const Furniture('Double Bed', '60000', 'Furniture is very beautiful  and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/bed.jpg'),
      const Furniture('All Chair ', '8000', 'Gaming chairs is very beautiful  and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/chair.jpg'),
      const Furniture('Tables', '35000', 'Home Table in wood quality  and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/table.jpg'),
         ];
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text("Furniture",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
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
        itemCount: furniture.length,
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
                      leading: Image.asset(furniture[index].image,height: 70,width: 70,),
                      title: Text(furniture[index].p_title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      subtitle: Text(furniture[index].description,style: TextStyle(fontSize: 11),),
                      trailing: Icon(Icons.favorite,color: Colors.red,),
                      textColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailscreenCfurniture(furniture: furniture[index]),
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
