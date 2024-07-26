import 'package:flipmarket/Detailscreens/DetailscreenCsports.dart';
import 'package:flutter/material.dart';

import '../Appbarcustom_Adapter.dart';
class Sports {
  final String p_title;
  final String p_price;
  final String description;
  final String p_condation;
  final String seller_name;
  final String location;
  final String image;

  const Sports(this.p_title, this.p_price,
      this.description, this.p_condation , this.seller_name,this.location, this.image);
}
class Csports extends StatefulWidget {
  const Csports({Key? key}) : super(key: key);

  @override
  State<Csports> createState() => _CsportsState();
}

class _CsportsState extends State<Csports> {
  @override
  Widget build(BuildContext context) {
      final sports = [
      const Sports('Balls', '400', 'HardBall In best qualityand you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/ball.jpg'),
      const Sports('Bats', '4000', 'Cricket bats  CA in best wood quality and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/bat.jpg'),
      const Sports('Hockeys', '4300', 'Hockeys & balls in original quality  and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/hockey.jpg'),
      const Sports('Footballs ', '2500', 'Best Pakistani footballs  and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/football.jpg'),
      const Sports('Tennis Racket', '3000', 'Top Tennis rackets  and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/racket.jpg'),
         ];
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text("Sports",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
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
        itemCount: sports.length,
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
                      leading: Image.asset(sports[index].image,height: 70,width: 70,),
                      title: Text(sports[index].p_title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      subtitle: Text(sports[index].description,style: TextStyle(fontSize: 11),),
                      trailing: Icon(Icons.favorite,color: Colors.red,),
                      textColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailscreenCsports(sports: sports[index]),
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
