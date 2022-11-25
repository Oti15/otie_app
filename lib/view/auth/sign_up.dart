import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:otie_app/view/auth/widgets/my_text_field.dart';
import 'package:otie_app/view/home_page/home_page.dart';
import '../../services/api_services.dart';
import '../../utils/constants.dart';
import '../../utils/total_price.dart';
import '../order_review/order_review.dart';
import '../widgets/my_buttom.dart';
import 'sign_in.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:http/http.dart' as http;

TextEditingController username = TextEditingController();
TextEditingController location = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController phone_num = TextEditingController();

var showcode = Container();

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "OTIE أوتي",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 75),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  tr("sign_up"),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ).tr(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 40),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  tr("open_account_with_otie"),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            MyTestField(
              height: heightScreen * 0.07,
              width: widthScreen * 0.8,
              hintText: tr('enter_your_full_name'),
              icon: Icons.account_circle,
              controller: username,
              textInputType: TextInputType.name,
            ),
            MyTestField(
              height: heightScreen * 0.07,
              width: widthScreen * 0.8,
              hintText: tr('enter_your_province'),
              icon: Icons.location_city_outlined,
              controller: location,
              textInputType: TextInputType.streetAddress,
            ),
            MyTestField(
              height: heightScreen * 0.07,
              width: widthScreen * 0.8,
              hintText: tr('enter_your_phone_number'),
              icon: Icons.phone,
              controller: phone_num,
              textInputType: TextInputType.phone,
            ),
            MyTestField(
              height: heightScreen * 0.07,
              width: widthScreen * 0.8,
              hintText: tr('enter_your_password'),
              icon: Icons.key,
              controller: password,
              textInputType: TextInputType.visiblePassword,
            ),
            Spacer(),
            MyButtom(
                text: tr("sign_up"),
                onPressed: () {
                  signUp(username: username, password: password, location: location, phone_num: phone_num);
                  //Get.to(HomePage());
                  newUser = false;
                },
                color: primaryColor,
                height: heightScreen * 0.07,
                width: widthScreen * 0.8),
            Padding(
              padding: EdgeInsets.only(top: 24),
              child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        tr("already_have_account"),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(signin());
                        },
                        child: Text(
                          tr("sign_in"),
                          style: const TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }


}
