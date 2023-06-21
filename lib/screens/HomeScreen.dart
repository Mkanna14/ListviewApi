import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> users = [];

  void UsersList() async {
    const url = 'https://dummyjson.com/products';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['products'];
      print(users);
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
        appBar: AppBar(
          title: Text("TestingApp"),
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Mobile',
                          style: TextStyle(fontSize: 20),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Laptop',
                          style: TextStyle(fontSize: 20),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Fragrance',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Grocery',
                          style: TextStyle(fontSize: 20),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'skincare',
                          style: TextStyle(fontSize: 20),
                        )),
                  ],
                ),
              ),
              AnimationLimiter(
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: Duration(milliseconds: 400),
                        child: SlideAnimation(
                          verticalOffset: 150,
                          child: FadeInAnimation(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey),
                                height: 400,
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => null()));
                                  },
                                  child: Card(
                                    shadowColor: Colors.black,
                                    color: Color(0xff484A59),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Image.network(
                                            users[index]['thumbnail'],
                                            height: 200,
                                            width: 150,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Text(
                                            users[index]['title'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text('€',
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange)),
                                            Text(
                                              users[index]['discountPercentage']
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: 40,
                                                  color: Colors.orange),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Row(
                                              children: [
                                                Text('MRP: ',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.orange,
                                                    )),
                                                Text('€',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.orange,
                                                    )),
                                                Text(
                                                  users[index]['price']
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      color: Colors.orange,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      decorationColor:
                                                          Colors.white),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 20,
                                            top: 1,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.yellow,
                                                    size: 27,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    users[index]['rating']
                                                        .toString(),
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios))
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
