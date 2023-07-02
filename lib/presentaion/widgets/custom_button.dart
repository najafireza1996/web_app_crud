import 'package:flutter/material.dart';
import 'package:flutter_test_favin/common/theme/color/color_palette.dart';
import 'package:flutter_test_favin/common/theme/favin_text_theme.dart';
import 'package:flutter_test_favin/presentaion/widgets/custom_progress_indicator.dart';

class CustomButtonShadowLess extends StatelessWidget {
  final String text;
  final String? imageName;
  final void Function()? onPressed;
  final bool isGray;
  final bool loading;
  final double width;
  final double height;
  final ButtonStyle? style;
  final TextStyle? fontStyle;
  final Color? loadingColor;
  final Color? buttonColor;
  final double? borderRadius;
  const CustomButtonShadowLess(
      {Key? key,
      required this.text,
      this.imageName,
      required this.onPressed,
      this.isGray = false,
      this.loading = false,
      this.height = 54,
      this.width = 306,
      this.fontStyle,
      this.style,
      this.loadingColor,
      this.buttonColor,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: style ??
            ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: buttonColor ?? ColorPalette.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    borderRadius ?? 5),
              ),
            ),
        onPressed: loading ? () {} : onPressed,
        child: loading
            ? CustomProgressIndicator(
                color: loadingColor ?? Colors.grey,
              )
            : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                   
                if(imageName!=null) Image.asset(imageName!) ,
                if(imageName!=null) const SizedBox(width: 10,),
                Text(text,
                    textAlign: TextAlign.center,
                    style: fontStyle ?? FavinTextTheme.reg14),
                    
              ],
            ),
      ),
    );
  }
}
