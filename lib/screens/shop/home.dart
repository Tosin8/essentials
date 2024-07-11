import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


appBar: PreferredSize(
  
  preferredSize: Size.fromHeight(50),
 child: 
 AppBar(
  automaticallyImplyLeading: false,
  title: Text('Essentials',), 
  actions: [
    IconButton(onPressed: (){}, 
    icon: Icon(Iconsax.notification,
     color: Colors.black,))
  ],)),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              
              
            ], 
                
                ),
        )
    ));
  }
}