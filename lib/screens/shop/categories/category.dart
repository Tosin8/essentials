import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold( 
appBar: PreferredSize(
  
  preferredSize: Size.fromHeight(50),
 child: 
 AppBar(
  automaticallyImplyLeading: false,
  title: Text('Category',), 
  ), 
  ),
  body: Column(
    children: [],
  ),
  ), 
);
  }
}
