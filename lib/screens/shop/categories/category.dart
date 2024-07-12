import 'package:flutter/material.dart';

import 'widgets/category_model.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold( 
appBar: PreferredSize(
  
  preferredSize: const Size.fromHeight(50),
 child: 
 AppBar(
  automaticallyImplyLeading: false,
  title: const Text('Category',), 
  ), 
  ),
  body: SingleChildScrollView(
    
   
       child:   ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: categories.length,
            itemBuilder: (context, index) => 
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector( 
              onTap: (){},
              child: Container(
                
                width: double.infinity, 
                 height: 200,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    image:   DecorationImage(
                       //image: AssetImage('assets/images/category/1.jpg'),
                       image: categories[index].image,
                     
                    
                       fit: BoxFit.cover), 
                       
                    ),
                    foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(colors:[
              Colors.black, Colors.transparent, Colors.transparent
                      ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                    ),
                  
                     child:  Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(categories[index].title,
                 style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),), 
                Text(categories[index].subTitle,
                 style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
                const SizedBox(height: 20,), 
              ],
                       ),
                     ),
                    
                    ),
            ),
          ),
      //),
          )   
       // ],
      ),
    ),
  //),
  
);
  }
}
