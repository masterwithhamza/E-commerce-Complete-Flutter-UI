
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'book2.dart';
import 'book3.dart';
import 'book4.dart';
class book1 extends StatefulWidget {
  const book1({Key? key}) : super(key: key);

  @override
  State<book1> createState() => _book1State();
}

class _book1State extends State<book1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(height: 0,),
          Image.asset("images/C++.jpg",width: 100,height: 350,fit: BoxFit.fill,),
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
                  children: const [
                    Text("RS 1500",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: const [
                    Text("C++ Edition(2015)",style: TextStyle(fontSize: 15,color: Colors.black),),
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
              children: const [
                Text("Condition",style: TextStyle(fontSize: 12,),),
                SizedBox(height: 13,width: 250,),
                Text("New",style: TextStyle(fontSize: 12,),),
              ],
            ),
          ),
          const Divider(height: 3,thickness: 1,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Description",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Top Books  for computer programming\nAuthor: Albert John(2015)\nType: Book",style: TextStyle(fontSize: 12,),),
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
                const Text("Ahsan Irshad",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                const SizedBox(width: 30,),
                const Text("( Seller )",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          const Divider(height: 3,thickness: 1,),
          const SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: const Text("Related Ads",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 200, // give it a fixed height constraint
            color: Colors.black12,
            // child ListView
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(5, 5,5,5),
                  margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  height: 200,
                  width: 230,
                  color: Colors.white12,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const book4()),
                        );
                    },
                    child: Column(
                      children: [
                        const SizedBox(height: 5,),
                        Image.asset("images/flutter.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                        const SizedBox(height: 5,),
                        Container(margin:const EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: const Text("dart Program..",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                        const SizedBox(height: 5,),

                        Row(
                          mainAxisAlignment:MainAxisAlignment.end,
                          children: const [
                            Text("RS 1500",style: TextStyle(fontSize: 15,color: Colors.black),),
                            SizedBox(width: 70,),
                            Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: const [
                            Icon(Icons.location_on,size: 15,color: Colors.black),
                            Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(5, 5,5,5),
                  margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  height: 200,
                  width: 230,
                  color: Colors.white12,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const book3()),
                        );
                    },
                    child: Column(
                      children: [
                        const SizedBox(height: 5,),
                        Image.asset("images/python.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                        const SizedBox(height: 5,),
                        Container(margin:const EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: const Text("Pyhton New Edition",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                        const SizedBox(height: 5,),

                        Row(
                          mainAxisAlignment:MainAxisAlignment.end,
                          children: const [
                            Text("RS 1450",style: TextStyle(fontSize: 15,color: Colors.black),),
                            SizedBox(width: 70,),
                            Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: const [
                            Icon(Icons.location_on,size: 15,color: Colors.black),
                            Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(5, 5,5,5),
                  margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  height: 200,
                  width: 230,
                  color: Colors.white12,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const book2()),
                        );
                    },
                    child: Column(
                      children: [
                        const SizedBox(height: 5,),
                        Image.asset("images/java.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                        const SizedBox(height: 5,),
                        Container(margin:const EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: const Text("Java Programming",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                        const SizedBox(height: 5,),

                        Row(
                          mainAxisAlignment:MainAxisAlignment.end,
                          children: const [
                            Text("RS 1450",style: TextStyle(fontSize: 15,color: Colors.black),),
                            SizedBox(width: 70,),
                            Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: const [
                            Icon(Icons.location_on,size: 15,color: Colors.black),
                            Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(5, 5,5,5),
                  margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  height: 200,
                  width: 230,
                  color: Colors.white12,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const book1()),
                        );

                    },
                    child: Column(
                      children: [
                        const SizedBox(height: 5,),
                        Image.asset("images/C++.jpg",width: 80,height: 90,fit: BoxFit.cover,),
                        const SizedBox(height: 5,),
                        Container(margin:const EdgeInsets.fromLTRB(0, 0, 60, 0) ,child: const Text("C++",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,)),
                        const SizedBox(height: 5,),

                        Row(
                          mainAxisAlignment:MainAxisAlignment.end,
                          children: const [
                            Text("RS 1500",style: TextStyle(fontSize: 15,color: Colors.black),),
                            SizedBox(width: 70,),
                            Icon(Icons.favorite_outline,size: 25,color: Colors.black),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: const [
                            Icon(Icons.location_on,size: 15,color: Colors.black),
                            Text("Tayyab stationers & Photostate...",style: TextStyle(fontSize: 10,color: Colors.black),textAlign: TextAlign.start,),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),

              ],

            ),
          ),
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
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(12),
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 93,
                  child:Expanded(child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    child: Text("WhatsApp",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
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
                    child: Text("CALL",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
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
                    child: Text("SMS",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
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