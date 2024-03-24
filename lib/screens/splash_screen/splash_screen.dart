import 'package:essentials/screens/constant.dart';
import 'package:essentials/screens/splash_screen/widgets/image_list_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [

          // Image Transition 
const Positioned(
  top: -10, 
  left: -150, 
  child: Row(
    
    children: [
// ImageListView(startIndex: 0), 
// ImageListView(startIndex: 1), 
// ImageListView(startIndex: 2), 
ImageListView(), 
ImageListView(), 
ImageListView(), 

    ],
    ), 
    ), 

    // title 
  Positioned(
    top: MediaQuery.of(context).size.height * 0.8, 
    child: const Text('Essentials', style: kTitleStyle,))          
        ],
      )
    );
  }
}