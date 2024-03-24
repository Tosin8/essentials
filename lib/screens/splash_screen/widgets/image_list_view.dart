// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:math';

import 'package:essentials/screens/splash_screen/widgets/splash_model.dart';
import 'package:flutter/material.dart';

class ImageListView extends StatefulWidget {

  final int startIndex; 
  const ImageListView({
    super.key,
    required this.startIndex,
  });

  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
final _scrollController = ScrollController(); 

@override
  void initState() {
    
    super.initState();
    _scrollController.addListener(() { 
if(!_scrollController.position.atEdge) {
  // impliment scroll of list. 
  _autoScroll(); 
}
// adding the list
WidgetsBinding.instance.addPostFrameCallback((_) { 
  _autoScroll(); 

  //  _scrollController.jumpTo((_scrollController.position.pixels + splashProducts.length * _scrollController.position.viewportDimension) % _scrollController.position.maxScrollExtent);
});

    }); 
  }
// adding the list
    // _scrollController.jumpTo((_scrollController.position.pixels + splashProducts.length * _scrollController.position.viewportDimension) % _scrollController.position.maxScrollExtent);



void _autoScroll() {
  final currentScrollPosition = _scrollController.offset; 
  final scrollEndPosition = _scrollController.position.maxScrollExtent;
  scheduleMicrotask(() { 

    _scrollController.animateTo(
      currentScrollPosition == scrollEndPosition ? 0 : scrollEndPosition, 
      duration: const Duration(seconds: 30), 
      curve: Curves.linear, 
    ); 
  }); 



  

  
}
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.96 * pi, 
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.60, 
        height: MediaQuery.of(context).size.height * 0.60, 
        child: ListView.builder(
          controller: _scrollController, 
         // itemCount: splashProducts.length,
         itemCount: 4,
          itemBuilder:
       (context, index ) {
        return Container(
          margin: const EdgeInsets.only(
            right: 8.0, 
            left: 8.0,
            top: 10.0, 
          ), 
          height: MediaQuery.of(context).size.height * 0.40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), 
            image: DecorationImage(
              image: splashProducts[widget.startIndex + index].image, 
             // image: splashProducts[index].image, 
              fit: BoxFit.cover)
          ),
        ); 
       }),)
    );
  }
}