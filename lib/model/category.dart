import 'package:flutter/material.dart';

class Category {
  final String icon, title;

  Category({required this.icon, required this.title});
}

List<Category> topCategories = [
  Category(icon: 'assets/svg/beauty-icon.svg', title: 'SkinCare'),
  Category(icon: 'assets/svg/bunting-party-icon.svg', title: 'Decoration'),
  Category(icon: 'assets/svg/groceries-icon.svg', title: 'Groceries'),
  Category(icon: 'assets/svg/laptop.svg', title: 'Laptop'),
  Category(icon: 'assets/svg/perfume-icon.svg', title: 'Fragrance'),
  Category(icon: 'assets/svg/smartphone-icon.svg', title: 'SmartPhone'),
];
