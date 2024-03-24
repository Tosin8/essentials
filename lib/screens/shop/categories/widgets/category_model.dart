// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CategoryScreen {
  String title;
  String subTitle; 
  ImageProvider image; 
  CategoryScreen({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}


List categories = [
  CategoryScreen(
    title: 'T- SHIRTS',
    subTitle: '100 Products',
    image: NetworkImage('https://picsum.photos/200'),
  ),
  CategoryScreen(
    title: 'SHOES',
    subTitle: '182 Products',
    image: NetworkImage('https://picsum.photos/200'),
  ),
  CategoryScreen(
    title: 'FRAGNANCE',
    subTitle: '86 PRODUCTS',
    image: NetworkImage('https://picsum.photos/200'),
  ),
  CategoryScreen(
    title: 'MAKE UPS',
    subTitle: '47 PRODUCTS',
    image: NetworkImage('https://picsum.photos/200'),
  ),
  
]; 