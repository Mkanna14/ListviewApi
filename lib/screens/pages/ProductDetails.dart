// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:test_app/model/product.dart';

// class ProductDetails extends StatelessWidget {
//   const ProductDetails({super.key, required this.product});
//   final Product product;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.blueGrey,
//         appBar: AppBar(),
//         body: Column(
//           children: [
//             SvgPicture.asset(
//               product.image,
//               height: MediaQuery.of(context).size.height * 0.4,
//             ),
//             Expanded(
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         topRight: Radius.circular(20))),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         children: [
//                           Text(
//                             'Price',
//                             style: TextStyle(fontSize: 23),
//                           ),
//                           SizedBox(width: ,)
//                           Text(
//                             '\$' + product.price.toString(),
//                             style: TextStyle(fontSize: 20),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           product.title,
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 40),
//                         ),
//                         SizedBox(
//                           width: 30,
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: Text(
//                         'By clicking the ListView item it opens a new window and shows all user details on that screen. Also using the search bar we can filter the ListView according to the user name and user job title. Additionally, by creating this project you can have some idea about how to use the ListTitle widget, Hero Animations, Lottie Animations, and Url Launcher.',
//                         style: TextStyle(fontSize: 17),
//                       ),
//                     ),
//                     OutlinedButton(
//                       onPressed: () {},
//                       child: Text('Add To Cart'),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ));
//   }
// }
