// import 'package:flutter/material.dart';

// import 'widgets/category_model.dart';

// class CategoryScreen extends StatelessWidget {
//   const CategoryScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold( 
// appBar: PreferredSize(
  
//   preferredSize: const Size.fromHeight(50),
//  child: 
//  AppBar(
//   automaticallyImplyLeading: false,
//   title: const Text('Category',), 
//   ), 
//   ),
//   body: SingleChildScrollView(
    
   
//        child:   ListView.builder(
//             physics: const NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             scrollDirection: Axis.vertical,
//             itemCount: categories.length,
//             itemBuilder: (context, index) => 
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: GestureDetector( 
//               onTap: (){},
//               child: Container(
                
//                 width: double.infinity, 
//                  height: 200,
//                     decoration:  BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                     // image:   DecorationImage(
                 
//                     //    image: categories[index].image,
                     
                    
//                     //    fit: BoxFit.cover), 
                       
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(15),
//                       child:  Stack(
//                         children: [

//                           // parallax image
//                           _buildParallaxBackground(context), 
//                           _buildGradient(), 
//                           _buildInfo(), 
//                           Image.asset(categories[index].image), 
//                           Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(categories[index].title,
//                  style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),), 
//                 Text(categories[index].subTitle,
//                  style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
//                 const SizedBox(height: 20,), 
//               ],
//                        ),
                     


//                         ],
//                       )
                      
//                     ), 
                  
                  
                      
                    
//                     ),
//             ),
//           ),
//       //),
//           )   
//        // ],
//       ),
      
//     ),
//   //),
  
// );
//   }
  
//   _buildParallaxBackground(BuildContext context) {
//     return Flow(
//       delegate: ParallaxFlowDelegate(
     
//     ), 
//     children: [
//       Image.asset(categories[0].image, fit: BoxFit.cover,),
  
//     ],);
//   }
// }

// import 'package:flutter/material.dart';
//  // Import the custom delegate

// import 'widgets/category_model.dart';
// import 'widgets/parallax.dart';

// class CategoryScreen extends StatelessWidget {
//   const CategoryScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(50),
//           child: AppBar(
//             automaticallyImplyLeading: false,
//             title: const Text('Category'),
//           ),
//         ),
//         body: ListView.builder(
//           itemCount: categories.length,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: GestureDetector(
//                 onTap: () {},
//                 child: Container(
//                   width: double.infinity,
//                   height: 200,
//                   child: Flow(
//                     delegate: ParallaxFlowDelegate(
//                       scrollable: Scrollable.of(context)!,
//                       listItemContext: context,
//                       backgroundImage: categories[index].image,
//                     ),
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(15),
//                           image: DecorationImage(
//                             image: categories[index].image,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(15),
//                           gradient: const LinearGradient(
//                             colors: [
//                               Colors.black,
//                               Colors.transparent,
//                               Colors.transparent,
//                             ],
//                             begin: Alignment.bottomCenter,
//                             end: Alignment.topCenter,
//                           ),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 categories[index].title,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               Text(
//                                 categories[index].subTitle,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               const SizedBox(height: 20),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'widgets/category_model.dart';
import 'widgets/parallax.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Category'),
          ),
        ),
        body: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryListItem(
              category: categories[index],
            );
          },
        ),
      ),
    );
  }
}

class CategoryListItem extends StatelessWidget {
  final CategoryModel category;
  final GlobalKey _backgroundImageKey = GlobalKey();

   CategoryListItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: category.onTap,
        child: Container(
          width: double.infinity,
          height: 200,
          child: Flow(
            delegate: ParallaxFlowDelegate(
              scrollable: Scrollable.of(context)!,
              listItemContext: context,
             // backgroundImage: category.image,
               backgroundImageKey: _backgroundImageKey,
            ),
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: category.image,
                  
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.transparent,
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        category.subTitle,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}