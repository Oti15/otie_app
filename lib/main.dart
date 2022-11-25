import 'package:flutter/material.dart';
import 'package:otie_app/view/OnBoarding/onbording_screen.dart';
import 'package:otie_app/view/booking/view.dart';
import 'package:otie_app/view/delivery_review/rate.dart';
import 'package:otie_app/view/home_clening/view1.dart';
import 'package:otie_app/view/home_clening/view2.dart';
import 'package:otie_app/view/home_clening/view3.dart';
import 'package:otie_app/view/home_page/home_page.dart';
import 'package:otie_app/view/splash_screen/splash_screen.dart';
import 'package:otie_app/view/washing_and_cleaning/washing_and_cleaning.dart';

import 'auth/SignUP.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
    );
  }
}
