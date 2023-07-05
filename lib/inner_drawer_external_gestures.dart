import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';

// Allows to control the [InnerDrawer] bei external Widgets.
// For example, you can wrap this widget around the left or right child,
// to make it also detect the horizontal swipes and allow it to close itself
// without clicking on the main scaffold.
class InnerDrawerExternalGestures extends StatelessWidget {
  final GlobalKey<InnerDrawerState> innerDrawerKey;
  final Widget child;

  const InnerDrawerExternalGestures({
    super.key,
    required this.innerDrawerKey,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragDown: innerDrawerKey.currentState?.onHorizontalDragDown,
      onHorizontalDragUpdate:
          innerDrawerKey.currentState?.onHorizontalDragUpdate,
      onHorizontalDragEnd: innerDrawerKey.currentState?.onHorizontalDragEnd,
      child: child,
    );
  }
}
