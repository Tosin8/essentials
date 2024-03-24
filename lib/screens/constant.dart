import 'package:flutter/material.dart';

const kTitleStyle = TextStyle(
  fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white, 
  letterSpacing: 1.5
); 

const kNormalStyle = TextStyle(fontSize: 25, color: Colors.black, 
height: 1.3, 
fontWeight: FontWeight.w600); 

// building the indicators
List<Widget> buildIndicators() {
  List<Widget> list = []; 
  for (int i = 0; i<4; i++) {

  list.add(i == 1 ? indicator(true) : indicator(false)); 
}
return list; 
}

Widget indicator(bool isActive) {
  return AnimatedContainer(duration: duration)
}