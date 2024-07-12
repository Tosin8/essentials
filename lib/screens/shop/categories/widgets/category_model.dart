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


List categories = [
  CategoryScreen(
    title: 'T- SHIRTS',
    subTitle: '100 Products',
    image: AssetImage('assets/images/category/1.jpg'), 
    onTap: () {  }, 
  ),

  
]; 