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
    title: 'Category 1',
    subTitle: 'Sub Category 1',
    image: NetworkImage('https://picsum.photos/200'),
  ),
  CategoryScreen(
    title: 'Category 2',
    subTitle: 'Sub Category 2',
    image: NetworkImage('https://picsum.photos/200'),
  ),
  CategoryScreen(
    title: 'Category 3',
    subTitle: 'Sub Category 3',
    image: NetworkImage('https://picsum.photos/200'),
  ),
  CategoryScreen(
    title: 'Category 4',
    subTitle: 'Sub Category 4',
    image: NetworkImage('https://picsum.photos/200'),
  ),
  CategoryScreen(
    title: 'Category 5',
    subTitle: 'Sub Category 5',
    image: NetworkImage('https://picsum.photos/200'),     
  ),
]; 