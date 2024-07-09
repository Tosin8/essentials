import 'package:flutter/material.dart';

import '../images.dart';

class SocialBtn extends StatelessWidget {

   SocialBtn({
    required this.socialicons,
    required this.onTap, 
    super.key,
  });

VoidCallback? onTap;
Image socialicons; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: onTap, 
      child: Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Image.asset(socialicons, height: 50, width: 50,),
      ),
    );
  }
}