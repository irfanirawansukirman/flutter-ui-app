import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {this.image,
      this.title,
      this.description,
      this.price,
      this.size,
      this.id,
      this.color});
}

List<Product> products = [
  Product(
      image: 'assets/images/bag_1.png',
      title: 'Nike super power #1',
      description: dummyText,
      price: 150,
      size: 41,
      id: 1,
      color: Color(0xFF3D82AE)),
  Product(
      image: 'assets/images/bag_1.png',
      title: 'Nike super power #2',
      description: dummyText,
      price: 160,
      size: 41,
      id: 2,
      color: Color(0xFFD3A984)),
  Product(
      image: 'assets/images/bag_1.png',
      title: 'Nike super power #3',
      description: dummyText,
      price: 170,
      size: 41,
      id: 3,
      color: Color(0xFF989493)),
  Product(
      image: 'assets/images/bag_1.png',
      title: 'Nike super power #4',
      description: dummyText,
      price: 180,
      size: 41,
      id: 4,
      color: Color(0xFFE6B398)),
  Product(
      image: 'assets/images/bag_1.png',
      title: 'Nike super power #5',
      description: dummyText,
      price: 190,
      size: 41,
      id: 5,
      color: Color(0xFFFB7883)),
  Product(
      image: 'assets/images/bag_1.png',
      title: 'Nike super power #6',
      description: dummyText,
      price: 200,
      size: 41,
      id: 6,
      color: Color(0xFFAEAEAE))
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

