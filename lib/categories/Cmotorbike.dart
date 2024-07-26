import 'package:flipmarket/Detailscreens/DetailscreenCmotorbike.dart';
import 'package:flutter/material.dart';

import '../Appbarcustom_Adapter.dart';
class Motorcycle {
  final String p_title;
  final String p_price;
  final String description;
  final String p_condation;
  final String seller_name;
  final String location;
  final String image;

  const Motorcycle(this.p_title, this.p_price,
      this.description, this.p_condation , this.seller_name,this.location, this.image);
}
class Cmotorbike extends StatefulWidget {
  const Cmotorbike({Key? key}) : super(key: key);

  @override
  State<Cmotorbike> createState() => _CmotorbikeState();
}

class _CmotorbikeState extends State<Cmotorbike> {
  @override
  Widget build(BuildContext context) {
      final motorcycle = [
      const Motorcycle('Honda', '90000 - 260000', 'Honda 70cc & Honda 125 fresh sale and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/suzuki.jpg'),
      const Motorcycle('United ', '70000', 'United china 70cc bikes in installment and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/united.jpg'),
      const Motorcycle('Yamaha', '60000 - 320000', 'Yamaha 70cc & Yamaha 150 are now in stock  and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/yamha.jpg'),
      const Motorcycle('Union Star ', '60000', 'Union star china 70cc bikes are now available in stock and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/union.jpg'),
      const Motorcycle('Suzuki', '65000 - 32000', 'Suzuki 70cc & 150cc bikes are now instock and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/suzuki.jpg'),
         ];
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text("Motor Bike",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
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
        itemCount: motorcycle.length,
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
                      leading: Image.asset(motorcycle[index].image,height: 70,width: 70,),
                      title: Text(motorcycle[index].p_title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      subtitle: Text(motorcycle[index].description,style: TextStyle(fontSize: 11),),
                      trailing: Icon(Icons.favorite,color: Colors.red,),
                      textColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailscreenCmotorbike(motorcycle: motorcycle[index]),
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
