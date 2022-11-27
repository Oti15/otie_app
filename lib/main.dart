import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:otie_app/view/OnBoarding/onbording_screen.dart';
import 'package:otie_app/view/home_page/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? seen = prefs.getBool("seen");
  Widget _screen;
  if (seen == null || seen == false) {
    _screen = Onbording();
  } else {
    _screen = HomePage();
  }
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', ''),
        Locale('ar', ''),
      ],
      path: 'assets/translations',
      fallbackLocale: Locale('en', ''),
      child:  MyApp(Screen: _screen,),
    ),
  );
}

class MyApp extends StatelessWidget {
   MyApp({Key? key, required this.Screen}) : super(key: key);
   Widget Screen;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen,
    );
  }
}
