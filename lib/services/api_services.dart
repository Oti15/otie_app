import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../view/home_page/home_page.dart';
import 'package:http/http.dart' as http;

// ignore: constant_identifier_names
const BaseUrl ="https://otie-app.herokuapp.com";



void signIn({
  required phone_num,
  required password,
}) async {
  var url = Uri.parse('https://otie-app.herokuapp.com/user/login');
  var response = await http.post(url, body: {
    "password": password.text,
    'phoneNumber': phone_num.text,
  });
  if (response.statusCode == 200) {
    print(" OK 200");
    Get.to(HomePage());
  } else {
    print(response.statusCode);
    print(" ERORR 401");
  }
}

void signUp({
  required username,
  required password,
  required location,
  required phone_num,
}) async {
  var url = Uri.parse('https://otie-app.herokuapp.com/user/signup');
  var response = await http.post(url, body: {
    "fullName": username.text,
    "password": password.text,
    'province': location.text,
    'phoneNumber': phone_num.text
  });
  if (response.statusCode == 200) {
    print(" OK 200");
    Get.to(HomePage());
  } else {
    print(response.statusCode);
    print(" ERORR 404");
  }
}
