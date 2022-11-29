import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:otie_app/utils/constants.dart';

import '../widgets/my_simple_app_bar.dart';
import 'widgets/info_box.dart';
import 'widgets/option.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MySimpleAppBar(title: 'Account Settings'),
      body: Column(
        children: [
          InfoBox(
            title1: "Email address",
            title2: "aljubory1223@gmail.com",
          ),
          SizedBox(height: 10),
          InfoBox(
            title1: "Phone number",
            title2: "+96419926513",
          ),
          SizedBox(height: 20),
          Option(x:true),
          SizedBox(height: 20),
          Option(x:false)


        ],
      ),
    );
  }
}
