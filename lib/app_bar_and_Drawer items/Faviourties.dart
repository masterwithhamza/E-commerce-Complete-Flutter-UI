import 'package:carousel_slider/carousel_slider.dart';
import 'package:flipmarket/Detailscreens/DetailscreenFaviourties.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class CFaviourties {
	final String p_title;
	final String p_price;
	final String description;
	final String p_condation;
	final String seller_name;
	final String location;
	final String image;

	const CFaviourties(this.p_title, this.p_price,
			this.description, this.p_condation , this.seller_name,this.location, this.image);
}
class Faviourties extends StatelessWidget {

  const Faviourties({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
	final cfaviourties = [
		const CFaviourties('Parrots', '3000', 'This birds is very beautiful and you can buy this by contacting us.', 'fresh', 'Ihsan irshad', 'Islamabad', 'images/birds1.jpg'),
		const CFaviourties('Columbidae', '23000', 'Columbidae is very beautiful bird and you can buy this by contacting us.', 'fresh', 'Ihsan irshad', 'Islamabad', 'images/birds2.jpg'),
		const CFaviourties('Old World sparrows', '6000', 'Old World sparrows is very beautiful bird and you can buy this by contacting us.', 'new', 'Ihsan irshad', 'Islamabad', 'images/birds3.jpg'),
		const CFaviourties('Swallows', '7000', 'Swallows is very beautiful bird and you can buy this by contacting us.', 'fresh', 'Ihsan irshad', 'Islamabad', 'images/birds4.jpg'),
		const CFaviourties('Songbirds', '3500', 'Songbirds is very beautiful bird and you can buy this by contacting us.', 'new', 'Ihsan irshad', 'Islamabad', 'images/birds5.jpg'),
		const CFaviourties('Parrots', '3600', 'This birds is very beautiful and you can buy this by contacting us.', 'fresh', 'Ihsan irshad', 'Islamabad', 'images/birds1.jpg'),
	];
	return Scaffold(
	body: ListView(
		children: [
		CarouselSlider(
			items: [

				//1st Image of Slider
				Container(
				margin: EdgeInsets.all(12),
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(15.0),
					image: DecorationImage(
					image: NetworkImage("https://t3.ftcdn.net/jpg/04/12/47/76/360_F_412477644_k8JFeErj5OSJoLyjNtRxbmdGyvwUxcfX.jpg"),
					fit: BoxFit.fill,
					),
				),
				),

				//2nd Image of Slider
				Container(
				margin: EdgeInsets.all(12),
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(15.0),
					image: DecorationImage(
					image: NetworkImage("https://cdn.metro-online.pk/dashboard/images/1470669908.jpg?78795"),
					fit: BoxFit.fill,
					),
				),
				),

				//3rd Image of Slider
				Container(
				margin: EdgeInsets.all(12),
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(15.0),
					image: DecorationImage(
					image: NetworkImage("https://blog-cdn.el.olx.com.pk/wp-content/uploads/2022/05/31105925/Honda-bikes-featured-1024x576.jpg"),
					fit: BoxFit.fill,
					),
				),
				),
					Container(
				margin: EdgeInsets.all(12),
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(15.0),
					image: DecorationImage(
					image: NetworkImage("https://www.gannett-cdn.com/presto/2022/05/04/USAT/52005c08-b7e2-444e-9ce8-b0eb15ee5a6b-Best_Buy_24-Hour_Flash_Sale_5422.jpg?crop=4778,2688,x21,y0&width=3200&height=1801&format=pjpg&auto=webp"),
					fit: BoxFit.fill,
					),
				),
				),

				//4th Image of Slider
				Container(
				margin: EdgeInsets.all(12),
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(15.0),
					image: DecorationImage(
					image: NetworkImage("https://www.aboutpakistan.com/news/wp-content/uploads/2021/10/11th-generation-Civic.jpg"),
					fit: BoxFit.fill,
					),
				),
				),

				//5th Image of Slider
				Container(
				margin: EdgeInsets.all(12),
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(15.0),
					image: DecorationImage(
					image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFbogc1z04F7TA9XRZN36EHUG5vxMKNY-8d3EUYKCGsiZO7sko4o8FsJuwAu1Q8VUoxKA&usqp=CAU"),
					fit: BoxFit.fill,
					),
				),
				),
        Container(
				margin: EdgeInsets.all(12),
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(15.0),
					image: DecorationImage(
					image: NetworkImage("https://i.rtings.com/assets/pages/y1WfB3By/best-on-ear-headphones-20220323-medium.jpg"),
					fit: BoxFit.fill,
					),
				),
				),
        Container(
				margin: EdgeInsets.all(12),
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(15.0),
					image: DecorationImage(
					image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGBzoM08tHudT5rG33gjd0hLyy77Xh96Qk5w&usqp=CAU"),
					fit: BoxFit.fill,
					),
				),
				),
        Container(
				margin: EdgeInsets.all(12),
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(15.0),
					image: DecorationImage(
					image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDWBZYitzy3eDrwq0eeIvoG0clfAoGXEDkCw&usqp=CAU",
					),
					fit: BoxFit.fill,
					),
				),
				),
		],

			//Slider Container properties
			options: CarouselOptions(
				height: 300.0,
				enlargeCenterPage: true,
				autoPlay: true,
				aspectRatio: 16 / 9,
				autoPlayCurve: Curves.fastOutSlowIn,
				enableInfiniteScroll: true,
				autoPlayAnimationDuration: Duration(milliseconds: 50 ),
				//viewportFraction: 0.8,
			),
		),
			 // Container(
				//  margin: EdgeInsets.all(10),
				//  padding: EdgeInsets.all(10),
				//  child: ListView.builder(
				// 	 padding: const EdgeInsets.all(8),
				// 	 itemCount: cfaviourties.length,
				// 	 itemBuilder: (BuildContext context, int index) {
				// 		 return Column(
				// 			 children:  [
				// 				 SizedBox(height: 10,),
				// 				 Container(
				// 					 margin: EdgeInsets.all(5),
				// 					 height: 120,
				// 					 //color: Colors.green,
				// 					 width: double.infinity,
				// 					 child: Card(
				// 						 elevation: 5,
				// 						 child: Center(
				// 							 child: ListTile(
				// 								 // tileColor: Colors.green[colorCodes[index]],
				// 								 leading: Image.asset(cfaviourties[index].image,height: 70,width: 70,),
				// 								 title: Text(cfaviourties[index].p_title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
				// 								 subtitle: Text(cfaviourties[index].description,style: TextStyle(fontSize: 11),),
				// 								 trailing: Icon(Icons.favorite,color: Colors.red,),
				// 								 textColor: Colors.black,
				// 								 onTap: () {
				// 									 Navigator.push(
				// 										 context,
				// 										 MaterialPageRoute(
				// 											 builder: (context) => DetailscreenFaviourties(cfaviourties: cfaviourties[index]),
				// 										 ),
				// 									 );
				// 								 },
			 //
				// 								 //dense: true,
				// 							 ),
				// 						 ),
				// 					 ),
				// 				 ),
				// 			 ],
				// 		 );
				// 	 },
				//  ),
			 //),
			
		],
	),
	);
}
}
