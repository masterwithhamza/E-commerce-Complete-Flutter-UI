import 'package:flipmarket/categories/Cfurniture.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class DetailscreenCfurniture extends StatelessWidget {
  const DetailscreenCfurniture({super.key, required this.furniture});
  final Furniture furniture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(height: 0,),
          Image.asset(furniture.image,width: 100,height: 350,fit: BoxFit.fill,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                  ],
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children:  [
                    Text(furniture.p_price,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children:  [
                    Text(furniture.p_title,style: TextStyle(fontSize: 15,color: Colors.black),),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: const [
                    Icon(Icons.location_on,size: 20,color: Colors.black),
                    Text("Tayyab stationers & Photostate Bismillah Market Main Bazar\n Ariya Muhallah, Rawalpindi, 46000",style: TextStyle(fontSize: 12,color: Colors.black),textAlign: TextAlign.start,),
                  ],
                ),
              ],
            ),
          ),
          const Divider(height: 3,thickness: 1,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Details",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children:  [
                Text("Condition",style: TextStyle(fontSize: 12,),),
                SizedBox(height: 13,width: 250,),
                Text(furniture.p_condation,style: TextStyle(fontSize: 12,),),
              ],
            ),
          ),
          const Divider(height: 3,thickness: 1,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Description",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(furniture.description,style: TextStyle(fontSize: 12,),),
          ),
          const Divider(height: 3,thickness: 1,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset("images/1024.png",width: 100,height: 100,fit: BoxFit.fill,),
                ),
                const SizedBox(width: 20,),
                Text(furniture.seller_name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                const SizedBox(width: 30,),
                const Text("( Seller )",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          const Divider(height: 3,thickness: 1,),
          const SizedBox(height: 10,),
          const Divider(height: 7,thickness: 1,),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Your safety matters to us!",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("1. Check and inspect the product properly before purchasing it. ",style: TextStyle(fontSize: 10),),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("2. Never pay anyting in advance or transfer money before inspecting the product. ",style: TextStyle(fontSize: 10),),
          ),

          const Divider(height: 3,thickness: 1,),
          const SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 93,
                  child:Expanded(child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    child: Text("WhatsApp",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    onPressed: (){
                      whatsapp();
                    },
                  )),
                ),
                SizedBox(width: 15,),

                SizedBox(
                  height: 50,
                  width: 93,
                  child:Expanded(child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.greenAccent),
                    child: Text("CALL",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    onPressed: (){
                      calling();
                    },
                  )),
                ),
                SizedBox(width: 15,),

                SizedBox(
                  height: 50,
                  width: 93,
                  child:Expanded(child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                    child: Text("SMS",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    onPressed: (){
                      sms();
                    },
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
Future<void> calling() async {
  const url='tel:+923125099960';
  if (!await launchUrl(Uri.parse(url))) {
    throw 'Could not launch $url';
  }
}
Future<void> sms() async {
  const sms='sms:+923125099960';
  if (!await launchUrl(Uri.parse(sms))) {
    throw 'Could not launch $sms';
  }
}
Future<void> whatsapp() async {
  const wurl="whatsapp://send?phone=+923125099960&text=Hi Dear Customer!now you can chat with seller and buy your product.";
  if (!await launchUrl(Uri.parse(wurl))) {
    throw 'Could not launch $wurl';
  }
}