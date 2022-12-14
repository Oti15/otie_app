import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:otie_app/view/auth/widgets/my_text_field.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../services/api_services.dart';
import '../../services/update_seen_onbording_prefs.dart';
import '../../utils/constants.dart';
import '../../utils/total_price.dart';
import '../home_page/home_page.dart';
import '../widgets/my_buttom.dart';
import 'sign_up.dart';
import 'package:easy_localization/easy_localization.dart';

TextEditingController password = TextEditingController();
TextEditingController phone_num = TextEditingController();

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                  tr("sign_in"),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 40),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  tr("phone_number_and_password"),
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
            Obx(() => MyButtom(
                text: isWaite.value ? tr("please_waite") : tr("sign_in"),
                onPressed: () {
                  isWaite.value = true;
                  signIn(phone_num: phone_num, password: password);
                  //Get.to(HomePage());
                  updateSeen();
                },
                color: isWaite.value ? Colors.grey : primaryColor,
                height: heightScreen * 0.07,
                width: widthScreen * 0.8)),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        tr("dont_have_any_account"),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(SignUp());
                        },
                        child: Text(
                          tr("sign_up"),
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
