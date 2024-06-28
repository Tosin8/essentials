// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:essentials/screens/shop/categories/widgets/category_model.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Category'),

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ProductCard(categories: categories),
      )

    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
     this.title, this.subTitle, this.image,
    required this.categories,
  }) : super(key: key);

final CategoryScreen categories; 
final title; 
final subTitle;
final image;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Padding(
        padding:  const EdgeInsets.only(left: 8.0, right: 20.0),
        child: Column(
          children: [
            Container(
              height: 200, 
              width: 375,  
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: (categories[0].image), fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Colors.transparent, 
                    Colors.grey.withOpacity(0.7), 
              
                  ], 
                  begin: Alignment.bottomLeft, 
                  end: Alignment.topRight, 
                  ), 
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text( categories[0].title, style: const TextStyle(color: Colors.white,
                      letterSpacing: 1.5,
                       fontSize: 18),),
                      Text(categories[0].subTitle, style: const TextStyle(color: Colors.white,
                      letterSpacing: 1.2,
                       fontSize: 14, fontWeight: FontWeight.w400),),  
                     
                       const SizedBox(height: 10,), 
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
