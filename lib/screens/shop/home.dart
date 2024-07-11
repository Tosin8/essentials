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
  
  preferredSize: const Size.fromHeight(50),
 child: 
 AppBar(
  automaticallyImplyLeading: false,
  title: const Text('Essentials',), 
  actions: [
    IconButton(onPressed: (){}, 
    icon: const Icon(Iconsax.notification,
     color: Colors.black,))
  ],)),
        body: const Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            children: [
              
              
            ], 
                
                ),
        )
    ));
  }
}