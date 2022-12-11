import 'dart:convert';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart';
import 'package:otie_app/services/snack_bar.dart';
import '../model/order.dart';
import '../utils/constants.dart';
import '../view/home_page/home_page.dart';
import 'package:http/http.dart' as http;

// ignore: constant_identifier_names

//* Headers of Url
// ignore: non_constant_identifier_names
String token =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2Mzg2OGZkOGMzOTM0OGU1OWNkNTRiMGUiLCJpYXQiOjE2NzA0ODUzNzMsImV4cCI6MTY3MzA3NzM3M30.ADU_z4rN5bucCMW93lnlH5l89Bzy5n_qxj4hOtn8Rmc";

////////////// headers request //////////////
final headers = {'Authorization': 'Bearer $token'};

////////////// sign in request //////////////
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
    Map<String, dynamic> map = json.decode(response.body);
    //Get token
    Token = map['token'].toString();
    print('+++++++++++++++++++++++++++++++++++');
    print(map['token']);

    showSnackbar_signInSuccessfully();
    isWaite.value = false;
    Get.to(HomePage());
  } else {
    print(response.statusCode);
    showSnackbar_erorrAuth();
    isWaite.value = false;
  }
}

////////////// sign up request //////////////
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
    Map<String, dynamic> map = json.decode(response.body);
    Token = map['token'].toString();
    isWaite.value = false;

    Get.to(HomePage());
  } else {
    print(response.statusCode);
    showSnackbar_erorrAuth();
    isWaite.value = false;
    print(" ERORR 401");
  }
}

////////////// get user details request //////////////
Future getUserDetails() async {
  var url = Uri.parse("https://otie-app.herokuapp.com/user");
  print(Token);
  String token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2Mzg2OGZkOGMzOTM0OGU1OWNkNTRiMGUiLCJpYXQiOjE2NzA0MjY4MTksImV4cCI6MTY3MzAxODgxOX0.VDMBlAYVqZZd8Gf8C6xlpA7CGk8SA07GRoNLtbbngmc";
  var response = await http.get(
    url,
    headers: headers,
  );

  Map<String, dynamic> map = json.decode(response.body);
  name.value = map['fullName'].toString();
  phoneNumberl.value = map['phoneNumber'].toString();
  location.value = map['location'].toString();
  print(map);
  print("================================================");
  print(map['fullName']);
  print(map['token'].toString());
}

////////////// edit account request //////////////
Future<void> editAccountRequest({ename, elocation, ephone}) async {
  final url = Uri.parse('https://otie-app.herokuapp.com/user');
  final jsonBody = {
    "fullName": ename,
    'province': elocation,
    'phoneNumber': ephone,
  };
  final response = await patch(url, headers: headers, body: jsonBody);
  if (response.statusCode.toString() == "200") {
    name.value = ename;
    phoneNumberl.value = ephone;
    Get.back();
    showSnackbar_saveEditSuccessfully();
    isWaite.value = false;
  } else {
    Get.back();
    showSnackbar_saveEditError();
    isWaite.value = false;
  }
  print('Status code: ${response.statusCode}');
  print('Body: ${response.body}');
}

////////////// create order request //////////////
void creatOrderRequest({type}) async {
  var url = Uri.parse('https://otie-app.herokuapp.com/orders');
  final jsonBody = '''{
      "type": $type,
      "subAdminId": "6369be24f500bf4905cf65e5",
      "items": $orders,
      "pickupDate": "30/11/2022",
      "pickupTime": "12:33am",
      "pickupLocation": "test",
      "deliveryDate": "30/11/2022",
      "deliveryTime": "12:33pm",
      "deliveryLocation": "test",
      "totalPrice": 0
    }''';
  final response = await http.post(url, headers: headers, body: jsonBody);

  if (response.statusCode == 200) {
    print(response.statusCode);
    print(" OK 200");
  } else {
    print(response.statusCode);
    print(" ERORR 401");
  }
}


// updateToken(String token) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   prefs.setString('token', token);
// }
//
// readToken()async{
//   final prefs = await SharedPreferences.getInstance();
//   final token = prefs.getString('token') ?? "No Token Exist";
//   return token;
// }
