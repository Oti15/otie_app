import 'package:flutter/material.dart';
import 'package:otie_app/utils/constants.dart';
import 'package:otie_app/view/widgets/my_simple_app_bar.dart';

import '../widgets/my_buttom.dart';
import 'widgets/Schedule.dart';
import 'widgets/info.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MySimpleAppBar(title: "Control Center"),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 35, bottom: 5),
                  child: Text(
                    "User information",
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
                  color4: Colors.black,
                  info1: 'Huthaifa harith',
                  info2: '07519926513',
                  info3: 'Baghdad',
                  title1: 'Name',
                  title2: 'Phone number',
                  title3: 'Location',
                  title4: '',
                  x: false,
                ),
                SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35, bottom: 5),
                  child: Text(
                    "Price details",
                    style: TextStyle(
                        fontSize: largeTitleFontSize,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                information1(
                  color1: Colors.black,
                  color2: Colors.black,
                  color3: primaryColor,
                  color4: Colors.black,
                  info1: '\$220.23',
                  info2: '\$10',
                  info3: '\$230.23',
                  title1: 'Subtotal',
                  title2: 'Tax',
                  title3: 'Total',
                  title4: '',
                  x: false,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35, bottom: 15),
                  child: Text(
                    "Schedule Date",
                    style: TextStyle(
                        fontSize: largeTitleFontSize,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Schedule(
                        title: 'Pickup Time',
                        date: 'Thu, 1 Apr',
                        time: '10:00 AM',
                        look: Icons.edit_calendar_outlined,
                        x: true),
                    Schedule(
                        title: 'Pickup Time',
                        date: 'Thu, 1 Apr',
                        time: '10:00 AM',
                        look: Icons.event_available_outlined,
                        x: false),
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButtom(
                      width: MediaQuery.of(context).size.width * 0.38,
                      height: MediaQuery.of(context).size.height * 0.07,
                      text: 'Accept',
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => ),
                        // );
                      },
                      color: primaryColor,
                    ),
                    MyButtom(
                      width: MediaQuery.of(context).size.width * 0.38,
                      height: MediaQuery.of(context).size.height * 0.07,
                      text: 'Ignore',
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => ),
                        // );
                      },
                      color: primaryColor,
                    ),
                  ],
                ),
                SizedBox(height: 40,),
              ],
            ),
          ],
        ));
  }
}
