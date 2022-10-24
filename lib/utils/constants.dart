
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

TextStyle h5(Color? color) {
  return TextStyle(
    fontFamily: 'Droid-Arabic-Kufi',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: color,
  );
}

TextStyle h6(Color? color) {
  return TextStyle(
    fontFamily: 'Droid-Arabic-Kufi',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: color,
  );
}

TextStyle h7(Color? color) {
  return TextStyle(
    fontFamily: 'Droid-Arabic-Kufi',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: color,
  );
}

TextStyle h8(Color? color) {
  return TextStyle(
    fontFamily: 'Droid-Arabic-Kufi',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: color,
  );
}

TextStyle bodyTextTablet(Color? color , double size,{bool isCode = false }) {
  return TextStyle(
    fontFamily: 'Droid-Arabic-Kufi',
    fontStyle: FontStyle.normal,
    fontWeight: isCode ? FontWeight.w500: FontWeight.w400,
    fontSize: size,
    color: color,
  );
}

TextStyle h5Tablet(Color? color) {
  return TextStyle(
    fontFamily: 'Droid-Arabic-Kufi',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: color,
  );
}

TextStyle h6Tablet(Color? color) {
  return TextStyle(
    fontFamily: 'Droid-Arabic-Kufi',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: color,
  );
}

TextStyle h7Tablet(Color? color) {
  return TextStyle(
    fontFamily: 'Droid-Arabic-Kufi',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: color,
  );
}

TextStyle h8Tablet(Color? color) {
  return TextStyle(
    fontFamily: 'Droid-Arabic-Kufi',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: color,
  );
}



//* Input Padding
const inputPadding = EdgeInsets.symmetric(vertical: 8, horizontal: 10);

