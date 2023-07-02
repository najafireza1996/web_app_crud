import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    super.key,
    this.color = Colors.white,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: LoadingAnimationWidget.horizontalRotatingDots(
      color: color,
      size: 50,
    ));
  }
}
