import 'package:flutter/material.dart';
import 'package:otie_app/utils/constants.dart';

import '../widgets/my_simple_app_bar.dart';
import 'widgets/info.dart';

class ControlCenter extends StatefulWidget {
  const ControlCenter({Key? key}) : super(key: key);

  @override
  State<ControlCenter> createState() => _ControlCenterState();
}

class _ControlCenterState extends State<ControlCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MySimpleAppBar(title: "Control Center"),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 35, bottom: 5),
            child: Text(
              "Orders List",
              style: TextStyle(
                  fontSize: largeTitleFontSize,
                  color: primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
           information1(
              color1: Colors.black,
              color2: Colors.black,
              color3: Colors.black,
              color4: primaryColor,
              info1: 'Huthaifa harith',
              info2: '07519926513',
              info3: 'Baghdad',
              title1: 'Name',
              title2: 'Phone number',
              title3: 'Location',
              title4: 'More Details',
              x: true,
            ),
          information1(
            color1: Colors.black,
            color2: Colors.black,
            color3: Colors.black,
            color4: primaryColor,
            info1: 'Huthaifa harith',
            info2: '07519926513',
            info3: 'Baghdad',
            title1: 'Name',
            title2: 'Phone number',
            title3: 'Location',
            title4: 'More Details',
            x: true,
          )
        ],
      ),
    );
  }
}
