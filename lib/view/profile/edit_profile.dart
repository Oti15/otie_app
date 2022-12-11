import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../services/api_services.dart';
import '../../utils/constants.dart';
import '../widgets/my_simple_app_bar.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _name = TextEditingController(text: name.value);
  final TextEditingController _phone =
      TextEditingController(text: phoneNumberl.value);
  final TextEditingController _location =
      TextEditingController(text: location.value);

  RxBool isLoding = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: MySimpleAppBar(title: tr('edit_account')),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 220,
                    width: 220,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images/profile_img.png"))),
                  ),
                ),
                Center(
                  child: Obx(
                    () => Text(name.value,
                        style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            color: Colors.black)),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    tr("account_credit"),
                    style: const TextStyle(
                        fontSize: 18,
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'mid',
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width - 80,
                  child: TextField(
                    controller: _name,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.15),
                        hintText: tr("enter_your_name"),
                        hintStyle: const TextStyle(color: Colors.grey)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width - 80,
                  child: TextField(
                    controller: _phone,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.15),
                        hintText: tr('phone_number'),
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width - 80,
                  child: TextField(
                    controller: _location,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.15),
                        hintText: tr('province'),
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 55,
                      width: MediaQuery.of(context).size.width - 80,
                      child: Obx(() => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: isWaite.value
                                  ? Colors.grey
                                  : Color(0xFFF05A25),
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                              ),
                            ),
                            onPressed: () {
                              editAccountRequest(
                                  ename: _name.text,
                                  elocation: _location.text,
                                  ephone: _phone.text);
                              saveEdit();
                            },
                            child: isWaite.value
                                ? Text(
                                    tr("please_waite"),
                                    style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'baloo'),
                                  )
                                : Text(
                                    tr("save_now"),
                                    style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'baloo'),
                                  ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  void saveEdit() {
    _name.text = '';
    _location.text = '';
    _phone.text = '';
    isWaite.value = true;
  }
}
