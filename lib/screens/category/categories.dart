import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/model/category.dart';

class Catageries extends StatelessWidget {
  const Catageries({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              topCategories.length,
              (index) => Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    child: category(
                        icon: topCategories[index].icon,
                        title: topCategories[index].title,
                        press: () {}),
                  ))),
    );
  }
}

class category extends StatelessWidget {
  category({required this.icon, required this.title, required this.press});
  final String icon, title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)))),
        onPressed: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Column(
            children: [
              Container(
                height: 40,
                width: 30,
                child: SvgPicture.asset(
                  icon,
                  color: Color.fromARGB(400, 100, 10, 146),
                ),
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ));
  }
}
