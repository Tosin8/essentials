import 'package:flutter/material.dart';

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

        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              
              Text('Essential', 
              style: TextStyle(fontSize: 18, 
              fontWeight: FontWeight.bold),)
            ], 
                
                ),
        )
    ));
  }
}