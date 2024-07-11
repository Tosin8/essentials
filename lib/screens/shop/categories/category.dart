import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold( 
appBar: PreferredSize(
  
  preferredSize: const Size.fromHeight(50),
 child: 
 AppBar(
  automaticallyImplyLeading: false,
  title: const Text('Category',), 
  ), 
  ),
  body: Column(
    children: [
      Container(
decoration: const BoxDecoration(
  image: DecorationImage(
    image: NetworkImage('https://unsplash.com/photos/assorted-color-shirt-hanging-beside-wall-DqJMxq5ZDqA'), fit: BoxFit.cover), 
),
child: Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(colors:[
      Colors.black, Colors.transparent, Colors.transparent
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
  ),
  child: Text('Clothes', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
),
      )
    ],
  ),
  ), 
);
  }
}
