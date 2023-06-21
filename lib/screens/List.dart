// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';


// class MyWidget extends StatefulWidget {
//   MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   List<String> selectedCategories = [];

//   final List<String> Categories = [
//     'smartphones',
//     'laptops',
//     'fragrances',
//     'skincare',
//     'groceries',
//     'home-decoration'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final filterProducts = Product(name: 'name', category: "category");
//     return Scaffold(
//         appBar: AppBar(),
//         body: Container(
//           alignment: Alignment.topCenter,
//           padding: const EdgeInsets.all(8.0),
//           child: Wrap(
//             spacing: 8.0,
//             runSpacing: 4.0,
//             children: List<Widget>.generate(
//               Categories.length,
//               (int index) {
//                 return FilterChip(
//                   label: Text(Categories[index]),
//                   selected: selectedCategories.contains(Categories[index]),
//                   onSelected: (bool selected) {
//                     setState(() {
//                       if (selected) {
//                         selectedCategories.add(Categories[index]);
//                       } else {
//                         selectedCategories.remove(Categories[index]);
//                       }
//                     });
//                   },
//                 );
//               },
//             ).toList(),
//           ),
//         ));
//   }
// }
