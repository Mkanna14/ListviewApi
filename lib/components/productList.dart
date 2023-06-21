// import 'dart:convert';
// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:test_app/components/productDesign.dart';
// import 'package:test_app/model/product.dart';
// import 'package:test_app/screens/pages/ProductDetails.dart';
// import 'package:http/http.dart' as http;

// class Productdummy extends StatefulWidget {
//   Productdummy({
//     super.key,
//   });

//   @override
//   State<Productdummy> createState() => _ProductdummyState();
// }

// class _ProductdummyState extends State<Productdummy> {
//   List<dynamic> users = [];

//   void UsersList() async {
//     const url = 'https://dummyjson.com/products';
//     final uri = Uri.parse(url);
//     final response = await http.get(uri);
//     final body = response.body;
//     final json = jsonDecode(body);
//     setState(() {
//       users = json['products'];
//       print(users);
//     });
//   }

//   @override
//   void initState() {
//     UsersList();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           'Best Offers',
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 5, right: 5),
//           child: GridView.builder(
//               itemCount: users.length,
//               scrollDirection: Axis.vertical,
//               shrinkWrap: true,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   // childAspectRatio: 3 / 2,
//                   crossAxisSpacing: 15,
//                   mainAxisSpacing: 40),
//               itemBuilder: (context, index) {
//                 return ProducuctDesign(
//                     image: users[index]['thumbnail'],
//                     title: users[index]['title'],
//                     bgcolor: Color(0xffefeff2),
//                     price: users[index]['price'],
//                     press: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => ProductDetails(
//                                     product: ListProduct[index],
//                                   )));
//                     });
//               }),
//         )
//       ],
//     );
//   }
// }
