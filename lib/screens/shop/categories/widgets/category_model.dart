// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryScreen {
  String title;
  String subTitle; 
  ImageProvider image; 
  GestureTapCallback press; 
  CategoryScreen({
    required this.title,
    required this.subTitle,
    required this.image,
    required this.press,
  });
}


List categories = [
  CategoryScreen(
    title: 'T- SHIRTS',
    subTitle: '100 Products',
    image: AssetImage('assets/images/category/1.jpg'), 
    press: (){},
  ),
  CategoryScreen(
    title: 'SHOES',
    subTitle: '182 Products',
    image: NetworkImage('https://picsum.photos/200'), press: () {  },
  ),
  CategoryScreen(
    title: 'FRAGNANCE',
    subTitle: '86 PRODUCTS',
    image: NetworkImage('https://picsum.photos/200'), press: () {  },
  ),
  CategoryScreen(
    title: 'MAKE UPS',
    subTitle: '47 PRODUCTS',
    image: NetworkImage('https://picsum.photos/200'), press: () {  },
  ),
  
]; 