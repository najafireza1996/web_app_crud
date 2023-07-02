

import 'package:flutter/material.dart';

class CustomIconRoundedButton extends StatelessWidget {
  const CustomIconRoundedButton({super.key,required this.imageIcon,this.onPressed});
  final Image imageIcon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          // border: Border.all(width: 1,color: ),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: const[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              blurStyle: BlurStyle.outer,
              spreadRadius: 0.5
            )
          ]
        ),
        child: Center(child: imageIcon),
      ),
    );
  }
}