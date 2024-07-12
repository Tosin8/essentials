import 'package:flutter/material.dart';

class ParallaxFlowDelegate extends FlowDelegate {
  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final ImageProvider backgroundImage;

  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImage,
  }) : super(repaint: scrollable.position);

  @override
  void paintChildren(FlowPaintingContext context) {
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContext.findRenderObject() as RenderBox;

    final listItemOffset = listItemBox.localToGlobal(
      listItemBox.size.centerLeft(Offset.zero),
      ancestor: scrollableBox,
    );

    final viewportDimension = scrollable.position.viewportDimension;
    final scrollFraction = (listItemOffset.dy / viewportDimension).clamp(0.0, 1.0);
    final verticalAlignment = scrollFraction - 0.5;

    final imageBox = context.getChildSize(0)!;
    final imageHeight = imageBox.height;
    final listItemHeight = context.size.height;
    final childRect = Offset(0, verticalAlignment * (listItemHeight - imageHeight)) & imageBox;

    context.paintChild(0, transform: Matrix4.translationValues(0, childRect.top, 0));
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return true;
  }
}