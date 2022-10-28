import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import 'widgets/check.dart';

class HomeCleningp2 extends StatefulWidget {
  const HomeCleningp2({Key? key}) : super(key: key);

  @override
  State<HomeCleningp2> createState() => _HomeCleningp2State();
}

class _HomeCleningp2State extends State<HomeCleningp2> {
  String choose = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        actions: [
          SizedBox(
            width: 55,
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 32,
                color: Colors.black,
              ),
              onPressed: () {
                //Navegate to page
              },
            );
          },
        ),
        title: Center(
          child: Text(
            "Part time cleaner booking",
            style: TextStyle(
                fontSize: xLargeTitleFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Bold',
                color: Colors.black),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "How many cleaning \n"
              "Specialists do you need ?",
              style: TextStyle(
                  fontSize: xLargeTitleFontSize,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bold',
                  color: Colors.black),
            ),
          ),
          MyRadioListTile(
            cleanerNum: 1,
            price: '10,000',
            value: '1C : 10,000',
            onChanged: (value) {
              setState(() {
                choose ="$value";
              });
            },
            groupValue: choose,),
          MyRadioListTile(
            cleanerNum: 2,
            price: '20,000',
            value: '2C : 20,000',
            onChanged: (value) {
              setState(() {
                choose ="$value";
              });
            },
            groupValue: choose,),
          MyRadioListTile(
            cleanerNum: 3,
            price: '30,000',
            value: '3C : 30,000',
            groupValue: choose,
            onChanged: (value) {
              setState(() {
                choose ="$value";
              });
            },)

        ],
      ),
    );
  }
}
