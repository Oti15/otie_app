
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

//* Is waitint buttom
RxBool isWaite = false.obs;

//* Url
const BaseUrl = "https://otie-app.herokuapp.com";

//* Token
// ignore: non_constant_identifier_names
String Token =("No Token Yet");

//* user info
late RxString name = "".obs;
late RxString phoneNumberl = "".obs;
late RxString location="".obs;




//* Colors
const Color primaryColor = Color(0xffF05A25);
const Color primaryBgColor= Color(0xfffffffe);
const Color grayColor = Color(0xffE2E0DF);
const Color grayColor2 = Color(0xff808080);
const Color grayColor3 = Color(0xff9A9A9A);
const Color purpleColor = Color(0xffB5428C);
const Color orangeColor =  Colors.orange;

//* Font Size
const double xLargeTitleFontSize= 22;
const double largeTitleFontSize= 20;
const double titleFontSize=18;
const double primaryFontSize=16;
const double smallFontSize=14;
const double xSmallFontSize=12;


//* Icons Size
const double iconSize1=40;
const double iconSize2=24;
const double iconSize3=16;

//* Font family
const  primaryFont = 'Bold';



TextStyle bodyText(Color? color , {bool isCode = false , bool isNote = false}) {
  return TextStyle(
    fontFamily: 'Droid-Arabic-Kufi',
    fontStyle: FontStyle.normal,
    fontWeight: isCode ? FontWeight.w500: FontWeight.w400,
    fontSize: isNote ? 22 : 16,
    color: color,
  );

}

TextStyle titleTextStyle(){
  return const TextStyle(
      color: Colors.black,
      fontSize: titleFontSize,
      fontWeight: FontWeight.bold);
}