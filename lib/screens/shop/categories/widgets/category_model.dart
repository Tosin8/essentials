import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final String subTitle;
  final ImageProvider image;
  final VoidCallback onTap;
  final GlobalKey _backgroundImageKey = GlobalKey();

  CategoryModel({
    required this.title,
    required this.subTitle,
    required this.image,
    required this.onTap,
  });
}

List<CategoryModel> categories = [
  CategoryModel(
    title: 'Clothes',
    subTitle: '100 Products',
    image: const AssetImage('assets/images/category/1.jpg'),
    onTap: () {},
  ),
  CategoryModel(
    title: 'Perfumes',
    subTitle: '60 Products',
    image: const AssetImage('assets/images/category/2.jpg'),
    onTap: () {},
  ),
  CategoryModel(
    title: 'Shoes',
    subTitle: '152 Products',
    image: const AssetImage('assets/images/category/3.jpg'),
    onTap: () {},
  ),
  CategoryModel(
    title: 'Cosmetics',
    subTitle: '80 Products',
    image: const AssetImage('assets/images/category/4.jpg'),
    onTap: () {},
  ),
  CategoryModel(
    title: 'Sunglasses',
    subTitle: '100 Products',
    image: const AssetImage('assets/images/category/5.jpg'),
    onTap: () {},
  ),
  CategoryModel(
    title: 'WristWatches',
    subTitle: '100 Products',
    image: const AssetImage('assets/images/category/6.jpg'),
    onTap: () {},
  ),
  CategoryModel(
    title: 'Bags',
    subTitle: '100 Products',
    image: const AssetImage('assets/images/category/7.jpg'),
    onTap: () {},
  ),
  CategoryModel(
    title: 'Accessories',
    subTitle: '100 Products',
    image: const AssetImage('assets/images/category/8.jpg'),
    onTap: () {},
  ),
];
