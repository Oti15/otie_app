import 'package:shared_preferences/shared_preferences.dart';

void updateSeen() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool("seen", true);
}