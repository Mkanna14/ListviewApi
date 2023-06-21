import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:http/http.dart' as http;

import 'package:test_app/screens/category/categories.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  List<dynamic> users = [];

  void UsersList() async {
    const url = 'https://dummyjson.com/products';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['products'];
      // print(users);
    });
  }

  @override
  void initState() {
    UsersList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 70),
              child: Row(
                children: [
                  Container(
                      height: 55,
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                            ),
                            hintText: 'Search',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Badge(
                    label: Text("3+"),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_bag,
                          size: 35,
                        )),
                  )
                ],
              ),
            ),
            Catageries(),
            Text(
              'Best Offers',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimationLimiter(
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: users.length,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) {
                      return AnimationConfiguration.staggeredGrid(
                        position: index,
                        columnCount: 2,
                        duration: Duration(milliseconds: 3000),
                        child: ScaleAnimation(
                          child: FadeInAnimation(
                            child: Container(
                              height: 400,
                              padding: EdgeInsets.all(10),
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(color: Colors.grey)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Color(0xffefeff2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Container(
                                          height: 75,
                                          child: Image.network(
                                              users[index]['thumbnail']))),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Expanded(
                                      child: Center(
                                          child: Text(users[index]['title']))),
                                  Row(
                                    children: [
                                      Text('\$' +
                                          users[index]['price'].toString()),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('MRP'),
                                      Text(
                                        '\$' + users[index]['price'].toString(),
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            decorationColor: Colors.black),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                          ),
                                          Text(
                                              users[index]['rating'].toString())
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
