// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SplashProduct {

  ImageProvider image;
  SplashProduct({
    
    required this.image,
  });
}


List <SplashProduct> splashProducts = [
  SplashProduct(
    
    image: const AssetImage('assets/images/splash/1.jpg'),
  ),
  SplashProduct(
  
    image: const AssetImage('assets/images/splash/2.jpg'),
  ),
  SplashProduct(
  
    image: const AssetImage('assets/images/splash/3.jpg'),
  ),
  SplashProduct(
    
    image: const AssetImage('assets/images/splash/4.jpg'),
  ),
  SplashProduct(
  
    image: const AssetImage('assets/images/splash/5.jpg'),

  ), 
]; 