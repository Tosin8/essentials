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

// class ParallaxFlowDelegate extends FlowDelegate {
//   ParallaxFlowDelegate();
//   @override
//   void paintChildren(FlowPaintingContext context) {
//     // TODO: implement paintChildren
//   } 

//   @override
//   bool shouldRepaint(covariant FlowDelegate oldDelegate) {
//     // TODO: implement shouldRepaint
//     return false;
//   }

//   @override
//   bool shouldRebuildSemantics(covariant FlowDelegate oldDelegate) {
//     // TODO: implement shouldRebuildSemantics
//     return false;
//   }

//   @override
//   Size getSize(BoxConstraints constraints) {
//     // TODO: implement getSize
//     return Size(constraints.maxWidth, constraints.maxHeight);
//   }

//   @override
//   BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
//     // TODO: implement getConstraintsForChild
//     return BoxConstraints.loose(constraints.biggest);
//   }

// }



// // gradient
//   // foregroundDecoration: BoxDecoration(
//   //             borderRadius: BorderRadius.circular(15),
//   //                     gradient: const LinearGradient(colors:[
//   //             Colors.black, Colors.transparent, Colors.transparent
//   //                     ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
//   //                   ),



import 'package:flutter/material.dart';
 // Import the custom delegate

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
        body: SingleChildScrollView(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Flow(
                      delegate: ParallaxFlowDelegate(
                        scrollable: Scrollable.of(context)!,
                        listItemContext: context,
                        backgroundImage: categories[index].image,
                      ),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: categories[index].image,
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
                                  categories[index].title,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  categories[index].subTitle,
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
            },
          ),
        ),
      ),
    );
  }
}
