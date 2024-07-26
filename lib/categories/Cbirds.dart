import 'package:flipmarket/Detailscreens/DetailscreenCbirds.dart';
import 'package:flutter/material.dart';
import '../Appbarcustom_Adapter.dart';
class Birds {
  final String p_title;
  final String p_price;
  final String description;
  final String p_condation;
  final String seller_name;
  final String location;
  final String image;

  const Birds(this.p_title, this.p_price,
      this.description, this.p_condation , this.seller_name,this.location, this.image);
}
class Cbirds extends StatefulWidget {
  const Cbirds({Key? key}) : super(key: key);
  @override
  State<Cbirds> createState() => _CbirdsState();
}

class _CbirdsState extends State<Cbirds> {
  @override
  Widget build(BuildContext context) {
    final birds = [
      const Birds('Parrots', '3000', 'This birds is very beautiful and you can buy this by contacting us.', 'fresh', 'Ihsan irshad', 'Islamabad', 'images/birds1.jpg'),
      const Birds('Columbidae', '23000', 'Columbidae is very beautiful bird and you can buy this by contacting us.', 'fresh', 'Ihsan irshad', 'Islamabad', 'images/birds2.jpg'),
      const Birds('Old World sparrows', '6000', 'Old World sparrows is very beautiful bird and you can buy this by contacting us.', 'new', 'Ihsan irshad', 'Islamabad', 'images/birds3.jpg'),
      const Birds('Swallows', '7000', 'Swallows is very beautiful bird and you can buy this by contacting us.', 'fresh', 'Ihsan irshad', 'Islamabad', 'images/birds4.jpg'),
      const Birds('Songbirds', '3500', 'Songbirds is very beautiful bird and you can buy this by contacting us.', 'new', 'Ihsan irshad', 'Islamabad', 'images/birds5.jpg'),
      const Birds('Parrots', '3600', 'This birds is very beautiful and you can buy this by contacting us.', 'fresh', 'Ihsan irshad', 'Islamabad', 'images/birds1.jpg'),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:  Center(child: Text("Beautiful Birds",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
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
        itemCount: birds.length,
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
                      leading: Image.asset(birds[index].image,height: 70,width: 70,),
                      title: Text(birds[index].p_title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      subtitle: Text(birds[index].description,style: TextStyle(fontSize: 11),),
                      trailing: Icon(Icons.favorite,color: Colors.red,),
                      textColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailscreenCbirds(birds: birds[index]),
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
