import 'package:flipmarket/Detailscreens/DetailscreenCwatches.dart';
import 'package:flutter/material.dart';

import '../Appbarcustom_Adapter.dart';
class Watch {
  final String p_title;
  final String p_price;
  final String description;
  final String p_condation;
  final String seller_name;
  final String location;
  final String image;

  const Watch(this.p_title, this.p_price,
      this.description, this.p_condation , this.seller_name,this.location, this.image);
}
class Cwatches extends StatefulWidget {
  const Cwatches({Key? key}) : super(key: key);

  @override
  State<Cwatches> createState() => _CwatchesState();
}

class _CwatchesState extends State<Cwatches> {
  @override
  Widget build(BuildContext context) {
    final watch = [
      const Watch('Rollex', '34500', 'Dell Laptops and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/rollex.jpg'),
      const Watch('Rado', '18500', 'Hp laptops branded and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/rado.png'),
      const Watch('Gucci', '15000', 'Acer gaming laptop and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/guci.jpg'),
      const Watch('Fossil ', '13000', 'New Notebook pro Hp and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/fossil.jpg'),
         ];
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text("Beautiful Watches",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
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
        itemCount: watch.length,
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
                      leading: Image.asset(watch[index].image,height: 70,width: 70,),
                      title: Text(watch[index].p_title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      subtitle: Text(watch[index].description,style: TextStyle(fontSize: 11),),
                      trailing: Icon(Icons.favorite,color: Colors.red,),
                      textColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailscreenCwatches(watch: watch[index]),
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
