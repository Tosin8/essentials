

import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: () {
        
      },
      child: Container(
        width: double.infinity, 
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black, 
        ),
        child: const Align(child: Text('Login ', style: TextStyle(color: Colors.white, fontSize: 20),)),
      ),
    );
  }
}