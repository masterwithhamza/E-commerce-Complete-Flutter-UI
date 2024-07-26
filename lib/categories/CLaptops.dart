import 'package:flutter/material.dart';
import 'package:flipmarket/Detailscreens/DetailscreenCLaptops.dart';
import '../Appbarcustom_Adapter.dart';
class Laptop {
  final String p_title;
  final String p_price;
  final String description;
  final String p_condation;
  final String seller_name;
  final String location;
  final String image;

  const Laptop(this.p_title, this.p_price,
      this.description, this.p_condation , this.seller_name,this.location, this.image);
}
class Claptops extends StatefulWidget {
  const Claptops({Key? key}) : super(key: key);

  @override
  State<Claptops> createState() => _ClaptopsState();
}

class _ClaptopsState extends State<Claptops> {
  @override
  Widget build(BuildContext context) {
     final laptop = [
      const Laptop('Dell', '80000', 'Dell Laptops and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/dell.jpg'),
      const Laptop('HP', '230000', 'Hp laptops branded and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/hp.jpg'),
      const Laptop('Acer', '350000', 'Acer gaming laptop and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/acer.jpg'),
      const Laptop('Hp Notebook ', '53000', 'New Notebook pro Hp and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/probook.jpg'),
      const Laptop('Apple Macbbook', '35000', 'New Apple Macbook   and you can buy this by contacting us.', 'New', 'Ahsan Irshad', 'Rawalpindi', 'images/apple.jpg'),
         ];
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text("Laptops",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
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
        itemCount: laptop.length,
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
                      leading: Image.asset(laptop[index].image,height: 70,width: 70,),
                      title: Text(laptop[index].p_title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      subtitle: Text(laptop[index].description,style: TextStyle(fontSize: 11),),
                      trailing: Icon(Icons.favorite,color: Colors.red,),
                      textColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailscreenCLaptops(laptop: laptop[index]),
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
