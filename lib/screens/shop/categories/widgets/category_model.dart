// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryScreen {
  String title;
  String subTitle; 
  ImageProvider image; 
  VoidCallback onTap; 
  CategoryScreen({
    required this.title,
    required this.subTitle,
    required this.image,
    required this.onTap,
  });
}


List categories =  [
  CategoryScreen(
    title: 'Clothes',
    subTitle: '100 Products',
    image: const AssetImage('assets/images/category/1.jpg'), 
    onTap: () {  }, 
  ),
 CategoryScreen(
    title: 'Perfumes',
    subTitle: '100 Products',
    image: const AssetImage('assets/images/category/2.jpg'), 
    onTap: () {  }, 
  ),
  CategoryScreen(
    title: 'Shoes',
    subTitle: '100 Products',
    image: const AssetImage('assets/images/category/3.jpg'), 
    onTap: () {  }, 
  ),
  CategoryScreen(
    title: 'Cosmetics',
    subTitle: '100 Products',
    image: const AssetImage('assets/images/category/4.jpg'), 
    onTap: () {  }, 
  ),CategoryScreen(
    title: 'Sunglasses',
    subTitle: '100 Products',
    image: const AssetImage('assets/images/category/5.jpg'), 
    onTap: () {  }, 
  ),CategoryScreen(
    title: 'WristWatches',
    subTitle: '100 Products',
    image: const AssetImage('assets/images/category/6.jpg'), 
    onTap: () {  }, 
  ),CategoryScreen(
    title: 'Bags',
    subTitle: '100 Products',
    image: const AssetImage('assets/images/category/7.jpg'), 
    onTap: () {  }, 
  ),CategoryScreen(
    title: 'Accessories',
    subTitle: '100 Products',
    image: const AssetImage('assets/images/category/8.jpg'), 
    onTap: () {  }, 
  ),
]; 