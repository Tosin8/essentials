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
    top: MediaQuery.of(context).size.height * 0.08, 
    child: const Text('Essentials',
    textAlign: TextAlign.center,
     style: kTitleStyle,), 
     ), 

// Information Screen

     Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.60,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent, 
              Colors.white60, 
              Colors.white, 
              Colors.white, 
            ], 
            begin: Alignment.topCenter, end: Alignment.center, 
            ), 
      ), 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Your Appearance \nShows Your Quality',
           style: kNormalStyle.copyWith(fontSize: 25), textAlign: TextAlign.center,),
           const SizedBox(height : 30), 
           Text('Change the Quality of Your \nAppearance With Essentials',
           style: kNormalStyle.copyWith(fontSize: 15, color: Colors.grey,
            height: 1.3), textAlign: TextAlign.center,),
        ],
      ),
      )          
        
      )
    ]));
  }
}