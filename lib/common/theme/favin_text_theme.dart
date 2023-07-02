import 'package:flutter/material.dart';
import 'package:flutter_test_favin/common/theme/color/color_palette.dart';
import 'package:flutter_test_favin/common/theme/color/iColor_theme.dart';
import 'package:get_it/get_it.dart';
double bodyFixedZoom = 0;
double captionFixedZoom = 0;
double tagLineFixedZoom = 0;
double headLineFixedZoom = 0;

class FavinTextTheme {

  static TextStyle reg14 = TextStyle(
    fontSize: 14 + bodyFixedZoom,
    fontWeight: FontWeight.w400,
    fontFamily: "IRANSans",
  );
  static TextStyle reg13 = TextStyle(
    fontSize: 13 + bodyFixedZoom,
    fontWeight: FontWeight.w400,
    fontFamily: "IRANSans",
  );
  static TextStyle reg12 = TextStyle(
    fontSize: 12 + bodyFixedZoom,
    fontWeight: FontWeight.w400,
    fontFamily: "IRANSans",
  );
  static TextStyle reg11 = TextStyle(
    fontSize: 11 + bodyFixedZoom,
    fontWeight: FontWeight.w400,
    fontFamily: "IRANSans",
  );

  static const TextStyle bold22 = TextStyle(
    fontSize: 22 ,
    fontWeight: FontWeight.w700,
    fontFamily: "SFPRODISPLAY",
  );
}
