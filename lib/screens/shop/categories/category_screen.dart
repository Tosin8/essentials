import 'package:essentials/screens/shop/categories/widgets/category_model.dart';
import 'package:flutter/material.dart';

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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      categories[0].title,
                      categories[0].subTitle, 
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )

    );
  }
}