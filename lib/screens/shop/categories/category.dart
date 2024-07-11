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
  body: Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [
        Container(
          
          width: double.infinity, 
           height: 200,
    decoration:  BoxDecoration(
      borderRadius: BorderRadius.circular(15),
    image: const DecorationImage(
       image: AssetImage('assets/images/category/1.jpg'),
    
       fit: BoxFit.cover), 
    ),
    child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      gradient: const LinearGradient(colors:[
        Colors.black, Colors.transparent, Colors.transparent
      ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
    ),
     child: const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Clothes', style: TextStyle(color: Colors.white, fontSize: 18),)
      ],
     ),
    
    ),
    ),
        
      ],
    ),
  ),
  ), 
);
  }
}
