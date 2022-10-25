
import 'package:flutter/material.dart';

//* Colors
const Color primaryColor = Color(0xffF05A25);
const Color primaryBgColor= Color(0xfffffffe);
const Color grayColor = Color(0xffE2E0DF);
const Color grayColor2 = Color(0xff808080);
const Color purpleColor = Color(0xffB5428C);
const Color orangeColor =  Colors.orange;

//* Font Size
const double largeTitleFontSize= 20;
const double titleFontSize=18;



TextStyle bodyText(Color? color , {bool isCode = false , bool isNote = false}) {
  return TextStyle(
    fontFamily: 'Droid-Arabic-Kufi',
    fontStyle: FontStyle.normal,
    fontWeight: isCode ? FontWeight.w500: FontWeight.w400,
    fontSize: isNote ? 22 : 16,
    color: color,
  );
}
