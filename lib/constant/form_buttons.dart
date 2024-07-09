

import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {

  final VoidCallback onTap;
final String text; 
   const FormButton({
    required this.text, required this.onTap, 
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: onTap, 
      child: Container(
        width: double.infinity, 
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black, 
        ),
        child:  Align(child: Text(text, style: TextStyle(color: Colors.white, fontSize: 20),)),
      ),
    );
  }
}