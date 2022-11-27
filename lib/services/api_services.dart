import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../model/cart_item_model.dart';
import '../view/home_page/home_page.dart';
import 'package:http/http.dart' as http;

import 'is_waiting_buttom.dart';

// ignore: constant_identifier_names
const BaseUrl = "https://otie-app.herokuapp.com";

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
    showSnackbar_signInSuccessfully();
    isWaite.value = false;
     Get.to(HomePage());
  } else {
    print(response.statusCode);
    showSnackbar_erorrAuth();
    isWaite.value = false;
  }
}

SnackbarController showSnackbar_signInSuccessfully() {
  return Get.showSnackbar(
    GetSnackBar(
      title: "sign_in",
      message: tr('sign_in_successfully'),
      duration: Duration(seconds: 3),
    ),
  );
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
    showSnackbar_registerationSuccessfully();
    isWaite.value = false;
    Get.to(HomePage());
  } else {
    print(response.statusCode);
    showSnackbar_erorrAuth();
    isWaite.value = false;
    print(" ERORR 401");
  }
}

SnackbarController showSnackbar_registerationSuccessfully() {
  return Get.showSnackbar(
    GetSnackBar(
      title: tr("user_registration"),
      message: tr('user_registered_successfully'),
      duration: Duration(seconds: 3),
    ),
  );
}

SnackbarController showSnackbar_erorrAuth() {
  return Get.showSnackbar(
    GetSnackBar(
      title: tr("error"),
      message: tr('please_enter_correct_information'),
      duration: Duration(seconds: 3),
    ),
  );
}
